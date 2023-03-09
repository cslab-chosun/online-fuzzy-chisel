package fuzzy.algorithms.implementations

import chisel3._
import chisel3.util._

import scala.collection.immutable.ListMap
import scala.collection.mutable.ListBuffer
import scala.math._
import scala.io.Source

import fuzzy.components._
import fuzzy.utils._

object HashMapGenerator {

  private val hashMap =
    ListBuffer[(Tuple3[Int, Int, Int], Int)]()
  private var delta = 0

  def reverse(text: String): String = {
    if (text == null) return null
    text.reverse
  }

  def reorderLut(lutString: String, n: Int, m: Int): String = {
    val nToPow2 = math.pow(2, n).toInt
    val lutNumbers =
      ListBuffer[(Tuple2[Int, String])]()
    var output = ""

    for (i <- 0 until nToPow2) {
      var binary = i.toBinaryString.reverse.padTo(n, '0').reverse
      lutNumbers += Tuple2(
        Integer.parseInt(reverse(binary), 2),
        lutString.substring(i * 4, i * 4 + m)
      )
    }

    lutNumbers.sorted.foreach { item =>
      println(item)
      output += item._2
    }

    output
  }

  def fuzzyCompute(
      debug: Boolean,
      m: Int,
      n: Int,
      table: Array[Array[Boolean]]
  ) = {

    val Checked = Array.fill(pow(2, n).toInt)(false)

    for (y <- 0 until m) {
      for (k <- 0 until pow(2, n).toInt) {
        Checked(k) = false
      }

      for (i <- 1 to n) {
        val b = pow(2, n - i).toInt
        for (j <- 0 until pow(2, n).toInt by b) {
          var sw = !Checked(j)
          for (k <- j + 1 until j + b if sw) {
            sw = (table(k)(y) == table(j)(y))
          }

          if (sw && !Checked(j)) {
            for (k <- j until j + b) {
              Checked(k) = true
            }

            val f = (j / b) % 2
            val s = pow(2, i - 1).toInt + j / b / 2 - 1
            hashMap.append((Tuple3(s, f, y), if (table(j)(y)) 1 else 0))
            if (i - y > delta) delta = i - y
          }
        }
        if (debug) {
          println(s"i = $i")
        }
      }
      if (debug) {
        println(s"y = $y\n")
      }

    }
    if (debug) {
      println(s"delta: $delta")
    }
  }

  def generate(
      debug: Boolean,
      reverseLut: Boolean,
      inputIndex: Int = -1,
      lutIndex: Int = -1
  ): (
      Int,
      Int,
      Int,
      ListBuffer[(Tuple3[Int, Int, Int], Int)]
  ) = {

    var m_output = 4 // deafault value
    var n_input = 5 // default value

    var input = // default value
      """
      0000
      0000
      0000
      0000
      0000

      0000
      0001
      0010
      0011
      0100

      0101
      0110
      0111
      1000
      1001

      1010
      1001
      1000
      0111
      0110

      0101
      0100
      0011
      0010
      0001

      0000
      0000
      0000
      0000
      0000

      0000
      0000
      """

    if (inputIndex != -1) {

      val fileName =
        "src/main/resources/lut/lut_" + inputIndex + "_" + lutIndex + ".txt"

      val lines = Source.fromFile(fileName).getLines().toArray

      val pattern = "input=\\d+ lut=\\d+ n=(\\d+) m=(\\d+)".r
      val pattern(n, m) = lines.head

      n_input = n.toInt
      m_output = m.toInt

      input = lines.tail.mkString("\n")

    }

    LogInfo(debug)(s"the derived n = ${n_input}, m = ${m_output}")

    val nToPow2 = Math.pow(2, n_input).toInt

    val array = Array.ofDim[Boolean](nToPow2, m_output)
    val inputTrim =
      input.trim.replaceAll(" ", "").replaceAll("\t", "").replaceAll("\n", "")

    LogInfo(debug)("LUT stream: " + inputTrim)

    if (reverseLut) {
      //
      // Reverse the stream
      //
      val inputTrimReversed = reorderLut(inputTrim, n_input, m_output)
      LogInfo(debug)("Reversed LUT stream: " + inputTrimReversed)

      for (i <- 0 until inputTrimReversed.length / m_output) {
        for (j <- 0 until m_output) {
          array(i)(j) =
            if (inputTrimReversed(i * m_output + j) == '1') true else false
        }
      }

    } else {
      for (i <- 0 until inputTrim.length / m_output) {
        for (j <- 0 until m_output) {
          array(i)(j) = if (inputTrim(i * m_output + j) == '1') true else false
        }
      }
    }

    if (debug) {

      println()
      println()
    }

    //
    // Call the fuzzy computer
    //
    fuzzyCompute(debug, m_output, n_input, array)

    hashMap.foreach { case (key, value) =>
      if (debug) {
        println(s"{ ${key._1}, ${key._2}, ${key._3} } ====> $value")
      }
    }

    return (n_input, m_output, delta, hashMap)
  }
}

class LutMembershipFunctionOnline(
    debug: Boolean = DesignConsts.ENABLE_DEBUG,
    bitCount: Int,
    outputBitCount: Int,
    delta: Int,
    hashMap: ListBuffer[(Tuple3[Int, Int, Int], Int)]
) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val inputBit = Input(
      UInt(1.W)
    )

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(
      UInt(1.W)
    )
  })

  val sStarted :: sFinished :: Nil = Enum(2)
  val state = RegInit(sStarted)

  val i = RegInit(
    0.U(log2Ceil(math.pow(2, bitCount).toInt).W)
  ) // at first, we're in the 0th state

  val buffer = Reg(Vec(bitCount, UInt(1.W)))

  val counter = RegInit(0.U(log2Ceil(bitCount + delta).W))

  val outResultValid = RegInit(false.B)
  val outResult = RegInit(false.B)

  //
  // Transition rules
  //
  when(io.start === true.B) {

    //
    // Status transition
    //
    switch(state) {

      is(sStarted) {

        //
        // Output generator (save)
        //
        when(counter < bitCount.U) {

          hashMap.foreach { case (key, value) =>
            when(i === key._1.U) {

              when(io.inputBit === key._2.U) {

                buffer(key._3) := (value.U(1.W))

                if (debug) {
                  println(s"debug, save into buffer(${key._3}) := ${value}")
                }
              }
            }

          }
        }

        when(counter < (outputBitCount + delta).U) {

          //
          // Output result
          //
          when(counter < delta.U) {
            outResultValid := false.B
            outResult := 0.U
          }.elsewhen(counter >= delta.U) {
            outResultValid := true.B
            outResult := buffer(counter - delta.U)

            if (debug) {
              printf(
                "debug, set buffer to output buffer(%d), counter = %d\n",
                counter - delta.U,
                counter
              )
            }
          }

          //
          // State transition
          //
          when(i < (math.pow(2, bitCount - 1).toInt - 1).U) {

            if (debug) {
              printf(
                "debug, state transition 1: %d\n",
                i
              )
            }

            when(io.inputBit === 0.U) {
              i := 2.U * i + 1.U
            }.elsewhen(io.inputBit === 1.U) {
              i := 2.U * i + 2.U
            }

          }.elsewhen(i < (math.pow(2, bitCount).toInt - 1).U) {

            if (debug) {
              printf(
                "debug, state transition 2: %d\n",
                i
              )
            }
            i := (math.pow(2, bitCount).toInt - 1).U
          }

          counter := counter + 1.U

        }.otherwise {

          outResult := 0.U
          outResultValid := false.B
        }

      }

      is(sFinished) {

        //
        // Wait here
        //
        state := sFinished

      }
    }
  }.otherwise {

    //
    // Reset the state
    //
    state := sStarted
    i := 0.U
    counter := 0.U
    outResult := 0.U
    outResultValid := false.B
  }

  //
  // Output connections
  //
  io.outResult := outResult
  io.outResultValid := outResultValid

}

object LutMembershipFunctionOnline {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG,
      bitCount: Int,
      outputBitCount: Int,
      delta: Int,
      hashMap: ListBuffer[(Tuple3[Int, Int, Int], Int)]
  )(
      inputBit: UInt,
      start: Bool
  ): (UInt, Bool) = {

    val lutMemFunction = Module(
      new LutMembershipFunctionOnline(
        debug,
        bitCount,
        outputBitCount,
        delta,
        hashMap
      )
    )

    val outResult = Wire(UInt(1.W))
    val outResultValid = Wire(Bool())

    //
    // Start the circuit
    //
    lutMemFunction.io.start := start

    //
    // Input
    //
    lutMemFunction.io.inputBit := inputBit

    //
    // Output
    //
    outResult := lutMemFunction.io.outResult
    outResultValid := lutMemFunction.io.outResultValid

    //
    // Return the result
    //
    (outResult, outResultValid)
  }
}

object LutMemOnlineMain extends App {
  //
  // These lines generate the Verilog output
  //
  val generatedResults =
    HashMapGenerator.generate(
      DesignConsts.ENABLE_DEBUG,
      false // it's not reversed LUT
    )

  println(
    new (chisel3.stage.ChiselStage).emitVerilog(
      new LutMembershipFunctionOnline(
        DesignConsts.ENABLE_DEBUG,
        generatedResults._1,
        generatedResults._2,
        generatedResults._3,
        generatedResults._4
      ),
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
