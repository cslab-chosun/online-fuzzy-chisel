package fuzzy.utils

import chisel3._
import chisel3.util._

/** @brief
  *   The constants for min-max tree
  */
object MinMaxTreeConsts {

  val VECTOR_COUNT: Int = 8 // Size of the input vector
  val NUMBER_LENGTH: Int = 7 // The numbers are between 0 to 99 so 7 bit (128) is enough
}
