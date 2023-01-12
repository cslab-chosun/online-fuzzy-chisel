import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.algorithms._
import fuzzy.utils._

class MinMaxSerialRegularComparatorTest extends AnyFlatSpec with
	ChiselScalatestTester {
		"DUT" should "pass" in {
			
			test(new MinMaxSerialRegularComparator(DesignConsts.ENABLE_DEBUG, DesignConsts.VECTOR_COUNT, DesignConsts.NUMBER_LENGTH)) { dut =>

				//
				// First, start with module in an inactive state
				//
				dut.io.start.poke(0.U)
				dut.clock.step(1)
				dut.io.start.poke(1.U)

				for (i <- 0 until DesignConsts.VECTOR_COUNT) {

					if (DesignConsts.ENABLE_DEBUG) {
						println("\n-----------------------------------------------------------------------\n")
					}

					//
					// First test, the state at first should be [0x12, X, X, X, X, X, X, X]
					//
					dut.io.in1.poke(TestingSample.input1_bytes(i))
					dut.io.in2.poke(TestingSample.input2_bytes(i))

					if (DesignConsts.ENABLE_DEBUG) {
						println(s"input 1 : 0x${dut.io.in1.peek().litValue.toInt.toHexString} (${dut.io.in1.peek().litValue.toInt.toBinaryString}), input 2 : 0x${dut.io.in2.peek().litValue.toInt.toHexString} (${dut.io.in2.peek().litValue.toInt.toBinaryString})\n")
					}

					do {
						dut.clock.step(1)
					} while (dut.io.askForNewNumber.peek().litValue.toInt == 0)

				}

				//
				// Test validity
				//
				dut.clock.step(100) // varies based on input length but let it be 100 because it's too enough for this test L)
				if (dut.io.outResultValid.peek().litValue.toInt == 1 && 
					dut.io.outResult.peek().litValue.toInt == TestingSample.input_result) {
					print("\n[*] Test result for min-max serial regular comparator was successful.\n");
				} else {
					print("\n[x] Test result for min-max serial regular comparator was NOT successful!\n");
					assert(false, "Err, test failed")
				}
		}
	}
}