package fuzzy.algorithms

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

class MinMaxParallelRegularComparator(VECTOR_LEN: Int = 8, debug: Boolean = false)
    extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val in1 = Input(
      Vec(VECTOR_LEN, UInt(7.W))
    ) // we used 7 because the maximum input is between 0-100 (127)
    val in2 = Input(
      Vec(VECTOR_LEN, UInt(7.W))
    ) // we used 7 because the maximum input is between 0-100 (127)

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(7.W)
    ) // we used 7 because the maximum input is between 0-100 (127)
  })

  val regStorageVec = Reg(Vec(VECTOR_LEN, UInt(7.W)))
  val minStart = RegInit(false.B)
  val maxStart = RegInit(false.B)

  val regMaxStage = RegInit(0.U(log2Up(log2Ceil(VECTOR_LEN)).W)) // actually it should be: log2Up(log2Ceil(VECTOR_LEN))

  val sIdle :: sMin :: sMax :: sFinished :: Nil = Enum(4)
  val state = RegInit(sIdle)

  val outResultValid = RegInit(false.B)
  val outResult = RegInit(0.U(7.W))


  switch(state) {

    is(sIdle) {
      when (io.start) {
        state := sMin
        minStart := true.B
      }
    }
    is(sMin){

        for (i <- 0 until VECTOR_LEN) {
          regStorageVec(i) := Comparator(false, false)(minStart, io.in1(i), io.in2(i))
        }

        state := sMax
        minStart := false.B
        maxStart := true.B
    }
    is(sMax){

        when (log2Ceil(VECTOR_LEN).U > regMaxStage){
          for (i <- 0 until VECTOR_LEN / 2) {
            regStorageVec(i) := Comparator(true, false)(maxStart, regStorageVec(i.U * 2.U), regStorageVec((i.U * 2.U) + 1.U))
          }
          regMaxStage := regMaxStage + 1.U
        } .otherwise {
          state := sFinished
        }
    }
    is(sFinished){
      maxStart := false.B
      outResultValid := true.B
      outResult := regStorageVec(0)
    }
  }

  //
  // Set the output wires and regs
  //
  io.outResultValid := outResultValid
  io.outResult := outResult

}

object MinMaxParallelRegularComparator {

  def apply(
      VECTOR_LEN: Int = 8,
      debug: Boolean = false
  )(in1: Vec[UInt], in2: Vec[UInt], start: Bool): (UInt, Bool) = {

    val minMaxTree = Module(new MinMaxParallelRegularComparator(VECTOR_LEN, debug))
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
