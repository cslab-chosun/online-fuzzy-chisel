package fuzzy.algorithms

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

class MinMaxParallelRegularComparator(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    vectorCount: Int = DesignConsts.VECTOR_COUNT,
    numberLength: Int = DesignConsts.NUMBER_LENGTH
) extends Module {

  //
  // Design constraints
  //
  require(isPow2(vectorCount) == true)
  assert(
    isPow2(vectorCount) == true,
    "err, the input length should be to the power of 2."
  )

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val in1 = Input(
      Vec(vectorCount, UInt(numberLength.W))
    ) // Most of the times we used 7 because the maximum input is between 0-100 (127)
    val in2 = Input(
      Vec(vectorCount, UInt(numberLength.W))
    ) // Most of the times we used 7 because the maximum input is between 0-100 (127)

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(numberLength.W)
    ) // Most of the times we used 7 because the maximum input is between 0-100 (127)
  })

  val regStorageVec = Reg(Vec(vectorCount, UInt(numberLength.W)))
  val minStart = RegInit(false.B)
  val maxStart = RegInit(false.B)

  val regMaxStage = RegInit(
    0.U(log2Up(log2Ceil(vectorCount)).W)
  ) // actually it should be: log2Up(log2Ceil(vectorCount))

  val sIdle :: sMin :: sMax :: sFinished :: Nil = Enum(4)
  val state = RegInit(sIdle)

  val outResultValid = RegInit(false.B)
  val outResult = RegInit(0.U(numberLength.W))

  switch(state) {

    is(sIdle) {
      when(io.start) {
        state := sMin
        minStart := true.B
      }
    }
    is(sMin) {

      for (i <- 0 until vectorCount) {
        regStorageVec(i) := Comparator(debug, false, numberLength)(
          minStart,
          io.in1(i),
          io.in2(i)
        )
      }

      state := sMax
      minStart := false.B
      maxStart := true.B
    }
    is(sMax) {

      when(log2Ceil(vectorCount).U > regMaxStage) {
        for (i <- 0 until vectorCount / 2) {
          regStorageVec(i) := Comparator(debug, true, numberLength)(
            maxStart,
            regStorageVec(i.U * 2.U),
            regStorageVec((i.U * 2.U) + 1.U)
          )
        }
        regMaxStage := regMaxStage + 1.U
      }.otherwise {
        state := sFinished
      }
    }
    is(sFinished) {
      maxStart := false.B
      outResultValid := true.B
      outResult := regStorageVec(0)
    }
  }

  //
  // Check for resetting the state
  //
  when(!io.start) {

    //
    // Reset the state
    //
    outResultValid := false.B
    state := sIdle
    minStart := false.B
    maxStart := false.B
    regMaxStage := 0.U
  }

  //
  // Set the output wires and regs
  //
  io.outResultValid := outResultValid
  io.outResult := outResult

}

object MinMaxParallelRegularComparator {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG,
      vectorCount: Int = DesignConsts.VECTOR_COUNT,
      numberLength: Int = DesignConsts.NUMBER_LENGTH
  )(in1: Vec[UInt], in2: Vec[UInt], start: Bool): (UInt, Bool) = {

    val minMaxTree = Module(
      new MinMaxParallelRegularComparator(debug, vectorCount, numberLength)
    )

    val outResult = Wire(UInt(numberLength.W))
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
