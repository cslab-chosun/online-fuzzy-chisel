package fuzzy.algorithms

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

class MinMaxSerialOnlineComparator(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    vectorCount: Int = DesignConsts.VECTOR_COUNT,
    numberLength: Int = DesignConsts.NUMBER_LENGTH
) extends Module {

  //
  // Design constraints
  //
  require(isPow2(vectorCount) == true)
  assert(
    isPow2(vectorCount) == true,
    "err, the input length should be to the power of 2."
  )

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())
    val in1 = Input(
      UInt(numberLength.W)
    ) // we used 7 because the maximum input is between 0-100 (127)
    val in2 = Input(
      UInt(numberLength.W)
    ) // we used 7 because the maximum input is between 0-100 (127)

    //
    // Output signals
    //
    //
    val askForNewNumber = Output(Bool())
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(numberLength.W)
    ) // we used 7 because the maximum input is between 0-100 (127)
  })

  val askForNewNumber = RegInit(false.B)
  val outResultValid = RegInit(false.B)
  val outResult = RegInit(0.U(numberLength.W))

  val regStorageVec = Reg(Vec(vectorCount, UInt(numberLength.W)))

  val regBitIndx = RegInit(
    (vectorCount - 1).U(3.W)
  ) // maximum input index is 8 => 3-bits
  val regVecIndx = RegInit(
    0.U(log2Ceil(vectorCount).W)
  ) // maximum vector index is vectorCount => n-bits
  val regMaxVecIndx = RegInit(
    1.U((log2Ceil(vectorCount)).W)
  ) // because the first index is temporary max, we'll start by comparing the second element

  val compStartBit = io.start & ~askForNewNumber
  val regToEqualNums = RegInit(false.B)

  val sIdle :: sMin :: sMax :: sFinished :: Nil = Enum(4)
  val state = RegInit(sIdle)

  val (selectedInput, earlyTerminated, minOutput) =
    OnlineComparator(debug, false)(
      compStartBit,
      io.in1(regBitIndx),
      io.in2(regBitIndx),
      false.B /* no external early termination */
    )

  val compStartBitMax = WireInit(false.B)

  val input1Max = RegInit(false.B)
  val input2Max = RegInit(false.B)

  val (selectedInputMax, earlyTerminatedMax, minOutputMax) =
    OnlineComparator(debug, true)(
      compStartBitMax,
      input1Max,
      input2Max,
      false.B /* no external early termination */
    )

  //
  // Check for resetting everything
  //
  when(!io.start) {
    askForNewNumber := false.B
    outResultValid := false.B
    outResult := 0.U
    regBitIndx := (vectorCount - 1).U
    regVecIndx := 0.U
    regMaxVecIndx := 1.U
    regToEqualNums := false.B
    state := sIdle
  }

  switch(state) {

    is(sIdle) {
      when(io.start === true.B) {
        state := sMin
      }
    }
    is(sMin) {

      if (debug) {
        printf(
          "dbg, MinMaxTree debug : start : %d, askForNewNumber: %d | compStartBit = %d\n",
          io.start,
          askForNewNumber,
          compStartBit
        )
      }

      askForNewNumber := false.B
      when(
        (earlyTerminated =/= true.B || askForNewNumber === true.B) && regToEqualNums =/= true.B
      ) {
        regBitIndx := regBitIndx - 1.U

        //
        // Check for the last bit
        //
        when(regBitIndx === 0.U) {
          regToEqualNums := true.B
        }

        if (debug) {
          printf(
            "dbg, MinMaxTree debug : earlyTerminated %d, selectedInput : %d | io.in1(%d) = %d, io.in2(%d) = %d\n",
            earlyTerminated,
            selectedInput,
            regBitIndx,
            io.in1(regBitIndx),
            regBitIndx,
            io.in2(regBitIndx)
          )
        }

      }.otherwise {

        //
        // Reset the index register for bits abd also the equality check
        //
        regBitIndx := (vectorCount - 1).U
        regToEqualNums := false.B

        when(selectedInput === 0.U) {
          regStorageVec(regVecIndx) := io.in1

          if (debug) {
            printf("dbg, regStorageVec(%d) - 1 : %x |\n", regVecIndx, io.in1)
          }

        }.otherwise {
          regStorageVec(regVecIndx) := io.in2

          if (debug) {
            printf("dbg, regStorageVec(%d) - 2 : %x |\n", regVecIndx, io.in2)
          }
        }

        //
        // Check whether the minimum section is finished or not
        //
        when(regVecIndx === (vectorCount - 1).U) {
          state := sMax

          //
          // Let the out result (or the temp maximum result be the first element of the storage)
          //
          outResult := regStorageVec(0)

          //
          // Reset the index register for bits and also the equality check
          //
          regBitIndx := (vectorCount - 1).U
          regToEqualNums := false.B

          if (debug) {
            printf(
              "============== Minimum Vector Is Found   ==============\n"
            )
          }

        }

        //
        // add the vector index
        //
        regVecIndx := regVecIndx + 1.U
        askForNewNumber := true.B

      }

      if (debug) {
        printf("=======================================\n")
      }
    }
    is(sMax) {

      //
      // Initial the the starter of the max comparator
      //
      compStartBitMax := true.B

      //
      // Set the input to the max online comparator
      //
      input1Max := outResult(regBitIndx)
      input2Max := regStorageVec(regMaxVecIndx)(regBitIndx)

      //
      // ------------------------------------------------------------------------
      //
      when(earlyTerminatedMax =/= true.B && regToEqualNums =/= true.B) {

        regBitIndx := regBitIndx - 1.U

        //
        // Check for the last bit
        //
        when(regBitIndx === 0.U) {
          regToEqualNums := true.B
        }

        if (debug) {
          printf(
            "dbg, MinMaxTree max debug : earlyTerminated %d, selectedInput : %d | io.in1(%d) = %d, io.in2(%d) = %d\n",
            earlyTerminated,
            selectedInput,
            regBitIndx,
            io.in1(regBitIndx),
            regBitIndx,
            io.in2(regBitIndx)
          )
        }

      }.otherwise {

        //
        // Reset the index register for bits and also the equality check
        //
        regBitIndx := (vectorCount - 1).U

        regToEqualNums := false.B

        //
        // Only swap if the second element is greater than second element
        //
        when(selectedInputMax =/= 0.U) {

          //
          // Current index's maximum number is equ
          //
          outResult := regStorageVec(regMaxVecIndx)

          if (debug) {
            printf(
              "dbg, max regStorageVec(%d) - swap : %x |\n",
              regMaxVecIndx,
              io.in1
            )
          }

        }.otherwise {}

        //
        // Check whether the maximum section is finished or not
        //
        when(regMaxVecIndx === (vectorCount - 1).U) {
          state := sFinished
        }

        //
        // increment the index
        //
        regMaxVecIndx := regMaxVecIndx + 1.U
      }

      //
      // --------------------------------------------------------
      //
    }
    is(sFinished) {

      //
      // Raise the validation result
      //
      outResultValid := true.B
    }
  }

//
// Set the output
//
  io.outResult := outResult
  io.askForNewNumber := askForNewNumber
  io.outResultValid := outResultValid

}

object MinMaxSerialOnlineComparator {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG,
      vectorCount: Int = DesignConsts.VECTOR_COUNT,
      numberLength: Int = DesignConsts.NUMBER_LENGTH
  )(in1: UInt, in2: UInt, start: Bool): (UInt, Bool, Bool) = {

    val minMaxTree = Module(
      new MinMaxSerialOnlineComparator(debug, vectorCount, numberLength)
    )
    val outResult = Wire(UInt(numberLength.W))
    val askForNewNumber = Wire(Bool())
    val outResultValid = Wire(Bool())

    minMaxTree.io.start := start

    minMaxTree.io.in1 := in1
    minMaxTree.io.in2 := in2

    outResult := minMaxTree.io.outResult

    askForNewNumber := minMaxTree.io.askForNewNumber
    outResultValid := minMaxTree.io.outResultValid

    //
    // Return the result
    //
    (outResult, outResultValid, askForNewNumber)
  }
}
