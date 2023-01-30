package fuzzy.algorithms.state_generator

import chisel3._
import chisel3.util._

import fuzzy.components._
import fuzzy.utils._

import scala.collection.immutable.ListMap
import scala.math._

object HashMapGenerator {
  private val HashMap =
    scala.collection.mutable.ListBuffer[(Tuple3[Int, Int, Int], Int)]()

  def FuzzyCompute(
      debug: Boolean,
      m: Int,
      n: Int,
      table: Array[Array[Boolean]]
  ) = {
    val Checked = Array.fill(pow(2, n).toInt)(false)
    var Delta = 0

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
            HashMap.append((Tuple3(y, f, y), if (table(j)(y)) 1 else 0))
            if (i - y > Delta) Delta = i - y
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
      println(s"delta: $Delta")
    }
  }

  def generate(debug: Boolean): Unit = {

    val m = 4
    val n = 5
    val nToPow2 = Math.pow(2, n).toInt

    val array = Array.ofDim[Boolean](nToPow2, m)

    val input =
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

    val inputTrim = input.trim.replaceAll(" ", "").replaceAll("\n", "")

    for (i <- 0 until inputTrim.length / m) {
      for (j <- 0 until m) {
        array(i)(j) = if (inputTrim(i * m + j) == '1') true else false
        if (debug) {
          println(s"array($i)($j) ==> ")
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
    FuzzyCompute(debug, m, n, array)

    HashMap.foreach { case (key, value) =>
      if (debug) {
        println(s"{ ${key._1}, ${key._2}, ${key._3} } ====> $value")
      }
    }

  }
}

class StateGenerator(
    debug: Boolean = DesignConsts.ENABLE_DEBUG
) extends Module {

  val io = IO(new Bundle {

    //
    // Input signals
    //
    val start = Input(Bool())

    val in = Input(Bool())

    //
    // Output signals
    //
    val outResultValid = Output(Bool())
    val outResult = Output(Bool())
  })

  val outResultValid = RegInit(false.B)
  val outResult = RegInit(false.B)

  io.outResult := io.in

  //
  // Set the output wires and regs
  //
  io.outResultValid := outResultValid
  io.outResult := outResult

}

object StateGenerator {

  def apply(
      debug: Boolean = DesignConsts.ENABLE_DEBUG
  )(in: Bool, start: Bool): (Bool, Bool) = {

    val stateGen = Module(
      new StateGenerator(debug)
    )

    val outResult = Wire(Bool())
    val outResultValid = Wire(Bool())

    stateGen.io.start := start
    stateGen.io.in := in

    outResult := stateGen.io.outResult
    outResultValid := stateGen.io.outResultValid

    //
    // Return the result
    //
    (outResult, outResultValid)
  }
}
