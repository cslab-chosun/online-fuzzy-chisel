module FuzzyController(
  input   clock,
  input   reset,
  input   io_start,
  input   io_in1_0,
  input   io_in1_1,
  input   io_in1_2,
  input   io_in1_3,
  input   io_in1_4,
  input   io_in1_5,
  input   io_in1_6,
  input   io_in1_7,
  input   io_in2_0,
  input   io_in2_1,
  input   io_in2_2,
  input   io_in2_3,
  input   io_in2_4,
  input   io_in2_5,
  input   io_in2_6,
  input   io_in2_7,
  output  io_outResultValid,
  output  io_outResult
);
  wire  minMaxTree_clock; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_reset; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_start; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in1_0; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in1_1; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in1_2; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in1_3; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in1_4; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in1_5; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in1_6; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in1_7; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in2_0; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in2_1; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in2_2; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in2_3; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in2_4; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in2_5; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in2_6; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_in2_7; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_outResultValid; // @[min_max_parallel_online_comparator.scala 236:28]
  wire  minMaxTree_io_outResult; // @[min_max_parallel_online_comparator.scala 236:28]
  MinMaxParallelOnlineComparator minMaxTree ( // @[min_max_parallel_online_comparator.scala 236:28]
    .clock(minMaxTree_clock),
    .reset(minMaxTree_reset),
    .io_start(minMaxTree_io_start),
    .io_in1_0(minMaxTree_io_in1_0),
    .io_in1_1(minMaxTree_io_in1_1),
    .io_in1_2(minMaxTree_io_in1_2),
    .io_in1_3(minMaxTree_io_in1_3),
    .io_in1_4(minMaxTree_io_in1_4),
    .io_in1_5(minMaxTree_io_in1_5),
    .io_in1_6(minMaxTree_io_in1_6),
    .io_in1_7(minMaxTree_io_in1_7),
    .io_in2_0(minMaxTree_io_in2_0),
    .io_in2_1(minMaxTree_io_in2_1),
    .io_in2_2(minMaxTree_io_in2_2),
    .io_in2_3(minMaxTree_io_in2_3),
    .io_in2_4(minMaxTree_io_in2_4),
    .io_in2_5(minMaxTree_io_in2_5),
    .io_in2_6(minMaxTree_io_in2_6),
    .io_in2_7(minMaxTree_io_in2_7),
    .io_outResultValid(minMaxTree_io_outResultValid),
    .io_outResult(minMaxTree_io_outResult)
  );
  assign io_outResultValid = minMaxTree_io_outResultValid; // @[min_max_parallel_online_comparator.scala 240:30 250:20]
  assign io_outResult = minMaxTree_io_outResult; // @[min_max_parallel_online_comparator.scala 239:25 248:15]
  assign minMaxTree_clock = clock;
  assign minMaxTree_reset = reset;
  assign minMaxTree_io_start = io_start; // @[min_max_parallel_online_comparator.scala 242:25]
  assign minMaxTree_io_in1_0 = io_in1_0; // @[min_max_parallel_online_comparator.scala 245:23]
  assign minMaxTree_io_in1_1 = io_in1_1; // @[min_max_parallel_online_comparator.scala 245:23]
  assign minMaxTree_io_in1_2 = io_in1_2; // @[min_max_parallel_online_comparator.scala 245:23]
  assign minMaxTree_io_in1_3 = io_in1_3; // @[min_max_parallel_online_comparator.scala 245:23]
  assign minMaxTree_io_in1_4 = io_in1_4; // @[min_max_parallel_online_comparator.scala 245:23]
  assign minMaxTree_io_in1_5 = io_in1_5; // @[min_max_parallel_online_comparator.scala 245:23]
  assign minMaxTree_io_in1_6 = io_in1_6; // @[min_max_parallel_online_comparator.scala 245:23]
  assign minMaxTree_io_in1_7 = io_in1_7; // @[min_max_parallel_online_comparator.scala 245:23]
  assign minMaxTree_io_in2_0 = io_in2_0; // @[min_max_parallel_online_comparator.scala 246:23]
  assign minMaxTree_io_in2_1 = io_in2_1; // @[min_max_parallel_online_comparator.scala 246:23]
  assign minMaxTree_io_in2_2 = io_in2_2; // @[min_max_parallel_online_comparator.scala 246:23]
  assign minMaxTree_io_in2_3 = io_in2_3; // @[min_max_parallel_online_comparator.scala 246:23]
  assign minMaxTree_io_in2_4 = io_in2_4; // @[min_max_parallel_online_comparator.scala 246:23]
  assign minMaxTree_io_in2_5 = io_in2_5; // @[min_max_parallel_online_comparator.scala 246:23]
  assign minMaxTree_io_in2_6 = io_in2_6; // @[min_max_parallel_online_comparator.scala 246:23]
  assign minMaxTree_io_in2_7 = io_in2_7; // @[min_max_parallel_online_comparator.scala 246:23]
endmodule
