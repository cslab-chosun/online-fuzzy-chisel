module LutMembershipFunctionOnline2(
  input   clock,
  input   reset,
  input   io_start,
  input   io_inputBit,
  output  io_outResultValid,
  output  io_outResult
);
  assign io_outResultValid = 1'h0; // @[lut_mem_online2.scala 138:21]
  assign io_outResult = 1'h0; // @[lut_mem_online2.scala 137:16]
endmodule
