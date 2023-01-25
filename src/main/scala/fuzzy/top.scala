package fuzzy

import chisel3._
import chisel3.util._

import fuzzy.algorithms.min_max._
import fuzzy.utils._

class FuzzyController(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    vectorCount: Int = DesignConsts.VECTOR_COUNT,
    numberLength: Int = DesignConsts.NUMBER_LENGTH
) extends Module {
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

  val (outResult, outResultValid) =
    MinMaxParallelOnlineComparator(debug, vectorCount)(
      io.in1,
      io.in2,
      false.B,
      io.start
    )

  io.outResult := outResult
  io.outResultValid := outResultValid

}

//-----------------------------------------------

object Main extends App {
  // These lines generate the Verilog output
  println(
    new (chisel3.stage.ChiselStage).emitVerilog(
      new FuzzyController(),
      Array(
        "--emission-options=disableMemRandomization,disableRegisterRandomization",
        "-e", // The intention for this argument (and next argument) is to separate generated files.
        "verilog", // We could also use "sverilog" to generate SystemVerilog files.
        "--target-dir",
        "generated/",
        "--target:fpga"
      )
    )
  )
}
