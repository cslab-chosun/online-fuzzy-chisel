import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.algorithms.min_max._
import fuzzy.utils._
import fuzzy.utils.file._
import fuzzy.algorithms.lut_mem_online._

class LutMembershipFunctionOnlineTest
    extends AnyFlatSpec
    with ChiselScalatestTester {
  "DUT" should "pass" in {

    val generatedResults =
      HashMapGenerator.generate(DesignConsts.ENABLE_DEBUG)

    test(
      new LutMembershipFunctionOnline(
        DesignConsts.ENABLE_DEBUG,
        generatedResults._1,
        generatedResults._2,
        generatedResults._3
      )
    ) { dut =>
      for (loop <- 0 until DesignConsts.MULTIPLE_TEST) {

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
        dut.io.inputBit.poke(1.U)
        dut.clock.step(1)

        dut.io.inputBit.poke(0.U)
        dut.clock.step(1)

        dut.io.inputBit.poke(0.U)
        dut.clock.step(1)

        dut.io.inputBit.poke(0.U)
        dut.clock.step(1)

        dut.io.inputBit.poke(1.U)
        dut.clock.step(1)

        dut.io.inputBit.poke(1.U)
        dut.clock.step(1)

        dut.clock.step(10)
      }
    }
  }
}
