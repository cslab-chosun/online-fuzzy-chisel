package fuzzy.utils

import chisel3._
import chisel3.util._

import chisel3.util._

import fuzzy.utils.file._

/** @brief
  *   The constants for min-max tree
  */
object DesignConsts {

  val ENABLE_DEBUG: Boolean = false // whether to enable debug or not

  val LUT_CONNECTION: Boolean = true // by default not

  val TEST_FILE_PATH: String = "src/test/resources/min-max-tests.txt"

  val MAXIMUM_SUPPORTED_NUMBER: Int =
    100 // The numbers are between 0 to 99 so 7 bit (128) is enough

  val MULTIPLE_TEST: Int =
    FileCountOfLines(TEST_FILE_PATH) / 3 // Number of multiple tests

  val VECTOR_COUNT: Int =
    FileRead(
      TEST_FILE_PATH,
      " ",
      0
    ).length // Size of the input vector (by default 8)

  val NUMBER_LENGTH: Int = log2Ceil(MAXIMUM_SUPPORTED_NUMBER)

  //
  // Used for LUT-based membership function
  //
  val LUT_MEM_FUNCTION_BIT_COUNT: Int = 4
  val LUT_MEM_FUNCTION_DELTA: Int = 5
}

/** @brief
  *   The testing samples
  */
object TestingSample {

  //
  // Comparator tests
  //
  val comparator_test1 = "1000 0000 0010 0111"
  val comparator_test2 = "1000 1010 0000 0111"

  val comparator_test_len = comparator_test1.replace(" ", "").length
}

/** @brief
  *   The testing samples for state generator
  */
object StateGenSamples {

  //
  // State samples
  //
  val numberOfBits = 4
}
