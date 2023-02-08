package fuzzy.algorithms.lut_mem_online

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._
import scala.collection.immutable.ListMap

import scala.math._
import firrtl.FileUtils

class Teeeeeeeeeeeeeeeeeeeeeessssssssssssttttttttt() extends Bundle {

  val selectedInput = Bool()
  val earlyTerminated = Bool()
  val minMaxOutput = UInt(1.W)
  val earlyTerminated1 = Bool()
  val earlyTerminated2 = Bool()
}

object ReadInputAndLutDescription {

  def apply(filePath: String): (
      Boolean,
      Int,
      Int,
      Int,
      Int,
      Int,
      scala.collection.mutable.ListBuffer[(Int, Int)]
  ) = {
    val source = scala.io.Source.fromFile(filePath)
    val lines = source.getLines()
    val debug = lines.next().toBoolean
    val a = lines.next().toInt
    val b = lines.next().toInt
    val c = lines.next().toInt
    val d = lines.next().toInt
    val e = lines.next().toInt
    val lut = scala.collection.mutable.ListBuffer[(Int, Int)]()
    for (line <- lines) {
      val pair = line.split(",")
      lut += ((pair(0).toInt, pair(1).toInt))
    }
    source.close()

    (debug, a, b, c, d, e, lut)
  }
}

class RegularFuzzification(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    countOfLuts: Int = 10, // count of LUTs
    numberOfInputs: Int = 2, // number of inputs (each input is an integer)
    inputMax: Int = 180, // maximum possible number of input
    lutInputBitCount: Int = 5, // equal to n
    lutOutputBitCount: Int = 4, // equal to m
    lutAndInputMap: scala.collection.mutable.ListBuffer[
      (Int, Int)
    ] // invoke it like [input index: 0, 5 luts] [input index: 1, 6 luts]

) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val input = Input(
      Vec(numberOfInputs, UInt((log2Ceil(inputMax)).W))
    )

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(1.W)
    )
  })

  def buildLookupTable(inputIndex: Int, lutIndex: Int): Vec[UInt] = {
    val fileName =
      "src/main/resources/lut/lut_" + inputIndex + "_" + lutIndex + ".txt"

    FileUtils
      .getLines(fileName)
      .drop(1)
      .foreach { s =>
        println(s"Line from file $fileName: ${s.trim}")
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

  val regLutResultsVec = Reg(Vec(countOfLuts, UInt(lutOutputBitCount.W)))

  val outResultValid = RegInit(false.B)
  val outResult = RegInit(false.B)

  var lutIndex: Int = 0
  var numberOfMins: Int = 0

  //
  // Compute the length of mins
  //
  lutAndInputMap.foreach { case (inputNumber, numberOfLuts) =>
    if (numberOfMins == 0) {
      numberOfMins = numberOfLuts
    } else {
      numberOfMins = numberOfMins * numberOfLuts
    }
  }

  val regMinVec = Reg(Vec(numberOfMins, UInt(lutOutputBitCount.W)))

  //
  // Transition rules
  //
  when(io.start === true.B) {

    //
    // Status transition
    //
    lutAndInputMap.foreach { case (inputNumber, numberOfLuts) =>
      //
      // Create multiple LUTs
      //
      for (i <- 0 until numberOfLuts) {

        val lut = buildLookupTable(inputNumber, i)

        regLutResultsVec(lutIndex) := lut(
          io.input(inputNumber.U)
        ) // Value read from the LUT

        lutIndex = lutIndex + 1

        if (debug) {
          println(
            s"input number: ${inputNumber} - mapped to LUT: lut_${inputNumber}_${i}.txt - LUT Index: ${lutIndex}"
          )
        }
      }

    }

    //
    // TODO: Generalize the selection of values
    // -------------------------------------------------------------------------------
    //

    //
    // Getting the minimum of vectors (first round)
    //
    for (i <- 0 until 5) {

      for (j <- 0 until 5) {

        regMinVec(j) := Comparator(debug, false, lutOutputBitCount)(
          io.start,
          regLutResultsVec(j),
          regLutResultsVec(i)
        )
      }
    }

    //
    // -------------------------------------------------------------------------------
    //

  }.otherwise {

    //
    // Reset the state
    //
    outResult := 0.U
    outResultValid := false.B
  }

  //
  // Output connections
  //
  io.outResult := outResult
  io.outResultValid := outResultValid

}

object RegularFuzzification {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG
  )(
      input: UInt,
      start: Bool
  ): (UInt, Bool) = {

    val config = ReadInputAndLutDescription("src/main/resources/lut/config.txt")

    val fuzzification = Module(
      new RegularFuzzification(
        config._1,
        config._2,
        config._3,
        config._4,
        config._5,
        config._6,
        config._7
      )
    )

    val outResult = Wire(UInt(1.W))
    val outResultValid = Wire(Bool())

    //
    // Start the circuit
    //
    fuzzification.io.start := start

    //
    // Input
    //
    fuzzification.io.input := input

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
  // These lines generate the Verilog output
  //
  val config = ReadInputAndLutDescription("src/main/resources/lut/config.txt")

  println(
    new (chisel3.stage.ChiselStage).emitVerilog(
      new RegularFuzzification(
        config._1,
        config._2,
        config._3,
        config._4,
        config._5,
        config._6,
        config._7
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
