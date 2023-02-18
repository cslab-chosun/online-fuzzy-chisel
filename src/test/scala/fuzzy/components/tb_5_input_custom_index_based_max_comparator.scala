import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import scala.util.control.Breaks._

import fuzzy.components._
import fuzzy.utils._

class FiveInputCustomIndexBasedMaxComparatorTest
    extends AnyFlatSpec
    with ChiselScalatestTester {
  "DUT" should "pass" in {

    test(
      new FiveInputCustomIndexBasedMaxComparator(
        true /*DesignConsts.ENABLE_DEBUG*/,
        true // it's max
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
      val testCase0 = 0x48.U(8.W)
      val testCase1 = 0x0.U(8.W)
      val testCase2 = 0x55.U(8.W)
      val testCase3 = 0x1.U(8.W)
      val testCase4 = 0x25.U(8.W)

      for (i <- 0 until 8) {

        dut.io.inputs(0).poke(testCase0(8 - i - 1))
        dut.io.inputs(1).poke(testCase1(8 - i - 1))
        dut.io.inputs(2).poke(testCase2(8 - i - 1))
        dut.io.inputs(3).poke(testCase3(8 - i - 1))
        dut.io.inputs(4).poke(testCase4(8 - i - 1))

        dut.clock.step(1)

      }

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
