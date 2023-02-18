import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import scala.util.control.Breaks._

import fuzzy.components._
import fuzzy.utils._

import fuzzy.algorithms.implementations._

class OnlineFuzzificationTest extends AnyFlatSpec with ChiselScalatestTester {
  "DUT" should "pass" in {

    //
    // These lines generate the Verilog output
    //
    val config = ReadInputAndLutDescription(
      "src/main/resources/lut/config.txt",
      "src/main/resources/lut/max.txt"
    )

    //
    // Read the configuration
    //
    test(
      new OnlineFuzzification(
        config._1,
        config._2,
        config._3,
        config._4,
        config._5,
        config._6, // Equals to lutOutputBitCount and SHOULD NOT CHANGE THE LOCATION OF THIS PARAMETER
        config._7,
        config._8
      )
    ) { dut =>
      //
      // First, start with module in an inactive state
      //
      dut.io.start.poke(0.U)
      dut.clock.step(1)

      //
      // Activate the input
      //
      dut.io.start.poke(1.U)

      //
      // Add the input vector
      //

      //
      // Max input number is 2 ^ 10 = 1023
      //

      /////////////////////////////////////////////////////////////////////////
      // Temp outputs to be removed

      val testtestCase0 = 0.U(10.W)
      val testtestCase1 = 0.U(10.W)
      val testtestCase2 = 0.U(10.W)
      val testtestCase3 = 0.U(10.W)
      val testtestCase4 = 90.U(10.W)
      val testtestCase5 = 0.U(10.W)
      val testtestCase6 = 0.U(10.W)
      val testtestCase7 = 50.U(10.W)
      val testtestCase8 = 50.U(10.W)
      val testtestCase9 = 50.U(10.W)

      for (i <- 0 until 7) {

        dut.io.regLutResultsVec(0).poke(testtestCase0(7 - i - 1))
        dut.io.regLutResultsVec(1).poke(testtestCase1(7 - i - 1))
        dut.io.regLutResultsVec(2).poke(testtestCase2(7 - i - 1))
        dut.io.regLutResultsVec(3).poke(testtestCase3(7 - i - 1))
        dut.io.regLutResultsVec(4).poke(testtestCase4(7 - i - 1))
        dut.io.regLutResultsVec(5).poke(testtestCase5(7 - i - 1))
        dut.io.regLutResultsVec(6).poke(testtestCase6(7 - i - 1))
        dut.io.regLutResultsVec(7).poke(testtestCase7(7 - i - 1))
        dut.io.regLutResultsVec(8).poke(testtestCase8(7 - i - 1))
        dut.io.regLutResultsVec(9).poke(testtestCase9(7 - i - 1))

        dut.clock.step(1)

      }
/////////////////////////////////////////////////////////////////////////

      val testCase0 = 260.U(10.W)
      val testCase1 = 76.U(10.W)

      /*
      for (i <- 0 until 10) {

        dut.io.inputs(0).poke(testCase0(10 - i - 1))
        dut.io.inputs(1).poke(testCase1(10 - i - 1))

        dut.clock.step(1)

      }
       */
      //
      // Step the inputs
      //
      dut.clock.step(50)

      //
      // Remove the start bit again
      //
      dut.io.start.poke(0.U)
    }
  }
}
