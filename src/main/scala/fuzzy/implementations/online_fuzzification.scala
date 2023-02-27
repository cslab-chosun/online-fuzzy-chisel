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
import fuzzy.components
import fuzzy.algorithms.min_max._

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

    val lutConnections = Input(Vec(countOfLuts, UInt(1.W)))

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(UInt(3.W)) // used for the index of output

  })

  val regLutResultsVec = Reg(Vec(countOfLuts, UInt(1.W)))
  val regLutResultsValidVec = Reg(Vec(countOfLuts, Bool()))

  val outResultValid = WireInit(false.B)
  val outResult = WireInit(0.U(3.W)) // // used for the index of output

  var currentIndexForLutGenResult: Int = 0

  //
  // Compute the length of mins
  //
  var numberOfMins: Int = 0
  lutAndInputMap.foreach { case (inputNumber, numberOfLuts) =>
    if (numberOfMins == 0) {
      numberOfMins = numberOfLuts
    } else {
      numberOfMins = numberOfMins * numberOfLuts
    }
  }

  val regMinVec = Reg(Vec(numberOfMins, UInt(1.W)))

  //
  // Connect direct LUTs
  //
  if (!DesignConsts.LUT_CONNECTION) {
    regLutResultsVec := io.lutConnections
  }

  //
  // Transition rules
  //
  when(io.start === true.B) {

    //
    // Create online LUTs
    //
    if (DesignConsts.LUT_CONNECTION) {
      lutAndInputMap.foreach { case (inputNumber, numberOfLuts) =>
        for (i <- 0 until numberOfLuts) {

          //
          // Compute the lut for the
          //
          val lutGeneratedResults =
            HashMapGenerator.generate(debug, inputNumber, i)

          val lutResult = LutMembershipFunctionOnline(
            debug,
            lutGeneratedResults._1,
            lutGeneratedResults._2,
            lutGeneratedResults._3,
            lutGeneratedResults._4
          )(
            io.inputs(inputNumber),
            io.start
          )

          //
          // Connect the lut result bit and valid bit
          //
          regLutResultsVec(currentIndexForLutGenResult) := lutResult._1
          regLutResultsValidVec(currentIndexForLutGenResult) := lutResult._2

          currentIndexForLutGenResult += 1
        }
      }
    }

    //
    // Generalize the selection, currently generalized into two inputs
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

    val minMaxConnections = ListBuffer[(Int, (Int, Int))]()

    val connectionsByMaximumVectorIndex =
      maxConnectionMap
        .groupBy { case (minimumVectorIndex, maximumVectorIndex) =>
          maximumVectorIndex
        }
        .toSeq
        .sortBy(_._1)

    connectionsByMaximumVectorIndex.foreach {
      case (minimumVectorIndex, maximumVectorIndex) =>
        maximumVectorIndex.foreach { case (item) =>
          val selectedConnectionsByMaximumVectorIndex = connectionsByY
            .find { case (y, xs) =>
              y == item._1
            }
            .map { case (y, xs) =>
              xs.unzip
            }
            .getOrElse((List.empty[Int], List.empty[Int]))

          println(
            "Item : " + item._1 + ": " +
              selectedConnectionsByMaximumVectorIndex._1
          )
          minMaxConnections += ((
            minimumVectorIndex.toInt,
            (
              selectedConnectionsByMaximumVectorIndex._1(0).toInt,
              selectedConnectionsByMaximumVectorIndex._1(1).toInt
            )
          ))

        }
        LogInfo(debug)(
          s"\nminimumVectorIndex=$minimumVectorIndex: ${maximumVectorIndex.map(_._1).mkString(", ")}"
        )
    }

    //
    // Iterate over list of min-max connections
    //
    LogInfo(debug)(s"min-max list: ${minMaxConnections}}")

    val minMaxConnectionsByResult =
      minMaxConnections
        .groupBy { case (minimumVectorIndex, connectionIndex) =>
          minimumVectorIndex
        }
        .toSeq
        .sortBy(_._1)

    //
    // *** Connect Min-max tree ***
    //
    LogInfo(debug)(s"\n")

    LogInfo(debug)(
      s"number of expected results : ${minMaxConnectionsByResult.length}"
    )

    //
    // Create connection for registers
    //
    val regMinMaxTreeResultsVec =
      Reg(Vec(minMaxConnectionsByResult.length, UInt(1.W)))
    val regMinMaxTreeResultsValidVec =
      Reg(Vec(minMaxConnectionsByResult.length, Bool()))

    minMaxConnectionsByResult.foreach {
      case (maxResultIndex, connectionIndex) =>
        LogInfo(debug)(
          s"maxResultIndex=$maxResultIndex: ${connectionIndex.mkString(", ")}"
        )

        //
        // Determine length of connection
        //
        var vectorCount = 8

        val vector1 = VecInit(Seq.fill(vectorCount)(0.U(1.W)))
        val vector2 = VecInit(Seq.fill(vectorCount)(0.U(1.W)))

        var tempIndex: Int = 0
        var vector1Str = ""
        var vector2Str = ""

        connectionIndex.foreach { case (item) =>
          vector1(tempIndex) := regLutResultsVec(item._2._1)
          vector1Str += s"regLutResultsVec(${item._2._1}), "
          vector2(tempIndex) := regLutResultsVec(item._2._2)
          vector2Str += s"regLutResultsVec(${item._2._2}) "

          tempIndex += 1
        }

        vector1Str += "\n"
        vector2Str += "\n"

        LogInfo(debug)(s"vector1=$vector1Str\n")
        LogInfo(debug)(s"vector2=$vector2Str\n")

        //
        // Connect the min-max tree
        //
        val minMaxResult =
          MinMaxParallelOnlineComparator(debug, vectorCount)(
            vector1,
            vector2,
            false.B,
            io.start
          )

        regMinMaxTreeResultsVec(maxResultIndex) := minMaxResult._1
        regMinMaxTreeResultsValidVec(maxResultIndex) := minMaxResult._2

    }

    //
    // *** Connect Min-max index tree ***
    //
    val FiveInputIndexBasedMaxComparator =
      FiveInputCustomIndexBasedMaxComparator(debug, true)(
        regMinMaxTreeResultsValidVec(0) & regMinMaxTreeResultsValidVec(
          1
        ) & regMinMaxTreeResultsValidVec(2) & regMinMaxTreeResultsValidVec(
          3
        ) & regMinMaxTreeResultsValidVec(4),
        regMinMaxTreeResultsVec
      )

    outResult := FiveInputIndexBasedMaxComparator._1
    outResultValid := FiveInputIndexBasedMaxComparator._2
  }.otherwise {
    //
    // The reset condition
    //
  }

  //
  // Connect output
  //
  io.outResultValid := outResultValid
  io.outResult := outResult

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
        "generated/online-fuzzification/",
        "--target:fpga"
      )
    )
  )
}
