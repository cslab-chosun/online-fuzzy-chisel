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
      // Max input number is 2 ^ 5 = 32 (0x20)
      //
      dut.io.inputs(0).poke(1.U)
      dut.io.inputs(1).poke(1.U)

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
