import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.algorithms._
import fuzzy.utils._

class MinMaxParallelRegularComparatorTest extends AnyFlatSpec with
	ChiselScalatestTester {
		"DUT" should "pass" in {
			
			test(new MinMaxParallelRegularComparator(DesignConsts.ENABLE_DEBUG, DesignConsts.VECTOR_COUNT, DesignConsts.NUMBER_LENGTH)) { dut =>

				//
				// First, start with module in an inactive state
				//
				dut.io.start.poke(0.U)
				dut.clock.step(1)

				println("\n-----------------------------------------------------------------------\n")
				
				println(s"input 1 : \n")

				for (i <- 0 until DesignConsts.VECTOR_COUNT) {
    				dut.io.in1(i).poke(TestingSample.input1_bytes(i))
    				print(s"0x${dut.io.in1(i).peek().litValue.toInt.toHexString}, ")
  				}

				println(s"\n\ninput 2 : \n")

				for (i <- 0 until DesignConsts.VECTOR_COUNT) {
    				dut.io.in2(i).poke(TestingSample.input2_bytes(i))
    				print(s"0x${dut.io.in2(i).peek().litValue.toInt.toHexString}, ")
  				}

				dut.io.start.poke(1.U)
				
				do {
					dut.clock.step(1)
				} while (dut.io.outResultValid.peek().litValue.toInt == 0)
				
				println("\n-----------------------------------------------------------------------\n")

				//
				// Stepping clock for further tests
				//
				dut.clock.step(100)
		}
	}
}