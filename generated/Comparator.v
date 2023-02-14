module Comparator(
  input  [2:0] io_in1,
  input  [2:0] io_in2,
  output       io_maxMin
);
  assign io_maxMin = io_in1 >= io_in2; // @[comparator.scala 34:15]
endmodule
