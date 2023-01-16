package fuzzy.components

import chisel3._
import chisel3.util._

import fuzzy.utils._

class OnlineComparator2(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    isMax: Boolean = true // by default MAX Comparator
) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val earlyTerminate = Input(Bool())
    val in1 = Input(UInt(1.W))
    val in2 = Input(UInt(1.W))

    //
    // Output signals
    //
    val earlyTerminate1 = Output(Bool())
    val earlyTerminate2 = Output(Bool())
    val maxMin = Output(UInt(1.W))
  })

  val sInit :: sFinished :: Nil = Enum(2)
  val state = RegInit(sInit)
  // val startRisingEdge = io.start & !RegNext(io.start)

  val earlyTerminate1 = RegInit(false.B)
  val earlyTerminate2 = RegInit(false.B)
  val earlyTerminate1Shadow = WireInit(false.B)
  val earlyTerminate2Shadow = WireInit(false.B)
  val maxMinOutput = WireInit(0.U(1.W))

  when(io.start === true.B) {

    switch(state) {

      is(sInit) {

        when(io.earlyTerminate === true.B) {

          if (debug) {
            printf("dbg, comparator debug: global earlyTerminate raised\n")
          }

          earlyTerminate1 := true.B
          earlyTerminate1Shadow := true.B
          earlyTerminate2 := true.B
          earlyTerminate2Shadow := true.B

          state := sFinished

        }.elsewhen(io.in1 === 1.U && io.in2 === 0.U) {

          if (isMax == true) {

            earlyTerminate1 := false.B
            earlyTerminate1Shadow := false.B
            earlyTerminate2 := true.B
            earlyTerminate2Shadow := true.B

            maxMinOutput := io.in1

            if (debug) {
              printf("dbg, comparator debug: earlyTerminate1 => true\n")
            }

          } else {
            earlyTerminate1Shadow := true.B
            earlyTerminate1 := true.B
            earlyTerminate2 := false.B
            earlyTerminate2Shadow := false.B

            maxMinOutput := io.in2

            if (debug) {
              printf("dbg, comparator debug: earlyTerminate2 => true\n")
            }

          }

          state := sFinished

        }.elsewhen(io.in1 === 0.U && io.in2 === 1.U) {

          if (isMax == true) {

            earlyTerminate1Shadow := true.B
            earlyTerminate1 := true.B
            earlyTerminate2Shadow := false.B
            earlyTerminate2 := false.B
            maxMinOutput := io.in2

            if (debug) {
              printf("dbg, comparator debug: earlyTerminate2 => true\n")
            }
          } else {
            earlyTerminate1Shadow := false.B
            earlyTerminate1 := false.B
            earlyTerminate2Shadow := true.B
            earlyTerminate2 := true.B
            maxMinOutput := io.in1

            if (debug) {
              printf("dbg, comparator debug: earlyTerminate1 => true\n")
            }
          }

          state := sFinished

        }.otherwise {

          //
          // the greater value is not found yet as
          // the values are equal (1 == 1) or (0 == 0)
          //
          maxMinOutput := io.in1 // the i.oin1 and io.in2 are the same

          earlyTerminate1Shadow := false.B
          earlyTerminate1 := false.B
          earlyTerminate2Shadow := false.B
          earlyTerminate2 := false.B

          state := sInit // not needed

          if (debug) {
            printf("dbg, comparator debug: both bits are equal\n")
          }
        }
      }
      is(sFinished) {

        when(earlyTerminate1 === true.B) {
          maxMinOutput := io.in2
        }.otherwise {
          maxMinOutput := io.in1
        }
      }
    }
  } .otherwise {
    
    state := sInit
    earlyTerminate1 := false.B
    earlyTerminate2 := false.B

    earlyTerminate1Shadow := false.B
    earlyTerminate2Shadow := false.B

    maxMinOutput := 0.U
  }

  //
  // Connect the outputs
  //
  io.earlyTerminate1 := earlyTerminate1 | earlyTerminate1Shadow
  io.earlyTerminate2 := earlyTerminate2 | earlyTerminate2Shadow

  io.maxMin := maxMinOutput
}

object OnlineComparator2 {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG,
      isMax: Boolean = true // by default MAX Comparator
  )(
      start: Bool,
      input1: UInt,
      input2: UInt,
      earlyTerminatation: Bool
  ): (Bool, Bool, Bool, UInt) = {

    val comparatorModule = Module(new OnlineComparator2(debug, isMax))

    val earlyTerminate1 = Wire(Bool())
    val earlyTerminate2 = Wire(Bool())

    val maxMinOutput = Wire(UInt(1.W))

    //
    // Configure the input signals
    //
    comparatorModule.io.in1 := input1
    comparatorModule.io.in2 := input2

    comparatorModule.io.earlyTerminate := earlyTerminatation
    comparatorModule.io.start := start

    //
    // Configure the output signals
    //
    earlyTerminate1 := comparatorModule.io.earlyTerminate1
    earlyTerminate2 := comparatorModule.io.earlyTerminate2

    if (debug) {
      printf(
        "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n",
        start,
        input1,
        input2,
        earlyTerminate1,
        earlyTerminate2
      )
    }

    maxMinOutput := comparatorModule.io.maxMin

    //
    // Select the input based on one of the received signals
    //
    val selectedInput = Mux(earlyTerminate1, false.B, true.B)
    val selectedInputFinal = ~selectedInput

    //
    // Return the maximum/minimum input
    //
    (selectedInputFinal, earlyTerminate1, earlyTerminate2, maxMinOutput)
  }
}
