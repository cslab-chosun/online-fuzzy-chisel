module OnlineFuzzification(
  input   clock,
  input   reset,
  input   io_start,
  input   io_inputs_0,
  input   io_inputs_1,
  output  io_outResultValid,
  output  io_outResult
);
  wire  lutMemFunction_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_1_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_1_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_1_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_1_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_2_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_2_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_2_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_2_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_3_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_3_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_3_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_3_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_4_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_4_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_4_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_4_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_5_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_5_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_5_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_5_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_6_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_6_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_6_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_6_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_7_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_7_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_7_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_7_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_8_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_8_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_8_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_8_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_9_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_9_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_9_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_9_io_inputBit; // @[lut_mem_online.scala 348:32]
  LutMembershipFunctionOnline lutMemFunction ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_clock),
    .reset(lutMemFunction_reset),
    .io_start(lutMemFunction_io_start),
    .io_inputBit(lutMemFunction_io_inputBit)
  );
  LutMembershipFunctionOnline_1 lutMemFunction_1 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_1_clock),
    .reset(lutMemFunction_1_reset),
    .io_start(lutMemFunction_1_io_start),
    .io_inputBit(lutMemFunction_1_io_inputBit)
  );
  LutMembershipFunctionOnline_2 lutMemFunction_2 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_2_clock),
    .reset(lutMemFunction_2_reset),
    .io_start(lutMemFunction_2_io_start),
    .io_inputBit(lutMemFunction_2_io_inputBit)
  );
  LutMembershipFunctionOnline_3 lutMemFunction_3 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_3_clock),
    .reset(lutMemFunction_3_reset),
    .io_start(lutMemFunction_3_io_start),
    .io_inputBit(lutMemFunction_3_io_inputBit)
  );
  LutMembershipFunctionOnline_4 lutMemFunction_4 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_4_clock),
    .reset(lutMemFunction_4_reset),
    .io_start(lutMemFunction_4_io_start),
    .io_inputBit(lutMemFunction_4_io_inputBit)
  );
  LutMembershipFunctionOnline_5 lutMemFunction_5 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_5_clock),
    .reset(lutMemFunction_5_reset),
    .io_start(lutMemFunction_5_io_start),
    .io_inputBit(lutMemFunction_5_io_inputBit)
  );
  LutMembershipFunctionOnline_6 lutMemFunction_6 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_6_clock),
    .reset(lutMemFunction_6_reset),
    .io_start(lutMemFunction_6_io_start),
    .io_inputBit(lutMemFunction_6_io_inputBit)
  );
  LutMembershipFunctionOnline_7 lutMemFunction_7 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_7_clock),
    .reset(lutMemFunction_7_reset),
    .io_start(lutMemFunction_7_io_start),
    .io_inputBit(lutMemFunction_7_io_inputBit)
  );
  LutMembershipFunctionOnline_8 lutMemFunction_8 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_8_clock),
    .reset(lutMemFunction_8_reset),
    .io_start(lutMemFunction_8_io_start),
    .io_inputBit(lutMemFunction_8_io_inputBit)
  );
  LutMembershipFunctionOnline_9 lutMemFunction_9 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_9_clock),
    .reset(lutMemFunction_9_reset),
    .io_start(lutMemFunction_9_io_start),
    .io_inputBit(lutMemFunction_9_io_inputBit)
  );
  assign io_outResultValid = 1'h1; // @[online_fuzzification.scala 100:21]
  assign io_outResult = 1'h1; // @[online_fuzzification.scala 101:16]
  assign lutMemFunction_clock = clock;
  assign lutMemFunction_reset = reset;
  assign lutMemFunction_io_start = io_start; // @[lut_mem_online.scala 364:29]
  assign lutMemFunction_io_inputBit = io_inputs_0; // @[lut_mem_online.scala 369:32]
  assign lutMemFunction_1_clock = clock;
  assign lutMemFunction_1_reset = reset;
  assign lutMemFunction_1_io_start = io_start; // @[lut_mem_online.scala 364:29]
  assign lutMemFunction_1_io_inputBit = io_inputs_0; // @[lut_mem_online.scala 369:32]
  assign lutMemFunction_2_clock = clock;
  assign lutMemFunction_2_reset = reset;
  assign lutMemFunction_2_io_start = io_start; // @[lut_mem_online.scala 364:29]
  assign lutMemFunction_2_io_inputBit = io_inputs_0; // @[lut_mem_online.scala 369:32]
  assign lutMemFunction_3_clock = clock;
  assign lutMemFunction_3_reset = reset;
  assign lutMemFunction_3_io_start = io_start; // @[lut_mem_online.scala 364:29]
  assign lutMemFunction_3_io_inputBit = io_inputs_0; // @[lut_mem_online.scala 369:32]
  assign lutMemFunction_4_clock = clock;
  assign lutMemFunction_4_reset = reset;
  assign lutMemFunction_4_io_start = io_start; // @[lut_mem_online.scala 364:29]
  assign lutMemFunction_4_io_inputBit = io_inputs_0; // @[lut_mem_online.scala 369:32]
  assign lutMemFunction_5_clock = clock;
  assign lutMemFunction_5_reset = reset;
  assign lutMemFunction_5_io_start = io_start; // @[lut_mem_online.scala 364:29]
  assign lutMemFunction_5_io_inputBit = io_inputs_1; // @[lut_mem_online.scala 369:32]
  assign lutMemFunction_6_clock = clock;
  assign lutMemFunction_6_reset = reset;
  assign lutMemFunction_6_io_start = io_start; // @[lut_mem_online.scala 364:29]
  assign lutMemFunction_6_io_inputBit = io_inputs_1; // @[lut_mem_online.scala 369:32]
  assign lutMemFunction_7_clock = clock;
  assign lutMemFunction_7_reset = reset;
  assign lutMemFunction_7_io_start = io_start; // @[lut_mem_online.scala 364:29]
  assign lutMemFunction_7_io_inputBit = io_inputs_1; // @[lut_mem_online.scala 369:32]
  assign lutMemFunction_8_clock = clock;
  assign lutMemFunction_8_reset = reset;
  assign lutMemFunction_8_io_start = io_start; // @[lut_mem_online.scala 364:29]
  assign lutMemFunction_8_io_inputBit = io_inputs_1; // @[lut_mem_online.scala 369:32]
  assign lutMemFunction_9_clock = clock;
  assign lutMemFunction_9_reset = reset;
  assign lutMemFunction_9_io_start = io_start; // @[lut_mem_online.scala 364:29]
  assign lutMemFunction_9_io_inputBit = io_inputs_1; // @[lut_mem_online.scala 369:32]
endmodule
