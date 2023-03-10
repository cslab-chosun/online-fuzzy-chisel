package fuzzy.algorithms.implementations

import chisel3._
import chisel3.util._

import firrtl.FileUtils

import scala.math._
import scala.io.Source
import scala.collection.immutable.ListMap
import scala.collection.mutable.ListBuffer

import fuzzy.components._
import fuzzy.utils._

class LutMembershipFunctionOnline2(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    bitCount: Int,
    outputBitCount: Int,
    delta: Int,
    inputIndex: Int,
    lutIndex: Int
) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val inputBit = Input(
      UInt(1.W)
    )

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(1.W)
    )
  })

  def buildLookupTable(
      debug: Boolean,
      inputIndex: Int,
      lutIndex: Int
  ): Vec[UInt] = {
    val fileName =
      "src/main/resources/lut/lut_" + inputIndex + "_" + lutIndex + ".txt"

    if (debug) {
      FileUtils
        .getLines(fileName)
        .drop(1)
        .foreach { s =>
          LogInfo(debug)(s"Line from file $fileName: ${s.trim}")
        }
    }

    VecInit(
      FileUtils
        .getLines(fileName)
        .drop(1)
        .map { s =>
          BigInt(s.trim.replace("\t", ""), 2).U // 2 is the radix
        }
        .toSeq
    )
  }

  val sStarted :: sFinished :: Nil = Enum(2)
  val state = RegInit(sStarted)

  val buffer = VecInit(Seq.fill(bitCount)(0.U(1.W)))
  val outputBuffer = RegInit(0.U(bitCount.W))

  val counter = RegInit(bitCount.U(log2Ceil(bitCount + delta).W))
  val outputCounter = RegInit(bitCount.U(log2Ceil(bitCount + delta).W))

  val isPassedDelta = RegInit(false.B)
  val isOutputValid = RegNext(isPassedDelta)

  val outResultValid = RegInit(false.B)
  val outResult = RegInit(false.B)

  //
  // Build LUT
  //
  val lut = buildLookupTable(debug, inputIndex, lutIndex)

  //
  // Transition rules
  //
  when(io.start === true.B) {

    //
    // Status transition
    //
    switch(state) {

      is(sStarted) {

        //
        // *** implement the logic here ***
        //

        //
        // Save the buffer for the LUT
        //
        buffer(counter) := io.inputBit

        when(counter === delta.U) {
          isPassedDelta := true.B
        }
        //
        // Decrement the buffer
        //
        counter := counter - 1.U

        when(isPassedDelta === true.B) {

          val lutOut = lut(buffer.asUInt()) // Value read from the LUT
          outputBuffer := lutOut

        }

        when(isOutputValid === true.B) {

          outResult := outputBuffer(outputCounter)
          outResultValid := true.B
          outputCounter := outputCounter + 1.U

        }

      }

      is(sFinished) {

        //
        // Wait here
        //
        state := sFinished

      }
    }
  }.otherwise {

    //
    // Reset the state
    //
    state := sStarted
    counter := bitCount.U

    for (i <- 0 until bitCount) {
      buffer(i) := 0.U
    }

    outResult := outResult
    outResultValid := outResultValid

  }

  //
  // Output connections
  //
  io.outResult := outResult
  io.outResultValid := outResultValid

}

object LutMembershipFunctionOnline2 {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG,
      bitCount: Int,
      outputBitCount: Int,
      delta: Int,
      inputIndex: Int,
      lutIndex: Int
  )(
      inputBit: UInt,
      start: Bool
  ): (UInt, Bool) = {

    val lutMemFunction = Module(
      new LutMembershipFunctionOnline2(
        debug,
        bitCount,
        outputBitCount,
        delta,
        inputIndex,
        lutIndex
      )
    )

    val outResult = Wire(UInt(1.W))
    val outResultValid = Wire(Bool())

    //
    // Start the circuit
    //
    lutMemFunction.io.start := start

    //
    // Input
    //
    lutMemFunction.io.inputBit := inputBit

    //
    // Output
    //
    outResult := lutMemFunction.io.outResult
    outResultValid := lutMemFunction.io.outResultValid

    //
    // Return the result
    //
    (outResult, outResultValid)
  }
}

object LutMemOnline2Main extends App {

  val inputIndex: Int = 0 // for test we build LUT upon the first LUT (0, 0)
  val lutIndex: Int = 0 // for test we build LUT upon the first LUT (0, 0)

  //
  // These lines generate the Verilog output
  //
  val generatedResults =
    HashMapGenerator.generate(
      DesignConsts.ENABLE_DEBUG,
      true, // it's reversed LUT!
      inputIndex,
      lutIndex
    )

  println(
    new (chisel3.stage.ChiselStage).emitVerilog(
      new LutMembershipFunctionOnline2(
        DesignConsts.ENABLE_DEBUG,
        generatedResults._1,
        generatedResults._2,
        generatedResults._3,
        inputIndex,
        lutIndex
      ),
      Array(
        "--emission-options=disableMemRandomization,disableRegisterRandomization",
        "-e", // The intention for this argument (and next argument) is to separate generated files.
        "verilog", // We could also use "sverilog" to generate SystemVerilog files.
        "--target-dir",
        "generated/",
        "--target:fpga"
      )
    )
  )
}
