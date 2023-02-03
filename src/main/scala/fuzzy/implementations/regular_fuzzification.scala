package fuzzy.algorithms.lut_mem_online

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._
import scala.collection.immutable.ListMap

import scala.math._
import firrtl.FileUtils

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

  def buildLookupTable(fileIndex: Int): Vec[UInt] = {
    VecInit(FileUtils.getLines("file" + fileIndex + ".dat").map { s =>
      BigInt(s, 16).U
    })
  }

  val sStarted :: sFinished :: Nil = Enum(2)
  val state = RegInit(sStarted)

  val regLutResultsVec = Reg(Vec(countOfLuts, UInt(lutOutputBitCount.W)))

  val outResultValid = RegInit(false.B)
  val outResult = RegInit(false.B)

  Int lutIndex = 0

  //
  // Transition rules
  //
  when(io.start === true.B) {

    //
    // Status transition
    //
    switch(state) {

      is(sStarted) {

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
