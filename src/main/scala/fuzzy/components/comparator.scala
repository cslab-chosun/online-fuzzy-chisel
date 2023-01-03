package fuzzy.components

import chisel3._
import chisel3.util._

class Comparator(isGreater : Boolean = true) extends Module {

    val io = IO(new Bundle {

    	//
    	// Input signals
    	//
    	val start = Input(Bool())

        val earlyTerminate = Input(Bool())
        val in1 = Input(UInt(1.W))
        val in2 = Input(UInt(1.W))

		//
		// Output signals
		//
		val earlyTerminate1 = Output(Bool())
		val earlyTerminate2 = Output(Bool())
		val max = Output(UInt(1.W))
    })

      val sIdle :: sInit :: Nil = Enum(3)
  	  val state = RegInit(sIdle)
  	  val startRisingEdge = start & !RegNext(start)

  	  switch(state) {

  		is(sIdle){ 
  			when (start === true.B) {
  				state := sInit
  			}
   		}
		is(sInit){
			when (earlyTerminate === true.B) {

				io.earlyTerminate1 := true.B
				io.earlyTerminate2 := true.B

				state := sIdle

			} .elsewhen (in1 === 1.U && in2 === 0.U) {

				io.earlyTerminate1 = true.B
				io.earlyTerminate2 = false.B

				state := sIdle

			} .elsewhen (in1 === 0.U && in2 === 1.U) {

				io.earlyTerminate1 = false.B
				io.earlyTerminate2 = true.B

				state := sIdle

			} .otherwise {
				
				//
				// the greater value is not found yet as 
				// the values are equal (1 == 1) or (0 == 0)
				//
				state := sInit // not needed
			}
   		}
	}



}

object Comparator {

  def apply(isGreater : Boolean = true)(start : Bool(), input1 : UInt(1.W), input2 : UInt(1.W), earlyTerminatation : Bool()): UInt(1.W) = {

    val comparator_module = Module(new Comparator(isGreater))

    val earlyTerminate1 = Bool()
    val earlyTerminate2 = Bool()

    val max_input = UInt(1.W)

    //
    // Configure the input signals
    //
    comparator_module.io.in1 := input1
    comparator_module.io.in2 := input2

    comparator_module.io.earlyTerminate := earlyTerminatation
    comparator_module.io.start := start

    //
    // Configure the output signals
    //
    earlyTerminate1 := comparator_module.io.earlyTerminate1
    earlyTerminate2 := comparator_module.io.earlyTerminate2


    max_input := comparator_module.io.max

    //
    // Return the maximum input
    //
    max_input
  }
}
