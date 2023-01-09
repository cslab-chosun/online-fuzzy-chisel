package fuzzy.components

import chisel3._
import chisel3.util._

class Comparator(isMax: Boolean = true, debug: Boolean = false) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val in1 = Input(UInt(7.W))
    val in2 = Input(UInt(7.W))

    //
    // Output signals
    //
    val maxMin = Output(UInt(1.W))
  })

  // val startRisingEdge = io.start & !RegNext(io.start)

  val maxMinOutput = RegInit(0.U(1.W))

  when (io.in1 >= io.in2) {

    if (isMax) {
        maxMinOutput := 0.U
    }
    else {
        maxMinOutput := 1.U
    }
    
  }. otherwise {

    if (isMax) {
        maxMinOutput := 1.U
    }
    else {
        maxMinOutput := 0.U
    }  
  }

  //
  // Connect the outputs
  //
  io.maxMin := maxMinOutput
}

object Comparator {

  def apply(isMax: Boolean = true, debug: Boolean = false)(
      start: Bool,
      input1: UInt,
      input2: UInt,
  ): (Bool, UInt) = {

    val comparatorModule = Module(new Comparator(isMax, debug))

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
    (selectedInput(0), maxMinOutput)
  }
}
