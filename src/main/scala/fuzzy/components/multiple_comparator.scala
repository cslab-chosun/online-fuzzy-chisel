package fuzzy.components

import chisel3._
import chisel3.util._

import fuzzy.utils._

class MultipleComparator(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    isMax: Boolean = true, // by default MAX Comparator
    numberLength: Int = DesignConsts.NUMBER_LENGTH,
    countOfInputs: Int = 5
) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val inputs = Input(Vec(countOfInputs, UInt(numberLength.W)))

    //
    // Output signals
    //
    val maxMinValue = Output(UInt(numberLength.W))
  })

  val maxMinOutput = WireInit(0.U(numberLength.W))

  //
  // Check if number of inputs is odd or event
  //
  var isOddNumberOfInputs: Boolean = false
  var tempRemainedInputCount: Int = countOfInputs
  var tempComparatorCount: Int = 0

  if (countOfInputs % 2 == 1) {
    //
    // The number of inputs are odd
    //
    isOddNumberOfInputs = true
    tempRemainedInputCount = tempRemainedInputCount - 1
  }

  while (tempRemainedInputCount != 1) {

    tempRemainedInputCount = tempRemainedInputCount / 2
    tempComparatorCount = tempComparatorCount + tempRemainedInputCount
  }

  //
  // Add the final comparator (the last comparator)
  //
  tempComparatorCount = tempComparatorCount + 1

  //
  // if it's odd then we should consider another comparison too
  //
  if (isOddNumberOfInputs) {
    tempComparatorCount = tempComparatorCount + 1
  }

  val regMinMaxResultVec = Reg(
    Vec(tempComparatorCount, UInt(numberLength.W))
  )

  when(io.start) {

    //
    //
    //

  }.otherwise {

    //
    //
    //

  }

  //
  // Connect the outputs
  //
  io.maxMinValue := maxMinOutput
}

object MultipleComparator {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG,
      isMax: Boolean = true, // by default MAX Comparator
      numberLength: Int = DesignConsts.NUMBER_LENGTH,
      countOfInputs: Int = 5
  )(
      start: Bool,
      inputs: Vec[UInt]
  ): UInt = {

    val comparatorModule = Module(
      new MultipleComparator(debug, isMax, numberLength, countOfInputs)
    )

    val maxMinOutput = Wire(UInt(numberLength.W))

    //
    // Configure the input signals
    //
    comparatorModule.io.start := start
    comparatorModule.io.inputs := inputs

    maxMinOutput := comparatorModule.io.maxMinValue

    //
    // Return the output result
    //
    maxMinOutput
  }
}
