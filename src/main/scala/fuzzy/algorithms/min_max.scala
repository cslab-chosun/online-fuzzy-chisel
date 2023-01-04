package fuzzy.algorithms

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

class MinMaxTree(VECTOR_LEN : Int = 8, debug : Boolean = false) extends Module {

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
        //
        val askForNewNumber = Output(Bool())
        val outResult = Output(UInt(8.W))
    })

    val askForNewNumber = RegInit(false.B) // maximum input index is 8 => 3-bits

    val regMinVec = Reg(Vec(VECTOR_LEN, UInt(8.W)))

    val regBitIndx = RegInit(0.U(3.W)) // maximum input index is 8 => 3-bits
    val regVecIndx = RegInit(0.U(3.W)) // maximum vector index is 8 => 3-bits
    val compStartBit = io.start & ~askForNewNumber

val (selectedInput, earlyTerminated) = Comparator(false, true)(compStartBit, io.in1(regBitIndx), io.in2(regBitIndx), false.B /* no external early termination */)

when (io.start === true.B){

    if (debug) {
         printf("dbg, MinMaxTree debug : start : %d, askForNewNumber: %d | compStartBit = %d\n", io.start, askForNewNumber, compStartBit)
    }

    askForNewNumber := false.B
    when (earlyTerminated =/= true.B || askForNewNumber === true.B) {
      regBitIndx := regBitIndx + 1.U

      if (debug) {
         printf("dbg, MinMaxTree debug : earlyTerminated %d, selectedInput : %d | io.in1(%d) = %d, io.in2(%d) = %d\n", 
            earlyTerminated, selectedInput, regBitIndx, io.in1(regBitIndx), regBitIndx, io.in2(regBitIndx))         
        }

     } .otherwise {

      //
      // Reset the index register for bits
      //
      regBitIndx := 0.U

      when (selectedInput === 0.U) {
         regMinVec(regVecIndx) := io.in1

         if (debug) {
             printf("dbg, regMinVec(%d) - 1 : %x |\n", regVecIndx, io.in1) 
         }

     } .otherwise {
         regMinVec(regVecIndx) := io.in2

         if (debug) {
             printf("dbg, regMinVec(%d) - 2 : %x |\n", regVecIndx, io.in2) 
         }
     }

     //
     // add the vector index
     //
     regVecIndx := regVecIndx + 1.U
     askForNewNumber := true.B
    }

    printf("=======================================\n")

}

//
// Set the output
//
io.outResult := regMinVec(0) + regMinVec(1) + regMinVec(2) + regMinVec(3) + regMinVec(4) + regMinVec(5) + regMinVec(6) + regMinVec(7)   // test should be removed
io.askForNewNumber := askForNewNumber

}

object MinMaxTree {

  def apply(VECTOR_LEN : Int = 8, debug : Boolean = false)(in1 : UInt, in2 : UInt, start : Bool) : UInt = {

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
