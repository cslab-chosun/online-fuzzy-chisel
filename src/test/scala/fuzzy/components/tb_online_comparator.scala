import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import scala.util.control.Breaks._

import fuzzy.components._
import fuzzy.utils._

class OnlineComparatorTest extends AnyFlatSpec with ChiselScalatestTester {
  "DUT" should "pass" in {

    test(new OnlineComparator(DesignConsts.ENABLE_DEBUG, true)) { dut =>

      //
      // First, start with module in an inactive state
      //
      dut.io.start.poke(0.U)
      dut.clock.step(1)

      //
      // Perform the first test
      //
      val test1 = Integer.parseInt("1000 0000 0010 0111".replace(" ", ""), 2).U
      val test2 = Integer.parseInt("1000 0000 0000 0111".replace(" ", ""), 2).U

      //
      // Start the comparator
      //
      dut.io.start.poke(1.U)
      breakable {

        for (i <- 0 until log2Ceil(test1.litValue.toInt)) {

          if (DesignConsts.ENABLE_DEBUG) {
            println(
              "================================================================\n"
            )
          }

          dut.io.in1.poke(test1(log2Ceil(test1.litValue.toInt) - i - 1))
          dut.io.in2.poke(test2(log2Ceil(test2.litValue.toInt) - i - 1))

          if (DesignConsts.ENABLE_DEBUG) {
            println(s"round (greater) : ${i}")
          

            println("")

            println(
              s"input 1 : ${dut.io.in1.peek().litValue.toInt.toBinaryString}"
            )
            println(
              s"input 2 : ${dut.io.in2.peek().litValue.toInt.toBinaryString}"
            )

            println("")

            println(
              s"early termination 1 : ${dut.io.earlyTerminate1.peek().litValue.toInt.toBinaryString}"
            )
            println(
              s"early termination 2 : ${dut.io.earlyTerminate2.peek().litValue.toInt.toBinaryString}"
            )

            println("")

            println(
              s"max : ${dut.io.maxMin.peek().litValue.toInt.toBinaryString}\n"
            )
          }

          if (
            dut.io.earlyTerminate1.peek().litValue.toInt == 1 ||
            dut.io.earlyTerminate2.peek().litValue.toInt == 1
          ) {
            break
          }

          dut.clock.step(1)
        }
      }

      //
      // Test the results of the above module
      //
      if (
        test1.litValue.toInt > test2.litValue.toInt &&
        dut.io.earlyTerminate1.peek().litValue.toInt == 1 &&
        dut.io.earlyTerminate2.peek().litValue.toInt == 0
      ) {
        print("\n[*] Test result for online comparator 1 (max) was successful.\n");
      } else if (
        test1.litValue.toInt < test2.litValue.toInt &&
        dut.io.earlyTerminate1.peek().litValue.toInt == 0 &&
        dut.io.earlyTerminate2.peek().litValue.toInt == 1
      ) {
        print("\n[*] Test result for online comparator 1 (max) was successful.\n");
      } else {
        print("\n[x] Test result for online comparator 1 (max) was NOT successful!\n");
        assert(false, "Err, test failed")
      }

      //
      // Remove the start bit again
      //
      dut.io.start.poke(0.U)
    }

    test(new OnlineComparator(DesignConsts.ENABLE_DEBUG, false)) { dut =>

      //
      // First, start with module in an inactive state
      //
      dut.io.start.poke(0.U)
      dut.clock.step(1)

      //
      // Perform the first test
      //
      val test1 = Integer.parseInt("1000 0000 0010 0111".replace(" ", ""), 2).U
      val test2 = Integer.parseInt("1000 0000 0000 0111".replace(" ", ""), 2).U

      //
      // Start the comparator
      //
      dut.io.start.poke(1.U)

    breakable {

      for (i <- 0 until log2Ceil(test1.litValue.toInt)) {

        if (DesignConsts.ENABLE_DEBUG) {
          println(
            "================================================================\n"
          )
        }

        dut.io.in1.poke(test1(log2Ceil(test1.litValue.toInt) - i - 1))
        dut.io.in2.poke(test2(log2Ceil(test2.litValue.toInt) - i - 1))

        if (DesignConsts.ENABLE_DEBUG) {
          println(s"round (lower) : ${i}")

          println("")

          println(s"input 1 : ${dut.io.in1.peek().litValue.toInt.toBinaryString}")
          println(s"input 2 : ${dut.io.in2.peek().litValue.toInt.toBinaryString}")

          println("")

          println(
            s"early termination 1 : ${dut.io.earlyTerminate1.peek().litValue.toInt.toBinaryString}"
          )
          println(
            s"early termination 2 : ${dut.io.earlyTerminate2.peek().litValue.toInt.toBinaryString}"
          )

          println("")

          println(
            s"min : ${dut.io.maxMin.peek().litValue.toInt.toBinaryString}\n"
          )
        }

        if (
          dut.io.earlyTerminate1.peek().litValue.toInt == 1 ||
          dut.io.earlyTerminate2.peek().litValue.toInt == 1
        ) {
          break
        }

        dut.clock.step(1)
      }
    }

    //
    // Test the results of the above module
    //
    if (
      test1.litValue.toInt < test2.litValue.toInt &&
      dut.io.earlyTerminate1.peek().litValue.toInt == 1 &&
      dut.io.earlyTerminate2.peek().litValue.toInt == 0
    ) {
      print("\n[*] Test result for online comparator 1 (min) was successful.\n");
    } else if (
      test1.litValue.toInt > test2.litValue.toInt &&
      dut.io.earlyTerminate1.peek().litValue.toInt == 0 &&
      dut.io.earlyTerminate2.peek().litValue.toInt == 1
    ) {
        print("\n[*] Test result for online comparator 1 (min) was successful.\n");
      } else {
        print("\n[x] Test result for online comparator 1 (min) was NOT successful!\n");
        assert(false, "Err, test failed")
      }

    //
    // Remove the start bit again
    //
    dut.io.start.poke(0.U)
    }

  }
}
