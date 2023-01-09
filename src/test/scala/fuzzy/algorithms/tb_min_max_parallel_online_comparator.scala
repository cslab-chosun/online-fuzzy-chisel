import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.algorithms._

class MinMaxParallelOnlineComparatorTest extends AnyFlatSpec with
	ChiselScalatestTester {
		"DUT" should "pass" in {

			val VecLen : Int = 8

			test(new MinMaxParallelOnlineComparator(VecLen, false)) { dut =>

				//
				// First, start with module in an inactive state
				//
				dut.io.start.poke(0.U)
				dut.clock.step(1)

				println("\n-----------------------------------------------------------------------\n")

				//
				// First test, the state at first stage (min) should be [0x12, 0x2, 0x55, 0x27, 0x0, 0x0, 0x1, 0x17]
				//
				val input1_bytes = Array(0x12.U, 0x65.U, 0x55.U, 0x78.U, 0x18.U, 0x0.U, 0x1.U, 0x45.U)
				val input2_bytes = Array(0x17.U, 0x2.U, 0x7a.U, 0x27.U, 0x0.U, 0x0.U, 0x29.U, 0x17.U)
				
  				//
  				// Feed the online comparator
  				//
  				for (i <- 0 until 7) { // because only 7 bits for input/output is valid
  					for (j <- 0 until VecLen) {

	    				dut.io.in1(j).poke(input1_bytes(j)(i))
	    				dut.io.in2(j).poke(input2_bytes(j)(i))

						//
						// Show (just) the inputs for two arrays 
						//
						println(s"\n\n=================================================== \n")
						println(s"\ninput 1 : \n")

						for (i <- 0 until VecLen) {
		    				print(s"0b${dut.io.in1(i).peek().litValue.toInt.toHexString} - ")
		  				}

						println(s"\n\ninput 2 : \n")

						for (i <- 0 until VecLen) {
		    				print(s"0b${dut.io.in2(i).peek().litValue.toInt.toHexString} - ")
		  				}

						dut.io.start.poke(1.U)
					}
  				}

				println("\n-----------------------------------------------------------------------\n")

				//
				// Stepping clock for further tests
				//
				dut.clock.step(100)
		}
	}
}