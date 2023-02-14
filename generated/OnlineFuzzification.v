module OnlineFuzzification(
  input   clock,
  input   reset,
  input   io_start,
  input   io_inputs_0,
  input   io_inputs_1,
  output  io_outResultValid,
  output  io_outResult
);
  assign io_outResultValid = 1'h1; // @[online_fuzzification.scala 56:21]
  assign io_outResult = 1'h1; // @[online_fuzzification.scala 57:16]
endmodule
