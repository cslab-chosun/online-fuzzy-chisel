module RegularFuzzification(
  input        clock,
  input        reset,
  input        io_start,
  input  [9:0] io_inputs_0,
  input  [9:0] io_inputs_1,
  output       io_outResultValid,
  output [2:0] io_outResult
);
  wire [2:0] regMinVec_0_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_0_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_0_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_1_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_1_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_1_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_2_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_2_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_2_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_3_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_3_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_3_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_4_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_4_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_4_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_5_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_5_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_5_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_6_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_6_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_6_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_7_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_7_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_7_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_8_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_8_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_8_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_9_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_9_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_9_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_10_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_10_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_10_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_11_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_11_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_11_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_12_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_12_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_12_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_13_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_13_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_13_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_14_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_14_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_14_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_15_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_15_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_15_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_16_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_16_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_16_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_17_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_17_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_17_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_18_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_18_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_18_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_19_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_19_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_19_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_20_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_20_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_20_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_21_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_21_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_21_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_22_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_22_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_22_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_23_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_23_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_23_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_24_comparatorModule_io_in1; // @[comparator.scala 69:34]
  wire [2:0] regMinVec_24_comparatorModule_io_in2; // @[comparator.scala 69:34]
  wire  regMinVec_24_comparatorModule_io_maxMin; // @[comparator.scala 69:34]
  wire  regMaxVec_0_comparatorModule_clock; // @[multiple_comparator.scala 293:34]
  wire  regMaxVec_0_comparatorModule_io_start; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_0_comparatorModule_io_inputs_0; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_0_comparatorModule_io_inputs_1; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_0_comparatorModule_io_inputs_2; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_0_comparatorModule_io_inputs_3; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_0_comparatorModule_io_result; // @[multiple_comparator.scala 293:34]
  wire  regMaxVec_1_comparatorModule_clock; // @[multiple_comparator.scala 293:34]
  wire  regMaxVec_1_comparatorModule_io_start; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_1_comparatorModule_io_inputs_0; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_1_comparatorModule_io_inputs_1; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_1_comparatorModule_io_inputs_2; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_1_comparatorModule_io_inputs_3; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_1_comparatorModule_io_inputs_4; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_1_comparatorModule_io_inputs_5; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_1_comparatorModule_io_result; // @[multiple_comparator.scala 293:34]
  wire  regMaxVec_2_comparatorModule_clock; // @[multiple_comparator.scala 293:34]
  wire  regMaxVec_2_comparatorModule_io_start; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_2_comparatorModule_io_inputs_0; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_2_comparatorModule_io_inputs_1; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_2_comparatorModule_io_inputs_2; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_2_comparatorModule_io_inputs_3; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_2_comparatorModule_io_result; // @[multiple_comparator.scala 293:34]
  wire  regMaxVec_3_comparatorModule_clock; // @[multiple_comparator.scala 293:34]
  wire  regMaxVec_3_comparatorModule_io_start; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_3_comparatorModule_io_inputs_0; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_3_comparatorModule_io_inputs_1; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_3_comparatorModule_io_inputs_2; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_3_comparatorModule_io_inputs_3; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_3_comparatorModule_io_inputs_4; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_3_comparatorModule_io_inputs_5; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_3_comparatorModule_io_result; // @[multiple_comparator.scala 293:34]
  wire  regMaxVec_4_comparatorModule_clock; // @[multiple_comparator.scala 293:34]
  wire  regMaxVec_4_comparatorModule_io_start; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_4_comparatorModule_io_inputs_0; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_4_comparatorModule_io_inputs_1; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_4_comparatorModule_io_inputs_2; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_4_comparatorModule_io_inputs_3; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_4_comparatorModule_io_inputs_4; // @[multiple_comparator.scala 293:34]
  wire [2:0] regMaxVec_4_comparatorModule_io_result; // @[multiple_comparator.scala 293:34]
  wire  outResult_comparatorModule_clock; // @[multiple_comparator.scala 293:34]
  wire  outResult_comparatorModule_io_start; // @[multiple_comparator.scala 293:34]
  wire [2:0] outResult_comparatorModule_io_inputs_0; // @[multiple_comparator.scala 293:34]
  wire [2:0] outResult_comparatorModule_io_inputs_1; // @[multiple_comparator.scala 293:34]
  wire [2:0] outResult_comparatorModule_io_inputs_2; // @[multiple_comparator.scala 293:34]
  wire [2:0] outResult_comparatorModule_io_inputs_3; // @[multiple_comparator.scala 293:34]
  wire [2:0] outResult_comparatorModule_io_inputs_4; // @[multiple_comparator.scala 293:34]
  wire [2:0] outResult_comparatorModule_io_result; // @[multiple_comparator.scala 293:34]
  reg [2:0] regMinVec_1; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_2; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_3; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_4; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_5; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_6; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_7; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_8; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_9; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_10; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_11; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_12; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_13; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_14; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_15; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_16; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_17; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_18; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_19; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_20; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_21; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_22; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_23; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMinVec_24; // @[regular_fuzzification.scala 144:22]
  reg [2:0] regMaxVec_0; // @[regular_fuzzification.scala 158:22]
  reg [2:0] regMaxVec_1; // @[regular_fuzzification.scala 158:22]
  reg [2:0] regMaxVec_2; // @[regular_fuzzification.scala 158:22]
  reg [2:0] regMaxVec_3; // @[regular_fuzzification.scala 158:22]
  reg [2:0] regMaxVec_4; // @[regular_fuzzification.scala 158:22]
  wire  regMinVec_1_maxMinOutput = regMinVec_1_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire  _GEN_6401 = ~regMinVec_1_maxMinOutput ? 1'h0 : 1'h1; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_2_maxMinOutput = regMinVec_2_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [1:0] _GEN_6402 = ~regMinVec_2_maxMinOutput ? 2'h0 : 2'h2; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_3_maxMinOutput = regMinVec_3_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [1:0] _GEN_6403 = ~regMinVec_3_maxMinOutput ? 2'h0 : 2'h3; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_4_maxMinOutput = regMinVec_4_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire  regMinVec_5_maxMinOutput = regMinVec_5_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire  regMinVec_6_maxMinOutput = regMinVec_6_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire  regMinVec_7_maxMinOutput = regMinVec_7_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire  regMinVec_8_maxMinOutput = regMinVec_8_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [3:0] _GEN_6408 = ~regMinVec_8_maxMinOutput ? 4'h1 : 4'h8; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_9_maxMinOutput = regMinVec_9_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [3:0] _GEN_6409 = ~regMinVec_9_maxMinOutput ? 4'h1 : 4'h9; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_10_maxMinOutput = regMinVec_10_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [3:0] _GEN_6410 = ~regMinVec_10_maxMinOutput ? 4'h2 : 4'ha; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_11_maxMinOutput = regMinVec_11_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [3:0] _GEN_6411 = ~regMinVec_11_maxMinOutput ? 4'h2 : 4'hb; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_12_maxMinOutput = regMinVec_12_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [3:0] _GEN_6412 = ~regMinVec_12_maxMinOutput ? 4'h2 : 4'hc; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_13_maxMinOutput = regMinVec_13_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [3:0] _GEN_6413 = ~regMinVec_13_maxMinOutput ? 4'h2 : 4'hd; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_14_maxMinOutput = regMinVec_14_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [3:0] _GEN_6414 = ~regMinVec_14_maxMinOutput ? 4'h2 : 4'he; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_15_maxMinOutput = regMinVec_15_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [3:0] _GEN_6415 = ~regMinVec_15_maxMinOutput ? 4'h3 : 4'hf; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_16_maxMinOutput = regMinVec_16_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [4:0] _GEN_6416 = ~regMinVec_16_maxMinOutput ? 5'h3 : 5'h10; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_17_maxMinOutput = regMinVec_17_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [4:0] _GEN_6417 = ~regMinVec_17_maxMinOutput ? 5'h3 : 5'h11; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_18_maxMinOutput = regMinVec_18_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [4:0] _GEN_6418 = ~regMinVec_18_maxMinOutput ? 5'h3 : 5'h12; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_19_maxMinOutput = regMinVec_19_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [4:0] _GEN_6419 = ~regMinVec_19_maxMinOutput ? 5'h3 : 5'h13; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_20_maxMinOutput = regMinVec_20_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [4:0] _GEN_6420 = ~regMinVec_20_maxMinOutput ? 5'h4 : 5'h14; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_21_maxMinOutput = regMinVec_21_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [4:0] _GEN_6421 = ~regMinVec_21_maxMinOutput ? 5'h4 : 5'h15; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_22_maxMinOutput = regMinVec_22_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [4:0] _GEN_6422 = ~regMinVec_22_maxMinOutput ? 5'h4 : 5'h16; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_23_maxMinOutput = regMinVec_23_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [4:0] _GEN_6423 = ~regMinVec_23_maxMinOutput ? 5'h4 : 5'h17; // @[comparator.scala 100:40 101:14 103:14]
  wire  regMinVec_24_maxMinOutput = regMinVec_24_comparatorModule_io_maxMin; // @[comparator.scala 71:28 90:18]
  wire [4:0] _GEN_6424 = ~regMinVec_24_maxMinOutput ? 5'h4 : 5'h18; // @[comparator.scala 100:40 101:14 103:14]
  wire [2:0] regMinVec_1_result = {{2'd0}, _GEN_6401}; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_2_result = {{1'd0}, _GEN_6402}; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_3_result = {{1'd0}, _GEN_6403}; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_8_result = _GEN_6408[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_9_result = _GEN_6409[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_10_result = _GEN_6410[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_11_result = _GEN_6411[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_12_result = _GEN_6412[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_13_result = _GEN_6413[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_14_result = _GEN_6414[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_15_result = _GEN_6415[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_16_result = _GEN_6416[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_17_result = _GEN_6417[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_18_result = _GEN_6418[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_19_result = _GEN_6419[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_20_result = _GEN_6420[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_21_result = _GEN_6421[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_22_result = _GEN_6422[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_23_result = _GEN_6423[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMinVec_24_result = _GEN_6424[2:0]; // @[comparator.scala 70:22]
  wire [2:0] regMaxVec_0_result = regMaxVec_0_comparatorModule_io_result; // @[multiple_comparator.scala 304:22 312:12]
  wire [2:0] regMaxVec_1_result = regMaxVec_1_comparatorModule_io_result; // @[multiple_comparator.scala 304:22 312:12]
  wire [2:0] regMaxVec_2_result = regMaxVec_2_comparatorModule_io_result; // @[multiple_comparator.scala 304:22 312:12]
  wire [2:0] regMaxVec_3_result = regMaxVec_3_comparatorModule_io_result; // @[multiple_comparator.scala 304:22 312:12]
  wire [2:0] regMaxVec_4_result = regMaxVec_4_comparatorModule_io_result; // @[multiple_comparator.scala 304:22 312:12]
  wire [2:0] outResult_result = outResult_comparatorModule_io_result; // @[multiple_comparator.scala 304:22 312:12]
  Comparator regMinVec_0_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_0_comparatorModule_io_in1),
    .io_in2(regMinVec_0_comparatorModule_io_in2),
    .io_maxMin(regMinVec_0_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_1_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_1_comparatorModule_io_in1),
    .io_in2(regMinVec_1_comparatorModule_io_in2),
    .io_maxMin(regMinVec_1_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_2_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_2_comparatorModule_io_in1),
    .io_in2(regMinVec_2_comparatorModule_io_in2),
    .io_maxMin(regMinVec_2_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_3_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_3_comparatorModule_io_in1),
    .io_in2(regMinVec_3_comparatorModule_io_in2),
    .io_maxMin(regMinVec_3_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_4_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_4_comparatorModule_io_in1),
    .io_in2(regMinVec_4_comparatorModule_io_in2),
    .io_maxMin(regMinVec_4_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_5_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_5_comparatorModule_io_in1),
    .io_in2(regMinVec_5_comparatorModule_io_in2),
    .io_maxMin(regMinVec_5_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_6_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_6_comparatorModule_io_in1),
    .io_in2(regMinVec_6_comparatorModule_io_in2),
    .io_maxMin(regMinVec_6_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_7_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_7_comparatorModule_io_in1),
    .io_in2(regMinVec_7_comparatorModule_io_in2),
    .io_maxMin(regMinVec_7_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_8_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_8_comparatorModule_io_in1),
    .io_in2(regMinVec_8_comparatorModule_io_in2),
    .io_maxMin(regMinVec_8_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_9_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_9_comparatorModule_io_in1),
    .io_in2(regMinVec_9_comparatorModule_io_in2),
    .io_maxMin(regMinVec_9_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_10_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_10_comparatorModule_io_in1),
    .io_in2(regMinVec_10_comparatorModule_io_in2),
    .io_maxMin(regMinVec_10_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_11_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_11_comparatorModule_io_in1),
    .io_in2(regMinVec_11_comparatorModule_io_in2),
    .io_maxMin(regMinVec_11_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_12_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_12_comparatorModule_io_in1),
    .io_in2(regMinVec_12_comparatorModule_io_in2),
    .io_maxMin(regMinVec_12_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_13_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_13_comparatorModule_io_in1),
    .io_in2(regMinVec_13_comparatorModule_io_in2),
    .io_maxMin(regMinVec_13_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_14_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_14_comparatorModule_io_in1),
    .io_in2(regMinVec_14_comparatorModule_io_in2),
    .io_maxMin(regMinVec_14_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_15_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_15_comparatorModule_io_in1),
    .io_in2(regMinVec_15_comparatorModule_io_in2),
    .io_maxMin(regMinVec_15_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_16_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_16_comparatorModule_io_in1),
    .io_in2(regMinVec_16_comparatorModule_io_in2),
    .io_maxMin(regMinVec_16_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_17_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_17_comparatorModule_io_in1),
    .io_in2(regMinVec_17_comparatorModule_io_in2),
    .io_maxMin(regMinVec_17_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_18_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_18_comparatorModule_io_in1),
    .io_in2(regMinVec_18_comparatorModule_io_in2),
    .io_maxMin(regMinVec_18_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_19_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_19_comparatorModule_io_in1),
    .io_in2(regMinVec_19_comparatorModule_io_in2),
    .io_maxMin(regMinVec_19_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_20_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_20_comparatorModule_io_in1),
    .io_in2(regMinVec_20_comparatorModule_io_in2),
    .io_maxMin(regMinVec_20_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_21_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_21_comparatorModule_io_in1),
    .io_in2(regMinVec_21_comparatorModule_io_in2),
    .io_maxMin(regMinVec_21_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_22_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_22_comparatorModule_io_in1),
    .io_in2(regMinVec_22_comparatorModule_io_in2),
    .io_maxMin(regMinVec_22_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_23_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_23_comparatorModule_io_in1),
    .io_in2(regMinVec_23_comparatorModule_io_in2),
    .io_maxMin(regMinVec_23_comparatorModule_io_maxMin)
  );
  Comparator regMinVec_24_comparatorModule ( // @[comparator.scala 69:34]
    .io_in1(regMinVec_24_comparatorModule_io_in1),
    .io_in2(regMinVec_24_comparatorModule_io_in2),
    .io_maxMin(regMinVec_24_comparatorModule_io_maxMin)
  );
  MultipleComparator regMaxVec_0_comparatorModule ( // @[multiple_comparator.scala 293:34]
    .clock(regMaxVec_0_comparatorModule_clock),
    .io_start(regMaxVec_0_comparatorModule_io_start),
    .io_inputs_0(regMaxVec_0_comparatorModule_io_inputs_0),
    .io_inputs_1(regMaxVec_0_comparatorModule_io_inputs_1),
    .io_inputs_2(regMaxVec_0_comparatorModule_io_inputs_2),
    .io_inputs_3(regMaxVec_0_comparatorModule_io_inputs_3),
    .io_result(regMaxVec_0_comparatorModule_io_result)
  );
  MultipleComparator_1 regMaxVec_1_comparatorModule ( // @[multiple_comparator.scala 293:34]
    .clock(regMaxVec_1_comparatorModule_clock),
    .io_start(regMaxVec_1_comparatorModule_io_start),
    .io_inputs_0(regMaxVec_1_comparatorModule_io_inputs_0),
    .io_inputs_1(regMaxVec_1_comparatorModule_io_inputs_1),
    .io_inputs_2(regMaxVec_1_comparatorModule_io_inputs_2),
    .io_inputs_3(regMaxVec_1_comparatorModule_io_inputs_3),
    .io_inputs_4(regMaxVec_1_comparatorModule_io_inputs_4),
    .io_inputs_5(regMaxVec_1_comparatorModule_io_inputs_5),
    .io_result(regMaxVec_1_comparatorModule_io_result)
  );
  MultipleComparator regMaxVec_2_comparatorModule ( // @[multiple_comparator.scala 293:34]
    .clock(regMaxVec_2_comparatorModule_clock),
    .io_start(regMaxVec_2_comparatorModule_io_start),
    .io_inputs_0(regMaxVec_2_comparatorModule_io_inputs_0),
    .io_inputs_1(regMaxVec_2_comparatorModule_io_inputs_1),
    .io_inputs_2(regMaxVec_2_comparatorModule_io_inputs_2),
    .io_inputs_3(regMaxVec_2_comparatorModule_io_inputs_3),
    .io_result(regMaxVec_2_comparatorModule_io_result)
  );
  MultipleComparator_1 regMaxVec_3_comparatorModule ( // @[multiple_comparator.scala 293:34]
    .clock(regMaxVec_3_comparatorModule_clock),
    .io_start(regMaxVec_3_comparatorModule_io_start),
    .io_inputs_0(regMaxVec_3_comparatorModule_io_inputs_0),
    .io_inputs_1(regMaxVec_3_comparatorModule_io_inputs_1),
    .io_inputs_2(regMaxVec_3_comparatorModule_io_inputs_2),
    .io_inputs_3(regMaxVec_3_comparatorModule_io_inputs_3),
    .io_inputs_4(regMaxVec_3_comparatorModule_io_inputs_4),
    .io_inputs_5(regMaxVec_3_comparatorModule_io_inputs_5),
    .io_result(regMaxVec_3_comparatorModule_io_result)
  );
  MultipleComparator_4 regMaxVec_4_comparatorModule ( // @[multiple_comparator.scala 293:34]
    .clock(regMaxVec_4_comparatorModule_clock),
    .io_start(regMaxVec_4_comparatorModule_io_start),
    .io_inputs_0(regMaxVec_4_comparatorModule_io_inputs_0),
    .io_inputs_1(regMaxVec_4_comparatorModule_io_inputs_1),
    .io_inputs_2(regMaxVec_4_comparatorModule_io_inputs_2),
    .io_inputs_3(regMaxVec_4_comparatorModule_io_inputs_3),
    .io_inputs_4(regMaxVec_4_comparatorModule_io_inputs_4),
    .io_result(regMaxVec_4_comparatorModule_io_result)
  );
  MultipleComparator_5 outResult_comparatorModule ( // @[multiple_comparator.scala 293:34]
    .clock(outResult_comparatorModule_clock),
    .io_start(outResult_comparatorModule_io_start),
    .io_inputs_0(outResult_comparatorModule_io_inputs_0),
    .io_inputs_1(outResult_comparatorModule_io_inputs_1),
    .io_inputs_2(outResult_comparatorModule_io_inputs_2),
    .io_inputs_3(outResult_comparatorModule_io_inputs_3),
    .io_inputs_4(outResult_comparatorModule_io_inputs_4),
    .io_result(outResult_comparatorModule_io_result)
  );
  assign io_outResultValid = 1'h0; // @[regular_fuzzification.scala 163:29 389:20]
  assign io_outResult = io_start ? outResult_result : 3'h0; // @[regular_fuzzification.scala 163:29 363:15 388:15]
  assign regMinVec_0_comparatorModule_io_in1 = 3'h0; // @[comparator.scala 76:29]
  assign regMinVec_0_comparatorModule_io_in2 = 3'h0; // @[comparator.scala 77:29]
  assign regMinVec_1_comparatorModule_io_in1 = 3'h0; // @[comparator.scala 76:29]
  assign regMinVec_1_comparatorModule_io_in2 = 3'h1; // @[comparator.scala 77:29]
  assign regMinVec_2_comparatorModule_io_in1 = 3'h0; // @[comparator.scala 76:29]
  assign regMinVec_2_comparatorModule_io_in2 = 3'h2; // @[comparator.scala 77:29]
  assign regMinVec_3_comparatorModule_io_in1 = 3'h0; // @[comparator.scala 76:29]
  assign regMinVec_3_comparatorModule_io_in2 = 3'h3; // @[comparator.scala 77:29]
  assign regMinVec_4_comparatorModule_io_in1 = 3'h0; // @[comparator.scala 76:29]
  assign regMinVec_4_comparatorModule_io_in2 = 3'h4; // @[comparator.scala 77:29]
  assign regMinVec_5_comparatorModule_io_in1 = 3'h1; // @[comparator.scala 76:29]
  assign regMinVec_5_comparatorModule_io_in2 = 3'h5; // @[comparator.scala 77:29]
  assign regMinVec_6_comparatorModule_io_in1 = 3'h1; // @[comparator.scala 76:29]
  assign regMinVec_6_comparatorModule_io_in2 = 3'h6; // @[comparator.scala 77:29]
  assign regMinVec_7_comparatorModule_io_in1 = 3'h1; // @[comparator.scala 76:29]
  assign regMinVec_7_comparatorModule_io_in2 = 3'h7; // @[comparator.scala 77:29]
  assign regMinVec_8_comparatorModule_io_in1 = 3'h1; // @[comparator.scala 76:29]
  assign regMinVec_8_comparatorModule_io_in2 = 3'h0; // @[comparator.scala 77:29]
  assign regMinVec_9_comparatorModule_io_in1 = 3'h1; // @[comparator.scala 76:29]
  assign regMinVec_9_comparatorModule_io_in2 = 3'h1; // @[comparator.scala 77:29]
  assign regMinVec_10_comparatorModule_io_in1 = 3'h2; // @[comparator.scala 76:29]
  assign regMinVec_10_comparatorModule_io_in2 = 3'h2; // @[comparator.scala 77:29]
  assign regMinVec_11_comparatorModule_io_in1 = 3'h2; // @[comparator.scala 76:29]
  assign regMinVec_11_comparatorModule_io_in2 = 3'h3; // @[comparator.scala 77:29]
  assign regMinVec_12_comparatorModule_io_in1 = 3'h2; // @[comparator.scala 76:29]
  assign regMinVec_12_comparatorModule_io_in2 = 3'h4; // @[comparator.scala 77:29]
  assign regMinVec_13_comparatorModule_io_in1 = 3'h2; // @[comparator.scala 76:29]
  assign regMinVec_13_comparatorModule_io_in2 = 3'h5; // @[comparator.scala 77:29]
  assign regMinVec_14_comparatorModule_io_in1 = 3'h2; // @[comparator.scala 76:29]
  assign regMinVec_14_comparatorModule_io_in2 = 3'h6; // @[comparator.scala 77:29]
  assign regMinVec_15_comparatorModule_io_in1 = 3'h3; // @[comparator.scala 76:29]
  assign regMinVec_15_comparatorModule_io_in2 = 3'h7; // @[comparator.scala 77:29]
  assign regMinVec_16_comparatorModule_io_in1 = 3'h3; // @[comparator.scala 76:29]
  assign regMinVec_16_comparatorModule_io_in2 = 3'h0; // @[comparator.scala 77:29]
  assign regMinVec_17_comparatorModule_io_in1 = 3'h3; // @[comparator.scala 76:29]
  assign regMinVec_17_comparatorModule_io_in2 = 3'h1; // @[comparator.scala 77:29]
  assign regMinVec_18_comparatorModule_io_in1 = 3'h3; // @[comparator.scala 76:29]
  assign regMinVec_18_comparatorModule_io_in2 = 3'h2; // @[comparator.scala 77:29]
  assign regMinVec_19_comparatorModule_io_in1 = 3'h3; // @[comparator.scala 76:29]
  assign regMinVec_19_comparatorModule_io_in2 = 3'h3; // @[comparator.scala 77:29]
  assign regMinVec_20_comparatorModule_io_in1 = 3'h4; // @[comparator.scala 76:29]
  assign regMinVec_20_comparatorModule_io_in2 = 3'h4; // @[comparator.scala 77:29]
  assign regMinVec_21_comparatorModule_io_in1 = 3'h4; // @[comparator.scala 76:29]
  assign regMinVec_21_comparatorModule_io_in2 = 3'h5; // @[comparator.scala 77:29]
  assign regMinVec_22_comparatorModule_io_in1 = 3'h4; // @[comparator.scala 76:29]
  assign regMinVec_22_comparatorModule_io_in2 = 3'h6; // @[comparator.scala 77:29]
  assign regMinVec_23_comparatorModule_io_in1 = 3'h4; // @[comparator.scala 76:29]
  assign regMinVec_23_comparatorModule_io_in2 = 3'h7; // @[comparator.scala 77:29]
  assign regMinVec_24_comparatorModule_io_in1 = 3'h4; // @[comparator.scala 76:29]
  assign regMinVec_24_comparatorModule_io_in2 = 3'h0; // @[comparator.scala 77:29]
  assign regMaxVec_0_comparatorModule_clock = clock;
  assign regMaxVec_0_comparatorModule_io_start = io_start; // @[multiple_comparator.scala 309:31]
  assign regMaxVec_0_comparatorModule_io_inputs_0 = 3'h0; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_0_comparatorModule_io_inputs_1 = regMinVec_1; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_0_comparatorModule_io_inputs_2 = regMinVec_2; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_0_comparatorModule_io_inputs_3 = regMinVec_5; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_1_comparatorModule_clock = clock;
  assign regMaxVec_1_comparatorModule_io_start = io_start; // @[multiple_comparator.scala 309:31]
  assign regMaxVec_1_comparatorModule_io_inputs_0 = regMinVec_3; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_1_comparatorModule_io_inputs_1 = regMinVec_4; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_1_comparatorModule_io_inputs_2 = regMinVec_6; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_1_comparatorModule_io_inputs_3 = regMinVec_7; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_1_comparatorModule_io_inputs_4 = regMinVec_8; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_1_comparatorModule_io_inputs_5 = regMinVec_10; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_2_comparatorModule_clock = clock;
  assign regMaxVec_2_comparatorModule_io_start = io_start; // @[multiple_comparator.scala 309:31]
  assign regMaxVec_2_comparatorModule_io_inputs_0 = regMinVec_9; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_2_comparatorModule_io_inputs_1 = regMinVec_11; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_2_comparatorModule_io_inputs_2 = regMinVec_12; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_2_comparatorModule_io_inputs_3 = regMinVec_15; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_3_comparatorModule_clock = clock;
  assign regMaxVec_3_comparatorModule_io_start = io_start; // @[multiple_comparator.scala 309:31]
  assign regMaxVec_3_comparatorModule_io_inputs_0 = regMinVec_13; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_3_comparatorModule_io_inputs_1 = regMinVec_14; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_3_comparatorModule_io_inputs_2 = regMinVec_16; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_3_comparatorModule_io_inputs_3 = regMinVec_17; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_3_comparatorModule_io_inputs_4 = regMinVec_20; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_3_comparatorModule_io_inputs_5 = regMinVec_21; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_4_comparatorModule_clock = clock;
  assign regMaxVec_4_comparatorModule_io_start = io_start; // @[multiple_comparator.scala 309:31]
  assign regMaxVec_4_comparatorModule_io_inputs_0 = regMinVec_18; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_4_comparatorModule_io_inputs_1 = regMinVec_19; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_4_comparatorModule_io_inputs_2 = regMinVec_22; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_4_comparatorModule_io_inputs_3 = regMinVec_23; // @[regular_fuzzification.scala 294:15 297:30]
  assign regMaxVec_4_comparatorModule_io_inputs_4 = regMinVec_24; // @[regular_fuzzification.scala 294:15 297:30]
  assign outResult_comparatorModule_clock = clock;
  assign outResult_comparatorModule_io_start = io_start; // @[multiple_comparator.scala 309:31]
  assign outResult_comparatorModule_io_inputs_0 = regMaxVec_0; // @[regular_fuzzification.scala 346:11 353:40]
  assign outResult_comparatorModule_io_inputs_1 = regMaxVec_1; // @[regular_fuzzification.scala 346:11 353:40]
  assign outResult_comparatorModule_io_inputs_2 = regMaxVec_2; // @[regular_fuzzification.scala 346:11 353:40]
  assign outResult_comparatorModule_io_inputs_3 = regMaxVec_3; // @[regular_fuzzification.scala 346:11 353:40]
  assign outResult_comparatorModule_io_inputs_4 = regMaxVec_4; // @[regular_fuzzification.scala 346:11 353:40]
  always @(posedge clock) begin
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_1 <= regMinVec_1_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_2 <= regMinVec_2_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_3 <= regMinVec_3_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      if (~regMinVec_4_maxMinOutput) begin // @[comparator.scala 100:40]
        regMinVec_4 <= 3'h0; // @[comparator.scala 101:14]
      end else begin
        regMinVec_4 <= 3'h4; // @[comparator.scala 103:14]
      end
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      if (~regMinVec_5_maxMinOutput) begin // @[comparator.scala 100:40]
        regMinVec_5 <= 3'h1; // @[comparator.scala 101:14]
      end else begin
        regMinVec_5 <= 3'h5; // @[comparator.scala 103:14]
      end
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      if (~regMinVec_6_maxMinOutput) begin // @[comparator.scala 100:40]
        regMinVec_6 <= 3'h1; // @[comparator.scala 101:14]
      end else begin
        regMinVec_6 <= 3'h6; // @[comparator.scala 103:14]
      end
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      if (~regMinVec_7_maxMinOutput) begin // @[comparator.scala 100:40]
        regMinVec_7 <= 3'h1; // @[comparator.scala 101:14]
      end else begin
        regMinVec_7 <= 3'h7; // @[comparator.scala 103:14]
      end
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_8 <= regMinVec_8_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_9 <= regMinVec_9_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_10 <= regMinVec_10_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_11 <= regMinVec_11_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_12 <= regMinVec_12_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_13 <= regMinVec_13_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_14 <= regMinVec_14_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_15 <= regMinVec_15_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_16 <= regMinVec_16_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_17 <= regMinVec_17_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_18 <= regMinVec_18_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_19 <= regMinVec_19_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_20 <= regMinVec_20_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_21 <= regMinVec_21_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_22 <= regMinVec_22_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_23 <= regMinVec_23_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMinVec_24 <= regMinVec_24_result; // @[regular_fuzzification.scala 240:20]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMaxVec_0 <= regMaxVec_0_result; // @[regular_fuzzification.scala 300:39]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMaxVec_1 <= regMaxVec_1_result; // @[regular_fuzzification.scala 300:39]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMaxVec_2 <= regMaxVec_2_result; // @[regular_fuzzification.scala 300:39]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMaxVec_3 <= regMaxVec_3_result; // @[regular_fuzzification.scala 300:39]
    end
    if (io_start) begin // @[regular_fuzzification.scala 163:29]
      regMaxVec_4 <= regMaxVec_4_result; // @[regular_fuzzification.scala 300:39]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h0,1'h0); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h0,1'h1); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h0,2'h2); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h0,2'h3); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h0,3'h4); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h1,3'h5); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h1,3'h6); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h1,3'h7); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h1,4'h8); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h1,4'h9); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h2,4'ha); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h2,4'hb); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h2,4'hc); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h2,4'hd); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h2,4'he); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h3,4'hf); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h3,5'h10); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h3,5'h11); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h3,5'h12); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h3,5'h13); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,3'h4,5'h14); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,3'h4,5'h15); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,3'h4,5'h16); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,3'h4,5'h17); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,3'h4,5'h18); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
