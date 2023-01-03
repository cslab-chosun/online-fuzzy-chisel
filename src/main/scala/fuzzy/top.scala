
package fuzzy

import chisel3._
import chisel3.util._

import fuzzy.algorithms._
import fuzzy.utils._

class FuzzyController() extends Module {
  val io = IO(new Bundle {

    val in1 = Input(UInt(8.W))
    val in2 = Input(UInt(8.W))

    val max = Output(UInt(8.W))
  })

    val minMaxTree =  MinMaxTree(MinMaxTreeConsts.VECTOR_LEN)(io.in1, io.in2, true.B)

    io.max := minMaxTree
}

//-----------------------------------------------

object Main extends App {
  // These lines generate the Verilog output
  println(
    new (chisel3.stage.ChiselStage).emitVerilog(
      new FuzzyController(),
      Array(
        "--emission-options=disableMemRandomization,disableRegisterRandomization"
      )
    )
  )
}