package fuzzy.algorithms

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

class MinVectorStruct () extends Bundle {

    val selectedInput = Bool()
    val earlyTerminated = Bool()
    val minMaxOutput = UInt(1.W)
    val earlyTerminated1 = Bool()
    val earlyTerminated2 = Bool()
}

class MinMaxParallelOnlineComparator(N : Int = 8, debug : Boolean = false)
    extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val in1 = Input(
      Vec(N, UInt(1.W))
    ) // This is a vector for the first bit of each element
    val in2 = Input(
      Vec(N, UInt(1.W))
    ) // This is a vector for the first bit of each element

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(1.W)
    ) 
  })

  val iMaxIndex = math.pow(2, N/2).toInt - 1

  val outResultValid = RegInit(false.B)

  val regStorageVec = Reg(Vec(iMaxIndex, new MinVectorStruct)) 

  val sIdle :: sStarted :: sFinished :: Nil = Enum(3)
  val state = RegInit(sIdle)

  val currentIteration = RegInit(0.U(log2Ceil(N + log2Ceil(N) + 1).W))

  switch(state) {

    is(sIdle) {

      when (io.start === true.B) {
        state := sStarted
        printf("=============================================maximum index : %d\n", iMaxIndex.U)
      }
    }
    is(sStarted) {
      
      currentIteration := currentIteration + 1.U

      // when (currentIteration =/= N.U - 1.U + /* initiation delay */ log2Ceil(N).U + 1.U /* should be removed*/ + 18.U) {
        for (i <- 0 until iMaxIndex) {

            if (i >= 0 && i <= (math.pow(2, (N/2) - 1).toInt - 2)) {
              // max
                val (selectedInput, earlyTerminate1, earlyTerminate2, maxOutput) = 
                     OnlineComparator2(true, false) (
                          io.start, // start bit
                          regStorageVec(2 * i + 1).minMaxOutput,
                          regStorageVec(2 * i + 2).minMaxOutput,
                          if (i % 2 != 0) regStorageVec(math.ceil((i - 1)/2).toInt).earlyTerminated1 else regStorageVec(math.ceil((i - 1)/2).toInt).earlyTerminated2
                          )
                regStorageVec(i).selectedInput := selectedInput
                regStorageVec(i).earlyTerminated1 := earlyTerminate1
                regStorageVec(i).earlyTerminated2 := earlyTerminate2
                regStorageVec(i).minMaxOutput := maxOutput

                if (debug) {
                  printf("max comparator : %d\n", i.U);
                  printf("\tin1 : regStorageVec(%d).minMaxOutput = %d\n", (2 * i + 1).U, regStorageVec(2 * i + 1).minMaxOutput);
                  printf("\tin2 : regStorageVec(%d).minMaxOutput = %d\n", (2 * i + 2).U, regStorageVec(2 * i + 2).minMaxOutput);
                  if (i % 2 != 0) {
                    printf("\tET : regStorageVec(%d).earlyTerminated1\n", (math.ceil((i - 1)/2).toInt).U);
                  } else{
                    printf("\tET : regStorageVec(%d).earlyTerminated2\n", (math.ceil((i - 1)/2).toInt).U);
                  }
                }
              }
            else {
              // min
                val (selectedInput, earlyTerminate1, earlyTerminate2, minOutput) = 
                     OnlineComparator2(false, false) (
                          io.start, // start bit
                          io.in1(i - N + 1),
                          io.in2(i - N + 1),
                          if (i % 2 != 0) regStorageVec(math.ceil((i - 1)/2).toInt).earlyTerminated1 else regStorageVec(math.ceil((i - 1)/2).toInt).earlyTerminated2
                          )
                regStorageVec(i).selectedInput := selectedInput
                regStorageVec(i).earlyTerminated1 := earlyTerminate1
                regStorageVec(i).earlyTerminated2 := earlyTerminate2
                regStorageVec(i).minMaxOutput := minOutput


                if (debug) {
                  printf("max comparator : %d\n", i.U);
                  printf("\tin1 : io.in1(%d) = %d\n", (i - N + 1).U, io.in1(i - N + 1));
                  printf("\tin2 : io.in2(%d) = %d\n", (i - N + 1).U, io.in2(i - N + 1));
                  if (i % 2 != 0) {
                    printf("\tET : regStorageVec(%d).earlyTerminated1\n", (math.ceil((i - 1)/2).toInt).U);
                  } else{
                    printf("\tET : regStorageVec(%d).earlyTerminated2\n", (math.ceil((i - 1)/2).toInt).U);
                  }
                }
              








            }
          }
        /*} .otherwise {
          state := sFinished
        }*/
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
  io.outResult := regStorageVec(0).minMaxOutput
  io.outResultValid := outResultValid

}

object MinMaxParallelOnlineComparator {

  def apply(
      VECTOR_LEN: Int = 8,
      debug: Boolean = false
  )(in1: Vec[UInt], in2: Vec[UInt], start: Bool): (UInt, Bool) = {

    val minMaxTree = Module(new MinMaxParallelOnlineComparator(VECTOR_LEN, debug))
    val outResult = Wire(UInt(8.W))
    val outResultValid = Wire(Bool())

    minMaxTree.io.start := start

    minMaxTree.io.in1 := in1
    minMaxTree.io.in2 := in2

    outResult := minMaxTree.io.outResult

    outResultValid := minMaxTree.io.outResultValid

    //
    // Return the result
    //
    (outResult, outResultValid)
  }
}
