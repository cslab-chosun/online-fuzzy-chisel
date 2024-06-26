import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.algorithms.min_max._
import fuzzy.utils._
import fuzzy.utils.file._

class MinMaxParallelRegularComparatorTest
    extends AnyFlatSpec
    with ChiselScalatestTester {
  "DUT" should "pass" in {

    test(
      new MinMaxParallelRegularComparator(
        DesignConsts.ENABLE_DEBUG,
        DesignConsts.VECTOR_COUNT,
        DesignConsts.NUMBER_LENGTH
      )
    ) { dut =>
      for (loop <- 0 until DesignConsts.MULTIPLE_TEST) {

        //
        // Get the testing vector
        //
        val input1_bytes = FileRead(
          DesignConsts.TEST_FILE_PATH,
          " ",
          loop * 3 + 0
        ).map(_.U)

        val input2_bytes = FileRead(
          DesignConsts.TEST_FILE_PATH,
          " ",
          loop * 3 + 1
        ).map(_.U)

        val input_result = FileRead(
          DesignConsts.TEST_FILE_PATH,
          " ",
          loop * 3 + 2
        )(0)

        //
        // First, start with module in an inactive state
        //
        dut.io.start.poke(0.U)
        dut.clock.step(1)

        if (DesignConsts.ENABLE_DEBUG) {
          println(
            "\n-----------------------------------------------------------------------\n"
          )
          println(s"input 1 : \n")
        }

        for (i <- 0 until DesignConsts.VECTOR_COUNT) {
          dut.io.in1(i).poke(input1_bytes(i))

          if (DesignConsts.ENABLE_DEBUG) {
            print(s"0x${dut.io.in1(i).peek().litValue.toInt.toHexString}, ")
          }
        }

        if (DesignConsts.ENABLE_DEBUG) {
          println(s"\n\ninput 2 : \n")
        }

        for (i <- 0 until DesignConsts.VECTOR_COUNT) {
          dut.io.in2(i).poke(input2_bytes(i))

          if (DesignConsts.ENABLE_DEBUG) {
            print(s"0x${dut.io.in2(i).peek().litValue.toInt.toHexString}, ")
          }
        }

        dut.io.start.poke(1.U)

        do {
          dut.clock.step(1)
        } while (dut.io.outResultValid.peek().litValue.toInt == 0)

        if (DesignConsts.ENABLE_DEBUG) {
          println(
            "\n-----------------------------------------------------------------------\n"
          )
        }

        //
        // Test validity
        //
        if (
          dut.io.outResultValid.peek().litValue.toInt == 1 &&
          dut.io.outResult.peek().litValue.toInt == input_result
        ) {
          print(
            "\n[*] Test result for min-max parallel regular comparator was successful.\n"
          );
        } else {
          print(
            "\n[x] Test result for min-max parallel regular comparator was NOT successful!\n"
          );
          assert(false, "Err, test failed")
        }

        //
        // Stepping clock for further tests
        //
        dut.clock.step(10)
      }
    }
  }
}
