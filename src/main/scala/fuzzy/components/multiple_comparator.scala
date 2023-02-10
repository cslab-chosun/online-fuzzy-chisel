package fuzzy.components

import chisel3._
import chisel3.util._

import fuzzy.utils._

object LayerCompute {

  def Compute(debug: Boolean = DesignConsts.ENABLE_DEBUG)(
      countOfInputs: Int
  ): (Int, Int) = {

    //
    // Check if number of inputs is odd or event
    //
    var isOddNumberOfInputs: Boolean = false
    var tempRemainedInputCount: Int = countOfInputs
    var tempComparatorCount: Int = 0
    var delayCycles: Int = 0

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
      delayCycles = delayCycles + 1
    }

    //
    // if it's odd then we should consider another comparison too
    //
    if (isOddNumberOfInputs) {
      tempComparatorCount = tempComparatorCount + 1
      delayCycles = delayCycles + 1
    }

    if (debug) {
      println(s"dbg, number of needed comparators: ${tempComparatorCount}")
      println(s"dbg, delay cycles: ${delayCycles}")
    }

    //
    // Return the number of needed comparators and delays
    //
    (tempComparatorCount, delayCycles)
  }
}

class MultipleComparator(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    isMax: Boolean = true, // by default MAX Comparator
    numberLength: Int = DesignConsts.NUMBER_LENGTH,
    countOfInputs: Int = 5
) extends Module {

  //
  // Design constraints
  //
  require(countOfInputs >= 2)
  assert(
    countOfInputs >= 2,
    "err, the number of inputs should be at least 2."
  )

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val inputs = Input(Vec(countOfInputs, UInt(numberLength.W)))

    //
    // Output signals
    //
    val result = Output(UInt(numberLength.W))
  })

  val maxMinOutput = WireInit(0.U(numberLength.W))

  var layerCompute = LayerCompute.Compute(debug)(countOfInputs)

  val regMinMaxResultVec = Reg(
    Vec(layerCompute._1, UInt(numberLength.W))
  )

  when(io.start) {

    //
    // Implementation of the multiple comparator
    //

  }.otherwise {

    //
    // Reset the multiple comparator
    //

  }

  //
  // Connect the outputs
  //
  io.result := maxMinOutput
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

    val result = Wire(UInt(numberLength.W))

    //
    // Configure the input signals
    //
    comparatorModule.io.start := start
    comparatorModule.io.inputs := inputs

    result := comparatorModule.io.result

    //
    // Return the output result
    //
    result
  }
}
