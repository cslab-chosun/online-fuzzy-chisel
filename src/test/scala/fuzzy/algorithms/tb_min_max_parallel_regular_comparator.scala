import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.algorithms._

class MinMaxParallelRegularComparatorTest extends AnyFlatSpec with
	ChiselScalatestTester {
		"DUT" should "pass" in {

			val VecLen : Int = 8
			
			test(new MinMaxParallelRegularComparator(VecLen, false)) { dut =>

				//
				// First, start with module in an inactive state
				//
				dut.io.start.poke(0.U)
				dut.clock.step(1)

				println("\n-----------------------------------------------------------------------\n")

				//
				// First test, the state at first stage (min) should be [0x12, 0x2, 0x55, 0x27, 0x0, 0x0, 0x1, 0x17]
				//
				val input1_bytes = Array(0x12, 0x65, 0x55, 0x78, 0x18, 0x0, 0x1, 0x45)
				val input2_bytes = Array(0x17, 0x2, 0x7a, 0x27, 0x0, 0x0, 0x29, 0x17)
				
				println(s"input 1 : \n")

				for (i <- 0 until VecLen) {
    				dut.io.in1(i).poke(input1_bytes(i))
    				print(s"0x${dut.io.in1(i).peek().litValue.toInt.toHexString}, ")
  				}

				println(s"\n\ninput 2 : \n")

				for (i <- 0 until VecLen) {
    				dut.io.in2(i).poke(input2_bytes(i))
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