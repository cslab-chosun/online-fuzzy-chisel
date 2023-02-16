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
  wire  lutMemFunction_io_outResult; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_1_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_1_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_1_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_1_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_1_io_outResult; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_2_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_2_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_2_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_2_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_2_io_outResult; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_3_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_3_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_3_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_3_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_3_io_outResult; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_4_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_4_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_4_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_4_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_4_io_outResult; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_5_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_5_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_5_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_5_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_5_io_outResult; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_6_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_6_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_6_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_6_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_6_io_outResult; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_7_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_7_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_7_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_7_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_7_io_outResult; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_8_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_8_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_8_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_8_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_8_io_outResult; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_9_clock; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_9_reset; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_9_io_start; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_9_io_inputBit; // @[lut_mem_online.scala 348:32]
  wire  lutMemFunction_9_io_outResult; // @[lut_mem_online.scala 348:32]
  wire  minMaxTree_clock; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_reset; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_start; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in1_0; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in1_1; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in1_2; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in1_3; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in1_4; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in1_5; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in2_0; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in2_1; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in2_2; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in2_3; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in2_4; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_io_in2_5; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_clock; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_reset; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_start; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in1_0; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in1_1; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in1_2; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in1_3; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in1_4; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in1_5; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in2_0; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in2_1; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in2_2; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in2_3; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in2_4; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_1_io_in2_5; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_clock; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_reset; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_start; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in1_0; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in1_1; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in1_2; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in1_3; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in1_4; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in1_5; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in2_0; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in2_1; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in2_2; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in2_3; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in2_4; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_2_io_in2_5; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_clock; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_reset; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_start; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in1_0; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in1_1; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in1_2; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in1_3; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in1_4; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in1_5; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in2_0; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in2_1; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in2_2; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in2_3; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in2_4; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_3_io_in2_5; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_clock; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_reset; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_start; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in1_0; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in1_1; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in1_2; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in1_3; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in1_4; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in1_5; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in2_0; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in2_1; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in2_2; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in2_3; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in2_4; // @[min_max_parallel_online_comparator.scala 237:28]
  wire  minMaxTree_4_io_in2_5; // @[min_max_parallel_online_comparator.scala 237:28]
  reg  regLutResultsVec_0; // @[online_fuzzification.scala 48:29]
  reg  regLutResultsVec_1; // @[online_fuzzification.scala 48:29]
  reg  regLutResultsVec_2; // @[online_fuzzification.scala 48:29]
  reg  regLutResultsVec_3; // @[online_fuzzification.scala 48:29]
  reg  regLutResultsVec_4; // @[online_fuzzification.scala 48:29]
  reg  regLutResultsVec_5; // @[online_fuzzification.scala 48:29]
  reg  regLutResultsVec_6; // @[online_fuzzification.scala 48:29]
  reg  regLutResultsVec_7; // @[online_fuzzification.scala 48:29]
  reg  regLutResultsVec_8; // @[online_fuzzification.scala 48:29]
  reg  regLutResultsVec_9; // @[online_fuzzification.scala 48:29]
  wire  outResult_1 = lutMemFunction_io_outResult; // @[lut_mem_online.scala 358:25 374:15]
  wire  outResult_2 = lutMemFunction_1_io_outResult; // @[lut_mem_online.scala 358:25 374:15]
  wire  outResult_3 = lutMemFunction_2_io_outResult; // @[lut_mem_online.scala 358:25 374:15]
  wire  outResult_4 = lutMemFunction_3_io_outResult; // @[lut_mem_online.scala 358:25 374:15]
  wire  outResult_5 = lutMemFunction_4_io_outResult; // @[lut_mem_online.scala 358:25 374:15]
  wire  outResult_6 = lutMemFunction_5_io_outResult; // @[lut_mem_online.scala 358:25 374:15]
  wire  outResult_7 = lutMemFunction_6_io_outResult; // @[lut_mem_online.scala 358:25 374:15]
  wire  outResult_8 = lutMemFunction_7_io_outResult; // @[lut_mem_online.scala 358:25 374:15]
  wire  outResult_9 = lutMemFunction_8_io_outResult; // @[lut_mem_online.scala 358:25 374:15]
  wire  outResult_10 = lutMemFunction_9_io_outResult; // @[lut_mem_online.scala 358:25 374:15]
  LutMembershipFunctionOnline lutMemFunction ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_clock),
    .reset(lutMemFunction_reset),
    .io_start(lutMemFunction_io_start),
    .io_inputBit(lutMemFunction_io_inputBit),
    .io_outResult(lutMemFunction_io_outResult)
  );
  LutMembershipFunctionOnline_1 lutMemFunction_1 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_1_clock),
    .reset(lutMemFunction_1_reset),
    .io_start(lutMemFunction_1_io_start),
    .io_inputBit(lutMemFunction_1_io_inputBit),
    .io_outResult(lutMemFunction_1_io_outResult)
  );
  LutMembershipFunctionOnline_2 lutMemFunction_2 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_2_clock),
    .reset(lutMemFunction_2_reset),
    .io_start(lutMemFunction_2_io_start),
    .io_inputBit(lutMemFunction_2_io_inputBit),
    .io_outResult(lutMemFunction_2_io_outResult)
  );
  LutMembershipFunctionOnline_3 lutMemFunction_3 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_3_clock),
    .reset(lutMemFunction_3_reset),
    .io_start(lutMemFunction_3_io_start),
    .io_inputBit(lutMemFunction_3_io_inputBit),
    .io_outResult(lutMemFunction_3_io_outResult)
  );
  LutMembershipFunctionOnline_4 lutMemFunction_4 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_4_clock),
    .reset(lutMemFunction_4_reset),
    .io_start(lutMemFunction_4_io_start),
    .io_inputBit(lutMemFunction_4_io_inputBit),
    .io_outResult(lutMemFunction_4_io_outResult)
  );
  LutMembershipFunctionOnline_5 lutMemFunction_5 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_5_clock),
    .reset(lutMemFunction_5_reset),
    .io_start(lutMemFunction_5_io_start),
    .io_inputBit(lutMemFunction_5_io_inputBit),
    .io_outResult(lutMemFunction_5_io_outResult)
  );
  LutMembershipFunctionOnline_6 lutMemFunction_6 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_6_clock),
    .reset(lutMemFunction_6_reset),
    .io_start(lutMemFunction_6_io_start),
    .io_inputBit(lutMemFunction_6_io_inputBit),
    .io_outResult(lutMemFunction_6_io_outResult)
  );
  LutMembershipFunctionOnline_7 lutMemFunction_7 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_7_clock),
    .reset(lutMemFunction_7_reset),
    .io_start(lutMemFunction_7_io_start),
    .io_inputBit(lutMemFunction_7_io_inputBit),
    .io_outResult(lutMemFunction_7_io_outResult)
  );
  LutMembershipFunctionOnline_8 lutMemFunction_8 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_8_clock),
    .reset(lutMemFunction_8_reset),
    .io_start(lutMemFunction_8_io_start),
    .io_inputBit(lutMemFunction_8_io_inputBit),
    .io_outResult(lutMemFunction_8_io_outResult)
  );
  LutMembershipFunctionOnline_9 lutMemFunction_9 ( // @[lut_mem_online.scala 348:32]
    .clock(lutMemFunction_9_clock),
    .reset(lutMemFunction_9_reset),
    .io_start(lutMemFunction_9_io_start),
    .io_inputBit(lutMemFunction_9_io_inputBit),
    .io_outResult(lutMemFunction_9_io_outResult)
  );
  MinMaxParallelOnlineComparator minMaxTree ( // @[min_max_parallel_online_comparator.scala 237:28]
    .clock(minMaxTree_clock),
    .reset(minMaxTree_reset),
    .io_start(minMaxTree_io_start),
    .io_in1_0(minMaxTree_io_in1_0),
    .io_in1_1(minMaxTree_io_in1_1),
    .io_in1_2(minMaxTree_io_in1_2),
    .io_in1_3(minMaxTree_io_in1_3),
    .io_in1_4(minMaxTree_io_in1_4),
    .io_in1_5(minMaxTree_io_in1_5),
    .io_in2_0(minMaxTree_io_in2_0),
    .io_in2_1(minMaxTree_io_in2_1),
    .io_in2_2(minMaxTree_io_in2_2),
    .io_in2_3(minMaxTree_io_in2_3),
    .io_in2_4(minMaxTree_io_in2_4),
    .io_in2_5(minMaxTree_io_in2_5)
  );
  MinMaxParallelOnlineComparator minMaxTree_1 ( // @[min_max_parallel_online_comparator.scala 237:28]
    .clock(minMaxTree_1_clock),
    .reset(minMaxTree_1_reset),
    .io_start(minMaxTree_1_io_start),
    .io_in1_0(minMaxTree_1_io_in1_0),
    .io_in1_1(minMaxTree_1_io_in1_1),
    .io_in1_2(minMaxTree_1_io_in1_2),
    .io_in1_3(minMaxTree_1_io_in1_3),
    .io_in1_4(minMaxTree_1_io_in1_4),
    .io_in1_5(minMaxTree_1_io_in1_5),
    .io_in2_0(minMaxTree_1_io_in2_0),
    .io_in2_1(minMaxTree_1_io_in2_1),
    .io_in2_2(minMaxTree_1_io_in2_2),
    .io_in2_3(minMaxTree_1_io_in2_3),
    .io_in2_4(minMaxTree_1_io_in2_4),
    .io_in2_5(minMaxTree_1_io_in2_5)
  );
  MinMaxParallelOnlineComparator minMaxTree_2 ( // @[min_max_parallel_online_comparator.scala 237:28]
    .clock(minMaxTree_2_clock),
    .reset(minMaxTree_2_reset),
    .io_start(minMaxTree_2_io_start),
    .io_in1_0(minMaxTree_2_io_in1_0),
    .io_in1_1(minMaxTree_2_io_in1_1),
    .io_in1_2(minMaxTree_2_io_in1_2),
    .io_in1_3(minMaxTree_2_io_in1_3),
    .io_in1_4(minMaxTree_2_io_in1_4),
    .io_in1_5(minMaxTree_2_io_in1_5),
    .io_in2_0(minMaxTree_2_io_in2_0),
    .io_in2_1(minMaxTree_2_io_in2_1),
    .io_in2_2(minMaxTree_2_io_in2_2),
    .io_in2_3(minMaxTree_2_io_in2_3),
    .io_in2_4(minMaxTree_2_io_in2_4),
    .io_in2_5(minMaxTree_2_io_in2_5)
  );
  MinMaxParallelOnlineComparator minMaxTree_3 ( // @[min_max_parallel_online_comparator.scala 237:28]
    .clock(minMaxTree_3_clock),
    .reset(minMaxTree_3_reset),
    .io_start(minMaxTree_3_io_start),
    .io_in1_0(minMaxTree_3_io_in1_0),
    .io_in1_1(minMaxTree_3_io_in1_1),
    .io_in1_2(minMaxTree_3_io_in1_2),
    .io_in1_3(minMaxTree_3_io_in1_3),
    .io_in1_4(minMaxTree_3_io_in1_4),
    .io_in1_5(minMaxTree_3_io_in1_5),
    .io_in2_0(minMaxTree_3_io_in2_0),
    .io_in2_1(minMaxTree_3_io_in2_1),
    .io_in2_2(minMaxTree_3_io_in2_2),
    .io_in2_3(minMaxTree_3_io_in2_3),
    .io_in2_4(minMaxTree_3_io_in2_4),
    .io_in2_5(minMaxTree_3_io_in2_5)
  );
  MinMaxParallelOnlineComparator minMaxTree_4 ( // @[min_max_parallel_online_comparator.scala 237:28]
    .clock(minMaxTree_4_clock),
    .reset(minMaxTree_4_reset),
    .io_start(minMaxTree_4_io_start),
    .io_in1_0(minMaxTree_4_io_in1_0),
    .io_in1_1(minMaxTree_4_io_in1_1),
    .io_in1_2(minMaxTree_4_io_in1_2),
    .io_in1_3(minMaxTree_4_io_in1_3),
    .io_in1_4(minMaxTree_4_io_in1_4),
    .io_in1_5(minMaxTree_4_io_in1_5),
    .io_in2_0(minMaxTree_4_io_in2_0),
    .io_in2_1(minMaxTree_4_io_in2_1),
    .io_in2_2(minMaxTree_4_io_in2_2),
    .io_in2_3(minMaxTree_4_io_in2_3),
    .io_in2_4(minMaxTree_4_io_in2_4),
    .io_in2_5(minMaxTree_4_io_in2_5)
  );
  assign io_outResultValid = 1'h1; // @[online_fuzzification.scala 274:21]
  assign io_outResult = 1'h1; // @[online_fuzzification.scala 275:16]
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
  assign minMaxTree_clock = clock;
  assign minMaxTree_reset = reset;
  assign minMaxTree_io_start = io_start; // @[min_max_parallel_online_comparator.scala 243:25]
  assign minMaxTree_io_in1_0 = regLutResultsVec_0; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_io_in1_1 = regLutResultsVec_0; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_io_in1_2 = regLutResultsVec_0; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_io_in1_3 = regLutResultsVec_1; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_io_in1_4 = 1'h0; // @[online_fuzzification.scala 240:{30,30}]
  assign minMaxTree_io_in1_5 = 1'h0; // @[online_fuzzification.scala 240:{30,30}]
  assign minMaxTree_io_in2_0 = regLutResultsVec_5; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_io_in2_1 = regLutResultsVec_6; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_io_in2_2 = regLutResultsVec_7; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_io_in2_3 = regLutResultsVec_5; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_io_in2_4 = 1'h0; // @[online_fuzzification.scala 241:{30,30}]
  assign minMaxTree_io_in2_5 = 1'h0; // @[online_fuzzification.scala 241:{30,30}]
  assign minMaxTree_1_clock = clock;
  assign minMaxTree_1_reset = reset;
  assign minMaxTree_1_io_start = io_start; // @[min_max_parallel_online_comparator.scala 243:25]
  assign minMaxTree_1_io_in1_0 = regLutResultsVec_0; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_1_io_in1_1 = regLutResultsVec_0; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_1_io_in1_2 = regLutResultsVec_1; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_1_io_in1_3 = regLutResultsVec_1; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_1_io_in1_4 = regLutResultsVec_1; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_1_io_in1_5 = regLutResultsVec_2; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_1_io_in2_0 = regLutResultsVec_8; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_1_io_in2_1 = regLutResultsVec_9; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_1_io_in2_2 = regLutResultsVec_6; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_1_io_in2_3 = regLutResultsVec_7; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_1_io_in2_4 = regLutResultsVec_8; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_1_io_in2_5 = regLutResultsVec_5; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_2_clock = clock;
  assign minMaxTree_2_reset = reset;
  assign minMaxTree_2_io_start = io_start; // @[min_max_parallel_online_comparator.scala 243:25]
  assign minMaxTree_2_io_in1_0 = regLutResultsVec_1; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_2_io_in1_1 = regLutResultsVec_2; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_2_io_in1_2 = regLutResultsVec_2; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_2_io_in1_3 = regLutResultsVec_3; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_2_io_in1_4 = 1'h0; // @[online_fuzzification.scala 240:{30,30}]
  assign minMaxTree_2_io_in1_5 = 1'h0; // @[online_fuzzification.scala 240:{30,30}]
  assign minMaxTree_2_io_in2_0 = regLutResultsVec_9; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_2_io_in2_1 = regLutResultsVec_6; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_2_io_in2_2 = regLutResultsVec_7; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_2_io_in2_3 = regLutResultsVec_5; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_2_io_in2_4 = 1'h0; // @[online_fuzzification.scala 241:{30,30}]
  assign minMaxTree_2_io_in2_5 = 1'h0; // @[online_fuzzification.scala 241:{30,30}]
  assign minMaxTree_3_clock = clock;
  assign minMaxTree_3_reset = reset;
  assign minMaxTree_3_io_start = io_start; // @[min_max_parallel_online_comparator.scala 243:25]
  assign minMaxTree_3_io_in1_0 = regLutResultsVec_2; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_3_io_in1_1 = regLutResultsVec_2; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_3_io_in1_2 = regLutResultsVec_3; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_3_io_in1_3 = regLutResultsVec_3; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_3_io_in1_4 = regLutResultsVec_4; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_3_io_in1_5 = regLutResultsVec_4; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_3_io_in2_0 = regLutResultsVec_8; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_3_io_in2_1 = regLutResultsVec_9; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_3_io_in2_2 = regLutResultsVec_6; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_3_io_in2_3 = regLutResultsVec_7; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_3_io_in2_4 = regLutResultsVec_5; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_3_io_in2_5 = regLutResultsVec_6; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_4_clock = clock;
  assign minMaxTree_4_reset = reset;
  assign minMaxTree_4_io_start = io_start; // @[min_max_parallel_online_comparator.scala 243:25]
  assign minMaxTree_4_io_in1_0 = regLutResultsVec_3; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_4_io_in1_1 = regLutResultsVec_3; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_4_io_in1_2 = regLutResultsVec_4; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_4_io_in1_3 = regLutResultsVec_4; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_4_io_in1_4 = regLutResultsVec_4; // @[online_fuzzification.scala 240:30 246:30]
  assign minMaxTree_4_io_in1_5 = 1'h0; // @[online_fuzzification.scala 240:{30,30}]
  assign minMaxTree_4_io_in2_0 = regLutResultsVec_8; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_4_io_in2_1 = regLutResultsVec_9; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_4_io_in2_2 = regLutResultsVec_7; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_4_io_in2_3 = regLutResultsVec_8; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_4_io_in2_4 = regLutResultsVec_9; // @[online_fuzzification.scala 241:30 247:30]
  assign minMaxTree_4_io_in2_5 = 1'h0; // @[online_fuzzification.scala 241:{30,30}]
  always @(posedge clock) begin
    if (io_start) begin // @[online_fuzzification.scala 73:29]
      regLutResultsVec_0 <= outResult_1; // @[online_fuzzification.scala 101:55]
    end
    if (io_start) begin // @[online_fuzzification.scala 73:29]
      regLutResultsVec_1 <= outResult_2; // @[online_fuzzification.scala 101:55]
    end
    if (io_start) begin // @[online_fuzzification.scala 73:29]
      regLutResultsVec_2 <= outResult_3; // @[online_fuzzification.scala 101:55]
    end
    if (io_start) begin // @[online_fuzzification.scala 73:29]
      regLutResultsVec_3 <= outResult_4; // @[online_fuzzification.scala 101:55]
    end
    if (io_start) begin // @[online_fuzzification.scala 73:29]
      regLutResultsVec_4 <= outResult_5; // @[online_fuzzification.scala 101:55]
    end
    if (io_start) begin // @[online_fuzzification.scala 73:29]
      regLutResultsVec_5 <= outResult_6; // @[online_fuzzification.scala 101:55]
    end
    if (io_start) begin // @[online_fuzzification.scala 73:29]
      regLutResultsVec_6 <= outResult_7; // @[online_fuzzification.scala 101:55]
    end
    if (io_start) begin // @[online_fuzzification.scala 73:29]
      regLutResultsVec_7 <= outResult_8; // @[online_fuzzification.scala 101:55]
    end
    if (io_start) begin // @[online_fuzzification.scala 73:29]
      regLutResultsVec_8 <= outResult_9; // @[online_fuzzification.scala 101:55]
    end
    if (io_start) begin // @[online_fuzzification.scala 73:29]
      regLutResultsVec_9 <= outResult_10; // @[online_fuzzification.scala 101:55]
    end
  end
endmodule
