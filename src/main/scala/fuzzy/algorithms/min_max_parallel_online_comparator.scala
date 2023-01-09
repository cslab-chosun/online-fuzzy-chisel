package fuzzy.algorithms

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

class MinMaxParallelOnlineComparator(VECTOR_LEN: Int = 8, debug: Boolean = false)
    extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val in1 = Input(
      Vec(VECTOR_LEN, UInt(1.W))
    ) // This is a vector for the first bit of each element
    val in2 = Input(
      Vec(VECTOR_LEN, UInt(1.W))
    ) // This is a vector for the first bit of each element

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(7.W)
    ) // we used 7 because the maximum input is between 0-100 (127)

  })

  val outResultValid = RegInit(false.B)
  val outResult = RegInit(0.U(7.W))

  val regStorageVec = Reg(Vec(VECTOR_LEN, UInt(7.W)))

  val sIdle :: sMin :: sMax :: sFinished :: Nil = Enum(4)
  val state = RegInit(sIdle)

  /*
  val (selectedInput, earlyTerminated, minOutput) =
    OnlineComparator(false, false)(
      compStartBit,
      io.in1(regBitIndx),
      io.in2(regBitIndx),
      false.B /* no external early termination */
    ) */

  switch(state) {

    is(sIdle) {
      state := sMin
    }
    is(sMin) {

    }
    is(sMax) {

      state := sFinished
    }
    is(sFinished) {

      //
      // Raise the validation result
      //
      outResultValid := true.B
    }
  }

  //
  // Set the output
  //
  io.outResult := outResult
  io.outResultValid := outResultValid

}

object MinMaxParallelOnlineComparator {

  def apply(
      VECTOR_LEN: Int = 8,
      debug: Boolean = false
  )(in1: Vec[UInt], in2: Vec[UInt], start: Bool): (UInt, Bool) = {

    val minMaxTree = Module(new MinMaxParallelOnlineComparator(VECTOR_LEN, debug))
    val outResult = Wire(UInt(8.W))
    val outResultValid = Wire(Bool())

    minMaxTree.io.start := start

    minMaxTree.io.in1 := in1
    minMaxTree.io.in2 := in2

    outResult := minMaxTree.io.outResult

    outResultValid := minMaxTree.io.outResultValid

    //
    // Return the result
    //
    (outResult, outResultValid)
  }
}
