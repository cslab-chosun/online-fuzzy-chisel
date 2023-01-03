
package fuzzy.algorithms

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

class MinMaxTree(VECTOR_LEN : Int = 8) extends Module {

    val io = IO(new Bundle {

    	//
    	// Input signals
    	//
    	val start = Input(Bool())

        val in1 = Input(UInt(8.W))
        val in2 = Input(UInt(8.W))

        //
        // Output signals
        //
        val outResult = Output(UInt(8.W))
    })

    val regMinVec = Reg(Vec(VECTOR_LEN, UInt(8.W)))

    val regBitIndx = RegInit(0.U(3.W)) // maximum input index is 8 => 3-bits
    val regVecIndx = RegInit(0.U(3.W)) // maximum vector index is 8 => 3-bits

    val (selectedInput, earlyTerminated) = Comparator(false)(true.B, io.in1(regBitIndx), io.in2(regBitIndx), false.B /* no external early termination */)

    when (earlyTerminated =/= true.B) {
    	regBitIndx := regBitIndx + 1.U
    } .otherwise {

    	//
    	// Reset the index register for bits
    	//
    	regBitIndx := 0.U

    	when (selectedInput === 0.U) {
    		regMinVec(regVecIndx) := io.in1
    	} .otherwise {
    		regMinVec(regVecIndx) := io.in2
    		regVecIndx := regVecIndx + 1.U
    	}

    	//
    	// add the vector index
    	//
    	regVecIndx := regVecIndx + 1.U
    }

    //
    // Set the output
    //
    io.outResult := regMinVec(0) + regMinVec(7) // test should be removed

}

object MinMaxTree {

  def apply(VECTOR_LEN : Int = 8)(in1 : UInt, in2 : UInt, start : Bool) : UInt = {

    val minMaxTree = Module(new MinMaxTree(VECTOR_LEN))
    val outResult = Wire(UInt(8.W))

    minMaxTree.io.start := start

    minMaxTree.io.in1 := in1
    minMaxTree.io.in2 := in2

    outResult := minMaxTree.io.outResult

    //
    // Return the result
    //
    outResult
  }
}
