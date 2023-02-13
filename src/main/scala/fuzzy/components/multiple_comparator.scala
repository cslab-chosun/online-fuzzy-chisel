package fuzzy.components

import chisel3._
import chisel3.util._

import fuzzy.utils._

object LayerCompute {

  def Compute(debug: Boolean = DesignConsts.ENABLE_DEBUG)(
      countOfInputs: Int
  ): (Int, Int, Boolean) = {

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

      if (tempRemainedInputCount % 2 == 1) {
        tempRemainedInputCount -= 1
        tempComparatorCount += 1
        delayCycles += 1
      }

      tempRemainedInputCount = tempRemainedInputCount / 2
      tempComparatorCount += tempRemainedInputCount
      delayCycles += 1
    }

    //
    // if it's odd then we should consider another comparison too
    //
    if (isOddNumberOfInputs) {
      tempComparatorCount = tempComparatorCount + 1
      delayCycles = delayCycles + 1
    }

    LogInfo(debug)("number of needed comparators: " + tempComparatorCount)
    LogInfo(debug)("dbg, delay cycles: " + delayCycles)

    //
    // Return the number of needed comparators and delays
    //
    (tempComparatorCount + 1, delayCycles, isOddNumberOfInputs)
  }
}

class MultipleComparator(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    isMax: Boolean = true, // by default MAX Comparator
    numberLength: Int = DesignConsts.NUMBER_LENGTH,
    countOfInputs: Int = 0
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

  maxMinOutput := regMinMaxResultVec(layerCompute._1 - 2)

  LogInfo(debug)(
    "final max layer: " + (layerCompute._1 - 2)
  )

  when(io.start) {

    //
    // Implementation of the multiple comparator
    //
    var temp: Int = 0

    for (i <- 0 until layerCompute._1) {

      if (
        (layerCompute._3 == false && countOfInputs / 2 > i) || (layerCompute._3 == true && (countOfInputs - 1) / 2 > i)
      ) {

        //
        // Connect inputs
        //
        regMinMaxResultVec(i) := Comparator(
          false /*debug*/,
          isMax,
          numberLength
        )(
          io.start,
          io.inputs(i * 2),
          io.inputs(i * 2 + 1)
        )

        LogInfo(debug)(
          "connecting inputs(" + (i * 2) + ") and input(" + (i * 2 + 1) + ") to regMinMaxResultVec(" + i + ")"
        )

      } else {

        //
        // *** Connect comparators ***
        //

        if (layerCompute._3 == true && i == layerCompute._1 - 1) {

          //
          // This is the last comparator with odd inputs
          //
          regMinMaxResultVec(i - 1) := Comparator(
            false /*debug*/,
            isMax,
            numberLength
          )(
            io.start,
            regMinMaxResultVec(temp - 2),
            io.inputs(countOfInputs - 1)
          )

          LogInfo(debug)(
            "connecting odd (exceptional) regMinMaxResultVec(" + (temp - 2) + ") and inputs(" + (countOfInputs - 1) + ") to regMinMaxResultVec(" + (i - 1) + ")"
          )

        } else if (i != temp + 1) {
          regMinMaxResultVec(i) := Comparator(
            false /*debug*/,
            isMax,
            numberLength
          )(
            io.start,
            regMinMaxResultVec(temp),
            regMinMaxResultVec(temp + 1)
          )

          LogInfo(debug)(
            "connecting regMinMaxResultVec(" + temp + ") and regMinMaxResultVec(" + (temp + 1) + ") to regMinMaxResultVec(" + i + ")"
          )
        }

        temp += 2
      }

    }

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
