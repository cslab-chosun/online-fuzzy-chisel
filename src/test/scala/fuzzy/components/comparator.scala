import chisel3._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.components._

class AesTestExample extends AnyFlatSpec with
	ChiselScalatestTester {
		"DUT" should "pass" in {

			test(new Comparator(true)) { dut =>

				//
				// First, start with module in an inactive state
				//
				dut.io.start.poke(0.U)
				dut.clock.step(1)

				//
				// Perform the first test
				//
				val test1 = Integer.parseInt("1000 0000 0000 0001".replace(" ", ""), 2).U
				val test2 = Integer.parseInt("1000 0000 0000 0101".replace(" ", ""), 2).U

				//
				// Start the comparator
				//
				dut.io.start.poke(1.U)
				
				for (i <- 0 until 16){

					dut.io.in1.poke(test1(i))
					dut.io.in2.poke(test2(i))

					dut.clock.step(1)

					println("\nround : %d", i)

					println("early terminate 1 : %d", dut.io.earlyTerminate1.peek())
					println("early terminate 2 : %d", dut.io.earlyTerminate2.peek())

					println("max : %d", dut.io.max.peek())

				 	println("\n =================================")
				}


				// val cipherText = dut.io.cipher.peek()

				// println("cipher text: ")

				// for (i <- 0 until cipherText.length){

				//	//println(dut.io.cipher.peek().toString)
				// 	print(cipherText(i).toString)
				// }

				//printf("\n")

				//printf("key: %x\n", dut.io.key.peek())
				//printf("text: %x\n", dut.io.cipher.peek())
				//printf("cipher text: %x\n", dut.io.cipher.peek())
		}
	}
}