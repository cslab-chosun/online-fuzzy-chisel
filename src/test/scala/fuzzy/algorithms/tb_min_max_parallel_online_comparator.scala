import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.algorithms._
import fuzzy.utils._

class MinMaxParallelOnlineComparatorTest
    extends AnyFlatSpec
    with ChiselScalatestTester {
  "DUT" should "pass" in {

    test(
      new MinMaxParallelOnlineComparator(
        DesignConsts.ENABLE_DEBUG,
        DesignConsts.VECTOR_COUNT
      )
    ) { dut =>

      //
      // First, start with module in an inactive state
      //
      dut.io.start.poke(0.U)
      dut.clock.step(1)

      //
      // Activate the start bit
      //
      dut.io.start.poke(1.U)

      //
      // Disable the exported early termination
      //
      dut.io.exportedEarlyTermination.poke(0.U)
      
      //
      // Feed the online comparator
      //
      for (i <- 0 until DesignConsts.NUMBER_LENGTH) {

        if (DesignConsts.ENABLE_DEBUG) {
          println(s"\n\n=================================================== \n")
          println(s"\ninput 1 : \n")
        }

        for (j <- 0 until DesignConsts.VECTOR_COUNT) {

          dut.io
            .in1(j)
            .poke(
              TestingSample.input1_bytes(j)(DesignConsts.NUMBER_LENGTH - i - 1)
            )

          if (DesignConsts.ENABLE_DEBUG) {
            print(s"0b${dut.io.in1(j).peek().litValue.toInt.toHexString} - ")
          }
        }

        if (DesignConsts.ENABLE_DEBUG) {
          println(s"\ninput 2 : \n")
        }

        for (j <- 0 until DesignConsts.VECTOR_COUNT) {

          dut.io
            .in2(j)
            .poke(
              TestingSample.input2_bytes(j)(DesignConsts.NUMBER_LENGTH - i - 1)
            )

          if (DesignConsts.ENABLE_DEBUG) {
            print(s"0b${dut.io.in2(j).peek().litValue.toInt.toHexString} - ")
          }
        }

        if (DesignConsts.ENABLE_DEBUG) {
          print(s"\n\n")
        }

        //
        // One clock step to handle the results
        //
        dut.clock.step(1)
      }

      //
      // Stepping clock for further tests
      //
      dut.clock.step(100)
    }
  }
}
