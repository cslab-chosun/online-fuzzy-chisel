package fuzzy.algorithms.interface

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._
import fuzzy.algorithms.implementations._
import scala.collection.immutable.ListMap

import scala.math._
import firrtl.FileUtils

import scala.collection.mutable.ListBuffer

class RegularFuzzification(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    countOfLuts: Int = 10, // count of LUTs
    numberOfInputs: Int = 2, // number of inputs (each input is an integer)
    inputMax: Int = 180, // maximum possible number of input
    lutInputBitCount: Int = 5, // equal to n
    lutOutputBitCount: Int = 4, // equal to m
    lutAndInputMap: scala.collection.mutable.ListBuffer[
      (Int, Int)
    ], // invoke it like [input index: 0, 5 luts] [input index: 1, 6 luts]
    maxConnectionMap: scala.collection.mutable.ListBuffer[
      (Int, Int)
    ] // invoke it like [input index: 0, 5 luts] [input index: 1, 6 luts]

) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val inputs = Input(Vec(numberOfInputs, UInt(1.W)))

    val lutConnections = Input(Vec(countOfLuts, UInt(lutOutputBitCount.W)))

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(
        lutOutputBitCount.W
      ) // it's actually should be log2Ceil(max index number) but as we compute it later, let
      // it be the actual bit count of LUT
    )

  })

  val regInputBits = RegInit(
    VecInit(Seq.fill(numberOfInputs)(0.U((log2Ceil(inputMax)).W)))
  )

  val regIndex = RegInit(
    (log2Ceil(inputMax) - 1).U((log2Ceil(inputMax)).W)
  )

  val regStart = RegInit(false.B)

  when(io.start === true.B) {

    for (i <- 0 until numberOfInputs) {

      regInputBits(i) := regInputBits(i) | (io.inputs(i) << regIndex)

    }

    when(regIndex =/= 0.U) {
      regIndex := regIndex - 1.U
    }.otherwise {
      regIndex := (log2Ceil(inputMax) - 1).U
      regStart := true.B
    }
  }

  //
  // Connect the interface
  //
  val outputResults = RegularFuzzificationInput(
    debug,
    countOfLuts,
    numberOfInputs,
    inputMax,
    lutInputBitCount,
    lutOutputBitCount,
    lutAndInputMap,
    maxConnectionMap
  )(
    regStart,
    regInputBits,
    io.lutConnections
  )

  io.outResult := outputResults._1
  io.outResultValid := outputResults._2

}

object RegularFuzzification {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG
  )(
      start: Bool,
      inputs: Vec[UInt],
      optionalLutConnections: Vec[UInt]
  ): (UInt, Bool) = {

    val config = ReadInputAndLutDescription(
      "src/main/resources/lut/config.txt",
      "src/main/resources/lut/max.txt"
    )

    val fuzzification = Module(
      new RegularFuzzificationInput(
        config._1,
        config._2,
        config._3,
        config._4,
        config._5,
        config._6, // Equals to lutOutputBitCount and SHOULD NOT CHANGE THE LOCATION OF THIS PARAMETER
        config._7,
        config._8
      )
    )

    val outResult = Wire(UInt(config._6.W))
    val outResultValid = Wire(Bool())

    //
    // Start the circuit
    //
    fuzzification.io.start := start

    //
    // Connect LUT connections
    //
    fuzzification.io.lutConnections := optionalLutConnections

    //
    // Set the Inputs vectors
    //
    fuzzification.io.inputs := inputs

    //
    // Output
    //
    outResult := fuzzification.io.outResult
    outResultValid := fuzzification.io.outResultValid

    //
    // Return the result
    //
    (outResult, outResultValid)
  }
}

object RegularFuzzificationMain extends App {

  //
  // Read the configuration
  //
  val config = ReadInputAndLutDescription(
    "src/main/resources/lut/config.txt",
    "src/main/resources/lut/max.txt"
  )

  //
  // These lines generate the Verilog output
  //
  println(
    new (chisel3.stage.ChiselStage).emitVerilog(
      new RegularFuzzification(
        config._1,
        config._2,
        config._3,
        config._4,
        config._5,
        config._6, // Equals to lutOutputBitCount and SHOULD NOT CHANGE THE LOCATION OF THIS PARAMETER
        config._7,
        config._8
      ),
      Array(
        "--emission-options=disableMemRandomization,disableRegisterRandomization",
        "-e", // The intention for this argument (and next argument) is to separate generated files.
        "verilog", // We could also use "sverilog" to generate SystemVerilog files.
        "--target-dir",
        "generated/regular-fuzzification/",
        "--target:fpga"
      )
    )
  )
}
