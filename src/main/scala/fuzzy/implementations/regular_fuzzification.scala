package fuzzy.algorithms.implementations

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._
import scala.collection.immutable.ListMap

import scala.math._
import firrtl.FileUtils

import scala.collection.mutable.ListBuffer

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
    val lines2 = source2.getLines()
    for (line <- lines2) {
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

    val inputs = Input(
      Vec(numberOfInputs, UInt((log2Ceil(inputMax)).W))
    )

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

  val regLutResultsVec = Reg(Vec(countOfLuts, UInt(lutOutputBitCount.W)))

  val outResultValid = WireInit(false.B)
  val outResult = WireInit(0.U(lutOutputBitCount.W))

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
  // Compute the number of maxs
  //
  var numberOfMaxs: Int = 0
  var alreadyCountedMaxList = new ListBuffer[Int]()

  maxConnectionMap.foreach { case (minimumVectorIndex, maximumVectorIndex) =>
    if (!alreadyCountedMaxList.contains(maximumVectorIndex)) {
      alreadyCountedMaxList += maximumVectorIndex
      numberOfMaxs += 1
    }
  }
  LogInfo(debug)("number of maximums are : " + numberOfMaxs)
  val regMaxVec = Reg(Vec(numberOfMaxs, UInt(lutOutputBitCount.W)))

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

        val lut = buildLookupTable(debug, inputNumber, i)

        regLutResultsVec(lutIndex) := lut(
          io.inputs(inputNumber)
        ) // Value read from the LUT

        LogInfo(debug)(
          s"input number: ${inputNumber} - mapped to LUT: lut_${inputNumber}_${i}.txt - LUT Index: ${lutIndex}"
        )

        lutIndex = lutIndex + 1

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
    // *** Connect Minimum circuits ***
    //

    //
    // iterate over the elements
    //
    LogInfo(debug)("")
    listOfConnections.foreach { case (x, y) =>
      LogInfo(debug)(s"Connection: ($x, $y)")
    }
    LogInfo(debug)("")

    val connectionsByY =
      listOfConnections.groupBy { case (x, y) => y }.toSeq.sortBy(_._1)

    connectionsByY.foreach { case (y, xs) =>
      val num1 = xs(0)
      val num2 = xs(1)
      LogInfo(debug)(s"Connections for y=${y} - ${num1._1}, ${num2._1} ")
      LogInfo(debug)(
        s"regMinVec(${y}) <= Min( regLutResultsVec(${num1._1}),   regLutResultsVec(${num2._1}) )"
      )
      //
      // Create the comparator based on LUT
      //
      regMinVec(y) := Comparator(
        false,
        false,
        lutOutputBitCount
      )(
        io.start,
        regLutResultsVec(num1._1),
        regLutResultsVec(num2._1)
      )

    }

    //
    // *** Creating connections for maximums ***
    //

    var maximumCountOfMaximums: Int = 0 // used for computing the delay cycles
    var alreadyConnectedList = new ListBuffer[Int]()

    maxConnectionMap.foreach { case (minimumVectorIndex, maximumVectorIndex) =>
      var tempMaximumCountOfMaximums: Int = 0

      if (!alreadyConnectedList.contains(maximumVectorIndex)) {

        //
        // Add this element to the list
        //
        alreadyConnectedList += maximumVectorIndex
        var minConnectionsElements = new ListBuffer[Int]()

        //
        // Compute count of maximums for a special index
        //
        maxConnectionMap.foreach {

          case (minimumVectorIndex2, maximumVectorIndex2) =>
            if (maximumVectorIndex == maximumVectorIndex2) {

              tempMaximumCountOfMaximums = tempMaximumCountOfMaximums + 1
              minConnectionsElements += minimumVectorIndex2
            }
        }

        LogInfo(debug)(
          "count connections to max comparator for Max(" + maximumVectorIndex + ") is : " + tempMaximumCountOfMaximums + "\n"
        )

        //
        // Create the maximum module circuit
        //
        val finalConnVector =
          Wire(Vec(minConnectionsElements.length, UInt(lutOutputBitCount.W)))

        for (i <- 0 until minConnectionsElements.length) {
          finalConnVector(i) := regMinVec(minConnectionsElements(i))
        }

        regMaxVec(maximumVectorIndex) := MultipleComparator(
          debug,
          true,
          false, // not index-based
          lutOutputBitCount,
          tempMaximumCountOfMaximums,
          1 // not used, we set it to one to allocate one bit for the datatype of callee
        )(
          io.start,
          finalConnVector
        )

        //
        // Log
        //
        LogInfo(debug)(
          s"regMaxVec(${maximumVectorIndex}) <= Max(" + minConnectionsElements
            .mkString("minConnectionsElements(", ", ", ")") + ")"
        )

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

        LogInfo(debug)(
          "-----------------------------------------------------------------------------------"
        )

      }

    }

    // -------------------------------------------------------------------------------
    //

    //
    // *** Creating connections for Maximums based on Indexes ***
    //

    val finalConnVectorForIdxBasedMax =
      Wire(Vec(alreadyConnectedList.length, UInt(lutOutputBitCount.W)))

    //
    // Create the maximum module circuit
    //

    for (i <- 0 until alreadyConnectedList.length) {
      finalConnVectorForIdxBasedMax(i) := regMaxVec(i)
    }

    //
    // Log
    //
    LogInfo(debug)(
      s"number of index-based maxes: ${alreadyConnectedList.length}"
    )

    outResult := MultipleComparator(
      debug,
      true,
      true, // it's index-based
      lutOutputBitCount,
      alreadyConnectedList.length,
      alreadyConnectedList.length // used to store the index of index
    )(
      io.start,
      finalConnVectorForIdxBasedMax
    )

    //
    // Log
    //
    LogInfo(debug)(
      s"result <= Max-index(" + finalConnVectorForIdxBasedMax
        .mkString("finalConnVectorForIdxBasedMax(", ", ", ")") + ")"
    )

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
      start: Bool,
      inputs: Vec[UInt]
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
        "generated/",
        "--target:fpga"
      )
    )
  )
}
