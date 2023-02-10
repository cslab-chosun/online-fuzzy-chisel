package fuzzy.algorithms.lut_mem_online

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._
import scala.collection.immutable.ListMap

import scala.math._
import firrtl.FileUtils

import scala.collection.mutable.ListBuffer

class Teeeeeeeeeeeeeeeeeeeeeessssssssssssttttttttt() extends Bundle {

  val selectedInput = Bool()
  val earlyTerminated = Bool()
  val minMaxOutput = UInt(1.W)
  val earlyTerminated1 = Bool()
  val earlyTerminated2 = Bool()
}

object ReadInputAndLutDescription {

  def apply(configFilePath: String, maxConnFilePath: String): (
      Boolean,
      Int,
      Int,
      Int,
      Int,
      Int,
      scala.collection.mutable.ListBuffer[(Int, Int)],
      scala.collection.mutable.ListBuffer[(Int, Int)]
  ) = {
    val source = scala.io.Source.fromFile(configFilePath)
    val source2 = scala.io.Source.fromFile(maxConnFilePath)

    val lines = source.getLines()
    val debug = lines.next().toBoolean
    val a = lines.next().toInt
    val b = lines.next().toInt
    val c = lines.next().toInt
    val d = lines.next().toInt
    val e = lines.next().toInt

    //
    // Create input and lut coumt list
    //
    val lut = scala.collection.mutable.ListBuffer[(Int, Int)]()
    for (line <- lines) {
      val pair = line.split(",")
      lut += ((pair(0).toInt, pair(1).toInt))
    }
    source.close()

    //
    // Create max connection count
    //
    val max = scala.collection.mutable.ListBuffer[(Int, Int)]()
    for (line <- lines) {
      val pair = line.split(",")
      max += ((pair(0).toInt, pair(1).toInt))
    }
    source2.close()

    (debug, a, b, c, d, e, lut, max)
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

    if (debug) {
      FileUtils
        .getLines(fileName)
        .drop(1)
        .foreach { s =>
          println(s"Line from file $fileName: ${s.trim}")
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
    // TODO: Generalize the selection, currently generalized into two inputs
    // -------------------------------------------------------------------------------

    //
    // *** Connecting LUTs to Mins
    //
    val listOfConnections = ListBuffer[(Int, Int)]()

    //
    // Create connections for the first LUT
    //
    for (i <- 0 until lutAndInputMap(0)._2) {

      for (j <- 0 until numberOfMins / lutAndInputMap(0)._2) {

        listOfConnections += ((i, (i * lutAndInputMap(0)._2) + j))
      }
    }

    //
    // Create connections for the second LUT
    //
    for (i <- 0 until lutAndInputMap(1)._2) {

      for (j <- 0 until numberOfMins / lutAndInputMap(1)._2) {

        listOfConnections += ((
          i + lutAndInputMap(0)._2,
          j * lutAndInputMap(1)._2 + i
        ))
      }

    }
    // -------------------------------------------------------------------------------
    //

    //
    // iterate over the elements
    //
    if (debug) {
      listOfConnections.foreach { case (x, y) =>
        println(s"Connection: ($x, $y)")
      }
    }

    //
    // Connecting Minimums
    //
    for (i <- 0 until numberOfMins) {

      regMinVec(i) := Comparator(debug, false, lutOutputBitCount)(
        io.start,
        listOfConnections(i)._1.U,
        listOfConnections(i)._2.U
      )
    }

    //
    // *** Creating connections for Maximums ***
    //

    var maximumCountOfMaximums: Int = 0 // used for computing the delay cycles

    maxConnectionMap.foreach { case (minimumVectorIndex, maximumVectorIndex) =>
      var tempMaximumCountOfMaximums: Int = 0

      //
      // Compute count of maximums for a special index
      //
      maxConnectionMap.foreach {
        case (minimumVectorIndex2, maximumVectorIndex2) =>
          if (maximumVectorIndex == maximumVectorIndex2) {

            tempMaximumCountOfMaximums = tempMaximumCountOfMaximums + 1
          }
      }

      //
      // Check to find the maximum connection to the MAX inputs
      // This is because we will need to now the time we need to
      // wait in the coming cycles
      //
      if (tempMaximumCountOfMaximums > maximumCountOfMaximums) {

        //
        // Change the maximum path
        //
        maximumCountOfMaximums = tempMaximumCountOfMaximums
      }

    }

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

    val config = ReadInputAndLutDescription(
      "src/main/resources/lut/config.txt",
      "src/main/resources/lut/max.txt"
    )

    val fuzzification = Module(
      new RegularFuzzification(
        config._1,
        config._2,
        config._3,
        config._4,
        config._5,
        config._6,
        config._7,
        config._8
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
  val config = ReadInputAndLutDescription(
    "src/main/resources/lut/config.txt",
    "src/main/resources/lut/max.txt"
  )

  println(
    new (chisel3.stage.ChiselStage).emitVerilog(
      new RegularFuzzification(
        config._1,
        config._2,
        config._3,
        config._4,
        config._5,
        config._6,
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
