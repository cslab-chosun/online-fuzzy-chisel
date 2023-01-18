package fuzzy.utils.file

import chisel3._
import chisel3.util._

import scala.io.Source

/** Object to read file
  */
object FileCountOfLines {

  def apply(fileName: String): Int = {

    Source.fromFile(fileName).getLines.size
  }
}

/** Object to read file
  */
object FileRead {

  //
  // Use it like :
  //
  // val result = FileRead(
  //  "src/test/resources/min-max-tests.txt",
  //  " ",
  //  i
  // )
  //
  // for (item <- result) {
  //  println(item)
  // }
  //
  //

  def apply(fileName: String): Unit = {

    val filename = fileName
    for (line <- Source.fromFile(filename).getLines) {
      println(line)
    }
  }

  def apply(
      fileName: String,
      delimiter: String,
      lineNumber: Int
  ): Array[Int] = {

    val filename = fileName
    var currentNumber = 0

    for (line <- Source.fromFile(filename).getLines) {

      if (currentNumber == lineNumber) {
        //
        // Return array of results
        //
        return line
          .split(delimiter)
          .map(_.trim)
          .map(
            Integer.parseInt(_, 16)
          ) /*in case of decimal integer: .map(_./*.toInt*/)*/
      } else {
        currentNumber = currentNumber + 1
      }
    }

    //
    // Line is not valid (empty array)
    //
    return Array[Int]()
  }

}
