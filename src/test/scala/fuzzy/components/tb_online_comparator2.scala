import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import scala.util.control.Breaks._

import fuzzy.components._
import fuzzy.utils._

class OnlineComparator2Test extends AnyFlatSpec with ChiselScalatestTester {
  "DUT" should "pass" in {

    test(new OnlineComparator2(DesignConsts.ENABLE_DEBUG, true)) { dut =>

      //
      // First, start with module in an inactive state
      //
      dut.io.start.poke(0.U)
      dut.clock.step(1)

      //
      // Perform the first test
      //
      val test1 = Integer.parseInt("1000 1010 0010 0111".replace(" ", ""), 2).U
      val test2 = Integer.parseInt("1000 1010 0000 0111".replace(" ", ""), 2).U

      //
      // Start the comparator
      //
      dut.io.start.poke(1.U)
      breakable {

        for (i <- 0 until test1.getWidth) {

          println(
            "================================================================\n"
          )

          dut.io.in1.poke(test1(log2Ceil(test1.litValue.toInt) - i - 1))
          dut.io.in2.poke(test2(log2Ceil(test2.litValue.toInt) - i - 1))

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
      dut.clock.step(50)

      if (
        test1.litValue.toInt > test2.litValue.toInt &&
        dut.io.earlyTerminate1.peek().litValue.toInt == 1 &&
        dut.io.earlyTerminate2.peek().litValue.toInt == 0
      ) {
        println("First test is passed!")
      } else if (
        test1.litValue.toInt < test2.litValue.toInt &&
        dut.io.earlyTerminate1.peek().litValue.toInt == 0 &&
        dut.io.earlyTerminate2.peek().litValue.toInt == 1
      ) {
        println("First test is passed!")
      } else {
        println("First test is NOT passed!")
      }

      //
      // Remove the start bit again
      //
      dut.io.start.poke(0.U)
    }
  }
}