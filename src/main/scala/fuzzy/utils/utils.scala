package fuzzy.utils

import chisel3._
import chisel3.util._

object LogInfo {

  def apply(debug: Boolean)(message: String): Unit = {
    println("dbg, " + message)
  }
}
