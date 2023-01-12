import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec
import scala.util.control.Breaks._

import fuzzy.components._
import fuzzy.utils._

class ComparatorTest extends AnyFlatSpec with ChiselScalatestTester {
  "DUT" should "pass" in {

    test(new Comparator(DesignConsts.ENABLE_DEBUG, true)) { dut =>

      //
      // First, start with module in an inactive state
      //
      dut.io.start.poke(0.U)
      dut.clock.step(1)

      //
      // Perform the first test
      //
      val test1 = Integer.parseInt("010 0111".replace(" ", ""), 2).U
      val test2 = Integer.parseInt("000 0111".replace(" ", ""), 2).U

      //
      // Start the comparator
      //
      dut.io.start.poke(1.U)

      dut.io.in1.poke(test1)
      dut.io.in2.poke(test2)

      dut.clock.step(1)

      //
      // Test the results of the above module
      //
      if (
        test1.litValue.toInt > test2.litValue.toInt &&
        dut.io.maxMin.peek().litValue.toInt == 0
      ) {
        println("First test is passed!")
      } else if (
        test1.litValue.toInt < test2.litValue.toInt &&
        dut.io.maxMin.peek().litValue.toInt == 1
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

    test(new Comparator(false, false)) { dut =>

      //
      // First, start with module in an inactive state
      //
      dut.io.start.poke(0.U)
      dut.clock.step(1)

      //
      // Perform the first test
      //
      val test1 = Integer.parseInt("010 0111".replace(" ", ""), 2).U
      val test2 = Integer.parseInt("000 0111".replace(" ", ""), 2).U

      //
      // Start the comparator
      //
      dut.io.start.poke(1.U)

      dut.io.in1.poke(test1)
      dut.io.in2.poke(test2)

      dut.clock.step(1)

      //
      // Test the results of the above module
      //
      if (
        test1.litValue.toInt < test2.litValue.toInt &&
        dut.io.maxMin.peek().litValue.toInt == 0
      ) {
        println("Second test is passed!")
      } else if (
        test1.litValue.toInt > test2.litValue.toInt &&
        dut.io.maxMin.peek().litValue.toInt == 1
      ) {
        println("Second test is passed!")
      } else {
        println("Second test is NOT passed!")
      }

      //
      // Remove the start bit again
      //
      dut.io.start.poke(0.U)
    }
  }
}