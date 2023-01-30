import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.algorithms.min_max._
import fuzzy.utils._
import fuzzy.utils.file._
import fuzzy.algorithms.state_generator._

class StateGeneratorTest extends AnyFlatSpec with ChiselScalatestTester {
  "DUT" should "pass" in {

    test(
      new StateGenerator(
        true, // DesignConsts.ENABLE_DEBUG
        StateGenSamples.numberOfBits
      )
    ) { dut =>
      //
      // First, start with module in an inactive state
      //
      dut.io.start.poke(0.U)
      dut.clock.step(10)

      //
      // Activate the start bit
      //
      dut.io.start.poke(1.U)

      //
      // Set the test bits
      //
      dut.io.in.poke(1.U)
      dut.clock.step(1)

      dut.io.in.poke(0.U)
      dut.clock.step(1)

      dut.io.in.poke(0.U)
      dut.clock.step(1)

      dut.io.in.poke(0.U)
      dut.clock.step(1)

      dut.io.in.poke(1.U)
      dut.clock.step(1)

      dut.io.in.poke(1.U)
      dut.clock.step(1)
      dut.clock.step(10)
    }
  }
}
