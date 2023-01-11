package fuzzy.algorithms

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

class MinVectorStruct () extends Bundle {

    val selectedInput = Bool()
    val earlyTerminated = Bool()
    val minMaxOutput = UInt(1.W)
    val externalEarlyTermination = Bool()
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
  val outResult = RegInit(0.U(1.W))

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
      outResult := regStorageVec(0).minMaxOutput

      when (currentIteration =/= N.U - 1.U + /* initiation delay */ log2Ceil(N).U + 1.U) {
        for (i <- 0 until iMaxIndex) {

            if (i >= 0 && i <= (math.pow(2, (N/2) - 1).toInt - 2)) {
              // max
                val (selectedInput, earlyTerminated, maxOutput) = 
                     OnlineComparator2(true, false) (
                          io.start, // start bit
                          regStorageVec(2 * i + 1).minMaxOutput,
                          regStorageVec(2 * i + 2).minMaxOutput,
                          regStorageVec(math.ceil((i - 1)/2).toInt).externalEarlyTermination
                          )
                regStorageVec(i).selectedInput := selectedInput
                regStorageVec(i).earlyTerminated := earlyTerminated
                regStorageVec(i).minMaxOutput := maxOutput
              }

            else {
              // min
                val (selectedInput, earlyTerminated, minOutput) = 
                     OnlineComparator2(false, false) (
                          io.start, // start bit
                          io.in1(i - N + 1),
                          io.in2(i - N + 1),
                          regStorageVec(math.ceil((i - 1)/2).toInt).externalEarlyTermination
                          )
                regStorageVec(i).selectedInput := selectedInput
                regStorageVec(i).earlyTerminated := earlyTerminated
                regStorageVec(i).minMaxOutput := minOutput
            }
          }
        } .otherwise {
          state := sFinished
        }
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
