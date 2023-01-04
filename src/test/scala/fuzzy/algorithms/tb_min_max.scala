import chisel3._
import chisel3.util._
import chiseltest._
import org.scalatest.flatspec.AnyFlatSpec

import fuzzy.algorithms._

class MinMaxTester extends AnyFlatSpec with
	ChiselScalatestTester {
		"DUT" should "pass" in {
			
			test(new MinMaxTree(8, true)) { dut =>

				//
				// First, start with module in an inactive state
				//
				dut.io.start.poke(0.U)
				dut.clock.step(1) 

				//
				// First test, the state at firstshould be [0x12, X, X, X, X, X, X, X]
				//
				dut.io.in1.poke(0x12.U)
				dut.io.in2.poke(0x17.U)

				dut.io.start.poke(1.U)

				do {
					dut.clock.step(1)
				} while (dut.io.askForNewNumber.peek().litValue.toInt == 0);

				//
				// First test, the state at firstshould be [0x12, 0x2, X, X, X, X, X, X]
				//
				dut.io.in1.poke(0x65.U)
				dut.io.in2.poke(0x2.U)

				do {
					dut.clock.step(1)
				} while (dut.io.askForNewNumber.peek().litValue.toInt == 0);

				//
				// First test, the state at firstshould be [0x12, 0x2, 0x55, X, X, X, X, X]
				//
				dut.io.in1.poke(0x55.U)
				dut.io.in2.poke(0x85.U)

				do {
					dut.clock.step(1)
				} while (dut.io.askForNewNumber.peek().litValue.toInt == 0);

				//
				// First test, the state at firstshould be [0x12, 0x2, 0x55, 0x27, X, X, X, X]
				//
				dut.io.in1.poke(0x78.U)
				dut.io.in2.poke(0x27.U)

				do {
					dut.clock.step(1)
				} while (dut.io.askForNewNumber.peek().litValue.toInt == 0);

				//
				// First test, the state at firstshould be [0x12, 0x2, 0x55, 0x27, 0x0, X, X, X]
				//
				dut.io.in1.poke(0x18.U)
				dut.io.in2.poke(0x0.U)

				do {
					dut.clock.step(1)
				} while (dut.io.askForNewNumber.peek().litValue.toInt == 0);

				//
				// First test, the state at firstshould be [0x12, 0x2, 0x55, 0x27, 0x0, 0x0, X, X]
				//
				dut.io.in1.poke(0x0.U)
				dut.io.in2.poke(0x0.U)

				do {
					dut.clock.step(1)
				} while (dut.io.askForNewNumber.peek().litValue.toInt == 0);

				//
				// First test, the state at firstshould be [0x12, 0x2, 0x55, 0x27, 0x0, 0x0, 0x1, X]
				//
				dut.io.in1.poke(0x1.U)
				dut.io.in2.poke(0x29.U)

				do {
					dut.clock.step(1)
				} while (dut.io.askForNewNumber.peek().litValue.toInt == 0);

				//
				// First test, the state at firstshould be [0x12, 0x2, 0x55, 0x27, 0x0, 0x0, 0x1, 0x17]
				//
				dut.io.in1.poke(0x45.U)
				dut.io.in2.poke(0x17.U)

				do {
					dut.clock.step(1)
				} while (dut.io.askForNewNumber.peek().litValue.toInt == 0);
		}

	}
}