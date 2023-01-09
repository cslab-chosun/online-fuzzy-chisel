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
