package fuzzy.components

import chisel3._
import chisel3.util._

import fuzzy.utils._

class ResultOfIndexBasedOnlineMaxIndex() extends Bundle {

  val selectedInput = Bool()
  val earlyTerminate1 = Bool()
  val earlyTerminate2 = Bool()
  val maxOutput = UInt(1.W)
}

class FiveInputCustomIndexBasedMaxComparator(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    isMax: Boolean = true // by default MAX Comparator
) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())
    val inputs = Input(Vec(5, UInt(1.W)))

    //
    // Output signals
    //
    val result = Output(UInt(3.W)) // three bits are enough to show 1..5
    val resultValid = Output(Bool())

  })

  val regIndexBasedMaxResultVec = Reg(
    Vec(
      4,
      new ResultOfIndexBasedOnlineMaxIndex()
    )
  )

  when(io.start) {

    // max-index 0
    val (selectedInput_0, earlyTerminate1_0, earlyTerminate2_0, maxOutput_0) =
      OnlineComparator2(debug, isMax)(
        io.start, // start bit
        io.inputs(0),
        io.inputs(1),
        regIndexBasedMaxResultVec(2).earlyTerminate1
      )

    regIndexBasedMaxResultVec(0).selectedInput := selectedInput_0
    regIndexBasedMaxResultVec(0).earlyTerminate1 := earlyTerminate1_0
    regIndexBasedMaxResultVec(0).earlyTerminate2 := earlyTerminate2_0
    regIndexBasedMaxResultVec(0).maxOutput := maxOutput_0

    // max-index 1
    val (selectedInput_1, earlyTerminate1_1, earlyTerminate2_1, maxOutput_1) =
      OnlineComparator2(debug, isMax)(
        io.start, // start bit
        io.inputs(0),
        io.inputs(1),
        regIndexBasedMaxResultVec(2).earlyTerminate2
      )

    regIndexBasedMaxResultVec(1).selectedInput := selectedInput_1
    regIndexBasedMaxResultVec(1).earlyTerminate1 := earlyTerminate1_1
    regIndexBasedMaxResultVec(1).earlyTerminate2 := earlyTerminate2_1
    regIndexBasedMaxResultVec(1).maxOutput := maxOutput_1

    // max-index 2
    val (selectedInput_2, earlyTerminate1_2, earlyTerminate2_2, maxOutput_2) =
      OnlineComparator2(debug, isMax)(
        io.start, // start bit
        io.inputs(2),
        io.inputs(3),
        regIndexBasedMaxResultVec(3).earlyTerminate1
      )

    regIndexBasedMaxResultVec(2).selectedInput := selectedInput_2
    regIndexBasedMaxResultVec(2).earlyTerminate1 := earlyTerminate1_2
    regIndexBasedMaxResultVec(2).earlyTerminate2 := earlyTerminate2_2
    regIndexBasedMaxResultVec(2).maxOutput := maxOutput_2

    // max-index 3
    val (selectedInput_3, earlyTerminate1_3, earlyTerminate2_3, maxOutput_3) =
      OnlineComparator2(debug, isMax)(
        io.start, // start bit
        regIndexBasedMaxResultVec(2).maxOutput,
        io.inputs(4),
        false.B
      )

    regIndexBasedMaxResultVec(3).selectedInput := selectedInput_3
    regIndexBasedMaxResultVec(3).earlyTerminate1 := earlyTerminate1_3
    regIndexBasedMaxResultVec(3).earlyTerminate2 := earlyTerminate2_3
    regIndexBasedMaxResultVec(3).maxOutput := maxOutput_3

  }.otherwise {

    //
    // Reset the multiple comparator
    //

  }

  //
  // Connect the outputs
  //
  io.result := regIndexBasedMaxResultVec(3).maxOutput // should be changed

}

object FiveInputCustomIndexBasedMaxComparator {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG,
      isMax: Boolean = true // by default MAX Comparator
  )(
      start: Bool,
      inputs: Vec[UInt]
  ): UInt = {

    val comparatorModule = Module(
      new FiveInputCustomIndexBasedMaxComparator(debug, isMax)
    )

    val result = Wire(UInt(3.W))

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
