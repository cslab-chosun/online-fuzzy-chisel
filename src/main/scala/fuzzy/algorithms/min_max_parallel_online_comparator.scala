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

class MinMaxParallelOnlineComparator(debug : Boolean = DesignConsts.ENABLE_DEBUG, vectorCount : Int = DesignConsts.VECTOR_COUNT)
    extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val in1 = Input(
      Vec(vectorCount, UInt(1.W))
    ) // This is a vector for the first bit of each element
    val in2 = Input(
      Vec(vectorCount, UInt(1.W))
    ) // This is a vector for the first bit of each element

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(1.W)
    ) 
  })

  val iMaxIndex = math.pow(2, vectorCount/2).toInt - 1

  val outResultValid = RegInit(false.B)

  val regStorageVec = Reg(Vec(iMaxIndex, new MinVectorStruct)) 

  val sStarted :: sFinished :: Nil = Enum(2)
  val state = RegInit(sStarted)

  val currentIteration = RegInit(0.U(log2Ceil(vectorCount + log2Ceil(vectorCount) + 1).W))


  when (io.start === true.B) {

    switch(state) {

      is(sStarted) {
        
        currentIteration := currentIteration + 1.U

          when (currentIteration =/= vectorCount.U - 1.U + /* initiation delay */ log2Ceil(vectorCount).U) {

              when (currentIteration === log2Ceil(vectorCount).U) {
                outResultValid := true.B
              }
          
              for (i <- 0 until iMaxIndex) {

                  if (i >= 0 && i <= (math.pow(2, (vectorCount/2) - 1).toInt - 2)) {
                    // max
                      val (selectedInput, earlyTerminate1, earlyTerminate2, maxOutput) = 
                           OnlineComparator2(debug, true) (
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
                           OnlineComparator2(debug, false) (
                                io.start, // start bit
                                io.in1(i - vectorCount + 1),
                                io.in2(i - vectorCount + 1),
                                if (i % 2 != 0) regStorageVec(math.ceil((i - 1)/2).toInt).earlyTerminated1 else regStorageVec(math.ceil((i - 1)/2).toInt).earlyTerminated2
                                )
                      regStorageVec(i).selectedInput := selectedInput
                      regStorageVec(i).earlyTerminated1 := earlyTerminate1
                      regStorageVec(i).earlyTerminated2 := earlyTerminate2
                      regStorageVec(i).minMaxOutput := minOutput

                      if (debug) {
                        printf("max comparator : %d\n", i.U);
                        printf("\tin1 : io.in1(%d) = %d\n", (i - vectorCount + 1).U, io.in1(i - vectorCount + 1));
                        printf("\tin2 : io.in2(%d) = %d\n", (i - vectorCount + 1).U, io.in2(i - vectorCount + 1));
                        if (i % 2 != 0) {
                          printf("\tET : regStorageVec(%d).earlyTerminated1\n", (math.ceil((i - 1)/2).toInt).U);
                        } else{
                          printf("\tET : regStorageVec(%d).earlyTerminated2\n", (math.ceil((i - 1)/2).toInt).U);
                        }
                      }
                  }
                }
          } .otherwise {
            state := sFinished
            outResultValid := false.B
          }
      }
      is(sFinished) {

        //
        // Raise the validation result
        //
        outResultValid := false.B
      }
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
      debug: Boolean = DesignConsts.ENABLE_DEBUG,
      vectorCount: Int = DesignConsts.VECTOR_COUNT
  )(in1: Vec[UInt], in2: Vec[UInt], start: Bool): (UInt, Bool) = {

    val minMaxTree = Module(new MinMaxParallelOnlineComparator(debug, vectorCount))
    val outResult = Wire(UInt(1.W))
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
