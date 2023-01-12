package fuzzy.components

import chisel3._
import chisel3.util._

import fuzzy.utils._

class Comparator(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    isMax: Boolean = true, // by default MAX Comparator
    numberLength: Int = DesignConsts.NUMBER_LENGTH
) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val in1 = Input(UInt(numberLength.W))
    val in2 = Input(UInt(numberLength.W))

    //
    // Output signals
    //
    val maxMin = Output(UInt(1.W))
  })

  // val startRisingEdge = io.start & !RegNext(io.start)

  val maxMinOutput = WireInit(0.U(1.W))

  when(io.in1 >= io.in2) {

    if (isMax) {
      maxMinOutput := 0.U
    } else {
      maxMinOutput := 1.U
    }

  }.otherwise {

    if (isMax) {
      maxMinOutput := 1.U
    } else {
      maxMinOutput := 0.U
    }
  }

  //
  // Connect the outputs
  //
  io.maxMin := maxMinOutput
}

object Comparator {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG,
      isMax: Boolean = true, // by default max Comparator
      numberLength: Int = DesignConsts.NUMBER_LENGTH
  )(
      start: Bool,
      input1: UInt,
      input2: UInt
  ): UInt = {

    val comparatorModule = Module(new Comparator(debug, isMax, numberLength))
    val result = Wire(UInt(numberLength.W))
    val maxMinOutput = Wire(UInt(1.W))

    //
    // Configure the input signals
    //
    comparatorModule.io.in1 := input1
    comparatorModule.io.in2 := input2

    comparatorModule.io.start := start

    if (debug) {
      printf(
        "dbg, regular comparator method debug | start : %d | input1 : %d, input2 : %d\n",
        start,
        input1,
        input2
      )
    }

    maxMinOutput := comparatorModule.io.maxMin

    //
    // Select the input based on one of the received signals
    //
    val selectedInput = maxMinOutput.asBools

    //
    // Return the maximum/minimum input
    //
    when(selectedInput(0) === false.B) {
      result := input1 // return the first input
    }.otherwise {
      result := input2 // return the second input
    }

    result
  }
}
