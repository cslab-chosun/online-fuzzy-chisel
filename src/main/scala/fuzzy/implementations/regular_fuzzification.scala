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

    VecInit(
      FileUtils
        .getLines("lut_" + inputIndex + "_" + lutIndex + ".txt")
        .filterNot(_ == 0)
        .map { s =>
          BigInt(s.replace("\t", ""), 2).U // 2 is the radix
        }
    )
  }

  val regLutResultsVec = Reg(Vec(countOfLuts, UInt(lutOutputBitCount.W)))

  val outResultValid = RegInit(false.B)
  val outResult = RegInit(false.B)

  Int lutIndex = 0
  Int numberOfMins = 0

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

        val lut = buildLookupTable(lutIndex)

        regLutResultsVec(lutIndex) := lut(
          io.input(inputNumber.U)
        ) // Value read from the LUT

        lutIndex = lutIndex + 1

        if (debug) {
          println(
            s"input number: ${inputNumber} - mapped to LUT: ${lutIndex}"
          )
        }
      }

    }

    //
    // TODO : Generalize the selection of values
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

    //
    // Getting the maximum of numbers
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
      inputBit: UInt,
      start: Bool
  ): (UInt, Bool) = {

    val fuzzification = Module(
      new RegularFuzzification(
        debug
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
    fuzzification.io.inputBit := inputBit

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
