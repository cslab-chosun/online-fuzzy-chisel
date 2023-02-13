import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import scala.util.control.Breaks._

import fuzzy.components._
import fuzzy.utils._

class MultipleComparatorTest extends AnyFlatSpec with ChiselScalatestTester {
  "DUT" should "pass" in {

    test(
      new MultipleComparator(
        true /*DesignConsts.ENABLE_DEBUG*/, true, // it's max
        true, // not index based
        8, // legnth of each input number
        9, // number of inputs in vector
        50
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
      dut.io.inputs(5).poke(0xa9.U)
      dut.io.inputs(6).poke(0xb7.U)
      dut.io.inputs(7).poke(0xc1.U)
      dut.io.inputs(8).poke(0xb9.U)

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
