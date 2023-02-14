package fuzzy.algorithms.implementations

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._
import scala.collection.immutable.ListMap

import scala.math._
import firrtl.FileUtils

import scala.collection.mutable.ListBuffer

import fuzzy.algorithms.implementations

class OnlineFuzzification(
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
    val inputs = Input(Vec(numberOfInputs, UInt((1.W))))

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(UInt(1.W))
  })

  //
  // Test random
  //
  val generatedResults =
    HashMapGenerator.generate(true /*DesignConsts.ENABLE_DEBUG*/, 0, 0)

  //
  // Connect output
  //
  io.outResultValid := true.B
  io.outResult := 1.U

}

object OnlineFuzzificationMain extends App {

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
      new OnlineFuzzification(
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
        "generated/",
        "--target:fpga"
      )
    )
  )
}
