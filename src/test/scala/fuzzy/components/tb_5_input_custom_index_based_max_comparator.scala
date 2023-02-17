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
      dut.io.inputs(0).poke(0xb8.U)
      dut.io.inputs(1).poke(0x85.U)
      dut.io.inputs(2).poke(0x77.U)
      dut.io.inputs(3).poke(0x55.U)
      dut.io.inputs(4).poke(0x1.U)

      //
      // Step the inputs
      //
      dut.clock.step(10)

      //
      // Remove the start bit again
      //
      dut.io.start.poke(0.U)
    }
  }
}
