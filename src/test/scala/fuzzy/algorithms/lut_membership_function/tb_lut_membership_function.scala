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

    test(
      new LutMembershipFunctionOnline(
        DesignConsts.ENABLE_DEBUG,
        DesignConsts.LUT_MEM_FUNCTION_BIT_COUNT,
        DesignConsts.LUT_MEM_FUNCTION_DELTA
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
        // Disable the exported early termination
        //
        dut.io.inputBit.poke(1.U)
        dut.io.inputBit.poke(0.U)
        dut.io.inputBit.poke(1.U)
        dut.io.inputBit.poke(0.U)
        dut.io.inputBit.poke(1.U)
        dut.io.inputBit.poke(0.U)
        dut.io.inputBit.poke(1.U)

        //
        // Stepping clock for further tests
        //
        dut.clock.step(10)
      }
    }
  }
}
