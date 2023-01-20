package fuzzy.algorithms.lut_mem_online

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

class LutMembershipFunctionOnline(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    bitCount: Int = DesignConsts.LUT_MEM_FUNCTION_BIT_COUNT,
    delta: Int = DesignConsts.LUT_MEM_FUNCTION_DELTA
) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val inputBit = Input(
      UInt(1.W)
    )

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(1.W)
    )
  })

  val sStarted :: sFinished :: Nil = Enum(2)
  val state = RegInit(sStarted)

  val i = RegInit(0.U(log2Ceil(math.pow(2, bitCount).toInt).W))

  val buffer = Reg(Vec(bitCount, UInt(1.W)))

  val counter = RegInit(0.U(log2Ceil(bitCount + delta).W))

  val outResultValid = RegInit(false.B)
  val outResult = RegInit(false.B)

  //
  // Transition rules
  //
  when(io.start) {

    //
    // Output result
    //
    when(counter < (bitCount + delta).U) {
      when(counter < delta.U) {
        outResultValid := false.B
        outResult := 0.U
      }.elsewhen(counter >= delta.U) {
        outResultValid := true.B
        outResult := buffer(counter - delta.U)
      }
      counter := counter + 1.U
    }

    //
    // State transition
    //
    switch(state) {

      is(sStarted) {

        when(counter < (bitCount + delta).U) {

          when(i < (math.pow(2, bitCount - 1).toInt - 1).U) {

            when(io.inputBit === 0.U) {
              i := 2.U * i + 1.U
            }.elsewhen(io.inputBit === 1.U) {
              i := 2.U * i + 2.U
            }

          }.elsewhen(i < (math.pow(2, bitCount).toInt - 1).U) {
            i := (math.pow(2, bitCount).toInt - 1).U
          }

        }.otherwise {

          state := sFinished
        }
      }
    }
  }

  //
  // Output connections
  //
  io.outResult := outResult
  io.outResultValid := outResultValid

}

object LutMembershipFunctionOnline {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG,
      bitCount: Int = DesignConsts.LUT_MEM_FUNCTION_BIT_COUNT,
      delta: Int = DesignConsts.LUT_MEM_FUNCTION_DELTA
  )(
      inputBit: UInt,
      start: Bool
  ): (UInt, Bool) = {

    val lutMemFunction = Module(
      new LutMembershipFunctionOnline(debug, bitCount, delta)
    )
    val outResult = Wire(UInt(1.W))
    val outResultValid = Wire(Bool())

    //
    // Start the circuit
    //
    lutMemFunction.io.start := start

    //
    // Input
    //
    lutMemFunction.io.inputBit := inputBit

    //
    // Output
    //
    outResult := lutMemFunction.io.outResult
    outResultValid := lutMemFunction.io.outResultValid

    //
    // Return the result
    //
    (outResult, outResultValid)
  }
}
