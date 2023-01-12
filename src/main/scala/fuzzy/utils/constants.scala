package fuzzy.utils

import chisel3._
import chisel3.util._

/** @brief
  *   The constants for min-max tree (USED ONLY IN TESTS)
  */
object DesignConsts {

  val ENABLE_DEBUG: Boolean = false // whether to enable debug or not
  val MAXIMUM_SUPPORTED_NUMBER: Int =
    100 // The numbers are between 0 to 99 so 7 bit (128) is enough

  val VECTOR_COUNT: Int =
    TestingSample.input1_bytes.length // Size of the input vector (by default 8)
  val NUMBER_LENGTH: Int = log2Ceil(MAXIMUM_SUPPORTED_NUMBER)
}

/** @brief
  *   The testing samples
  */
object TestingSample {

  val input_result = 0x52

  val input1_bytes =
    Array(0x12.U, 0x65.U, 0x52.U, 0x78.U, 0x18.U, 0x0.U, 0x1.U, 0x45.U)
  val input2_bytes =
    Array(0x17.U, 0x2.U, 0x7a.U, 0x27.U, 0x0.U, 0x0.U, 0x29.U, 0x17.U)
}
