
package fuzzy

import chisel3._
import chisel3.util._
import crypto.aes._

class FuzzyController() extends Module {
  val io = IO(new Bundle {

    val earlyTerminate = Input(Bool())
    val in1 = Input(UInt(1.W))
    val in2 = Input(UInt(1.W))

    val max = Output(UInt(1.W))
  })

    val comparator_max =  Comparator(true)(true.B, in1, in2, earlyTerminate)
    io.max := comparator_max
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