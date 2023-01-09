package fuzzy.algorithms

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

class MinMaxSerialRegularComparator(VECTOR_LEN: Int = 8, debug: Boolean = false)
    extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val in1 = Input(
      UInt(7.W)
    ) // we used 7 because the maximum input is between 0-100 (127)
    val in2 = Input(
      UInt(7.W)
    ) // we used 7 because the maximum input is between 0-100 (127)

    //
    // Output signals
    //
    //
    val askForNewNumber = Output(Bool())
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(7.W)
    ) // we used 7 because the maximum input is between 0-100 (127)
  })

  val regStorageVec = Reg(Vec(VECTOR_LEN, UInt(7.W)))
  val minMaxListCounter = RegInit(0.U((log2Ceil(VECTOR_LEN)).W))

  val input1Min = WireInit(0.U(7.W))
  val input2Min = WireInit(0.U(7.W))

  val sIdle :: sMin :: sMax :: sFinished :: Nil = Enum(4)
  val state = RegInit(sIdle)

  val askForNewNumber = RegInit(false.B)
  val outResultValid = RegInit(false.B)
  val outResult = RegInit(0.U(7.W))

  val minStart = RegInit(false.B)
  val maxStart = RegInit(false.B)

  val minOutput =
    Comparator(false, false)(
      minStart,
      input1Min,
      input2Min,
    )

  val maxOutput =
    Comparator(true, false)(
      maxStart,
      input1Min,
      input2Min,
    )

  switch(state) {

    is(sIdle) {
      when (io.start) {
        state := sMin
        minStart := true.B
      }
    }

    is(sMin){

      input1Min := io.in1
      input2Min := io.in2

      regStorageVec(minMaxListCounter) := minOutput
      askForNewNumber := true.B

      when (minMaxListCounter === VECTOR_LEN.U - 1.U){
        state := sMax

        minStart := false.B
        maxStart := true.B

        minMaxListCounter := 1.U

      }.otherwise {
        minMaxListCounter := minMaxListCounter + 1.U
      }
    }
    is(sMax){
      
      input1Min := regStorageVec(0)
      input2Min := regStorageVec(minMaxListCounter)

      regStorageVec(0) := maxOutput

      when (minMaxListCounter === VECTOR_LEN.U - 1.U){
        state := sFinished
        maxStart := false.B

      }.otherwise {
        minMaxListCounter := minMaxListCounter + 1.U
      }
    }
    is(sFinished){
      outResultValid := true.B
      outResult := regStorageVec(0)
    }
  }

  //
  // Set the output wires and regs
  //
  io.askForNewNumber := askForNewNumber
  io.outResultValid := outResultValid  
  io.outResult := outResult

}

object MinMaxSerialRegularComparator {

  def apply(
      VECTOR_LEN: Int = 8,
      debug: Boolean = false
  )(in1: UInt, in2: UInt, start: Bool): (UInt, Bool, Bool) = {

    val minMaxTree = Module(new MinMaxSerialRegularComparator(VECTOR_LEN, debug))
    val outResult = Wire(UInt(8.W))
    val askForNewNumber = Wire(Bool())
    val outResultValid = Wire(Bool())

    minMaxTree.io.start := start

    minMaxTree.io.in1 := in1
    minMaxTree.io.in2 := in2

    outResult := minMaxTree.io.outResult

    askForNewNumber := minMaxTree.io.askForNewNumber
    outResultValid := minMaxTree.io.outResultValid

    //
    // Return the result
    //
    (outResult, outResultValid, askForNewNumber)
  }
}
