package fuzzy.components

import chisel3._
import chisel3.util._

class Comparator(isMax : Boolean = true) extends Module {

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
		val max_min = Output(UInt(1.W))
    })

      val sIdle :: sInit :: Nil = Enum(2)
  	  val state = RegInit(sIdle)
  	  val startRisingEdge = io.start & !RegNext(io.start)

  	  val earlyTerminate1 = RegInit(false.B)
      val earlyTerminate2 = RegInit(false.B)
      val max_min_output = WireInit(0.U(1.W))


  	  switch(state) {

  		is(sIdle){ 

  			when (startRisingEdge === true.B) {
  				state := sInit
  			}
   		}
		is(sInit){

			when (io.earlyTerminate === true.B) {

				earlyTerminate1 := true.B
				earlyTerminate2 := true.B

				state := sIdle

			} .elsewhen (io.in1 === 1.U && io.in2 === 0.U) {

				if (isMax == true) {
					earlyTerminate1 := true.B
					earlyTerminate2 := false.B
					max_min_output := io.in1
				}
				else {

					earlyTerminate1 := false.B
					earlyTerminate2 := true.B
					max_min_output := io.in2
				}

				state := sIdle

			} .elsewhen (io.in1 === 0.U && io.in2 === 1.U) {

				if (isMax == true) {
					earlyTerminate1 := false.B
					earlyTerminate2 := true.B
					max_min_output := io.in2
				}
				else {

					earlyTerminate1 := true.B
					earlyTerminate2 := false.B
					max_min_output := io.in1
				}
				
				state := sIdle

			} .otherwise {

				//
				// the greater value is not found yet as 
				// the values are equal (1 == 1) or (0 == 0)
				//
				max_min_output := io.in1 // the io.in1 and io.in2 are the same

				earlyTerminate1 := false.B
				earlyTerminate1 := false.B

				state := sInit // not needed
			}
   		}
	}

	//
	// Connect the outputs
	//
	io.earlyTerminate1 := earlyTerminate1
	io.earlyTerminate2 := earlyTerminate2

	io.max_min := max_min_output
}

object Comparator {

  def apply(isMax : Boolean = true)(start : Bool, input1 : UInt, input2 : UInt, earlyTerminatation : Bool): UInt = {

    val comparator_module = Module(new Comparator(isMax))

    val earlyTerminate1 = WireInit(false.B)
    val earlyTerminate2 = WireInit(false.B)

    val max_min_output = Wire(UInt(1.W))

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


    max_min_output := comparator_module.io.max_min

    //
    // Return the maximum input
    //
    max_min_output
  }
}
