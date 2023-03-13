import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.algorithms.min_max._
import fuzzy.utils._
import fuzzy.utils.file._
import fuzzy.algorithms.implementations._

class LutMembershipFunctionOnlineTest2
    extends AnyFlatSpec
    with ChiselScalatestTester {
  "DUT" should "pass" in {

    val generatedResults =
      HashMapGenerator.generate(
        DesignConsts.ENABLE_DEBUG,
        true, // it's reversed LUT
        0,
        0
      )

    if (DesignConsts.ENABLE_DEBUG) {
      println(
        s"bitCount: ${generatedResults._1}, delta: ${generatedResults._2}"
      )
    }

    val inputIndex: Int = 0 // for test we build LUT upon the first LUT (0, 0)
    val lutIndex: Int = 0 // for test we build LUT upon the first LUT (0, 0)

    test(
      new LutMembershipFunctionOnline2(
        true,
        generatedResults._1,
        generatedResults._2,
        generatedResults._3,
        inputIndex,
        lutIndex
      )
    ) { dut =>
      //
      // First, start with module in an inactive state, and reactive it
      //

      val testNumbers =
        Array.tabulate(math.pow(2, generatedResults._1).toInt)(i => i).map(_.U)

      // for (loop <- 0 until testNumbers.length) {
      val loop: Int = 138 // test should be removed

      //
      // Reset for test and re-test
      //
      dut.io.start.poke(0.U)
      dut.clock.step(1)
      dut.io.start.poke(1.U)

      //
      // Show the number
      //
      if (true) {
        println(
          s"[*] testing number: 0x${testNumbers(loop).litValue.toInt.toHexString}"
        )
      }

      //
      // Set the test bits
      //
      for (i <- 0 until generatedResults._1) {

        dut.io.inputBit.poke(
          testNumbers(loop)(generatedResults._1 - i - 1)
        )

        dut.clock.step(1)
        dut.io.inputBit.poke(0)

      }

      //
      // Delta bits
      //
      dut.clock.step(generatedResults._3 - 1)

      // }

      //
      // Extra clocks for testing
      //
      dut.clock.step(10)

    }
  }
}
