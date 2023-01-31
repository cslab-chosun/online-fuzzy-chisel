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
      HashMapGenerator.generate(true)

    if (true) {
      println(
        s"bitCount: ${generatedResults._1}, delta: ${generatedResults._2}"
      )
    }

    test(
      new LutMembershipFunctionOnline(
        true,
        generatedResults._1,
        generatedResults._2,
        generatedResults._3,
        generatedResults._4
      )
    ) { dut =>
      //
      // First, start with module in an inactive state, and reactive it
      //

      val testNumbers = Array(18, 6, 30, 0, 31, 22).map(_.U)

      for (loop <- 0 until testNumbers.length) {

        //
        // Reset for test and re-test
        //
        dut.io.start.poke(0.U)
        dut.clock.step(1)
        dut.io.start.poke(1.U)

        //
        // Set the test bits
        //
        for (i <- 0 until generatedResults._1) {

          dut.io.inputBit.poke(
            testNumbers(loop)(generatedResults._1 - i - 1)
          )
          dut.clock.step(1)

        }

        //
        // Delta bits
        //
        dut.clock.step(generatedResults._3)

      }

      //
      // Extra clocks for testing
      //
      dut.clock.step(10)

    }
  }
}
