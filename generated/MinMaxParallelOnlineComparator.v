module MinMaxParallelOnlineComparator(
  input   clock,
  input   reset,
  input   io_start,
  input   io_in1_0,
  input   io_in1_1,
  input   io_in1_2,
  input   io_in1_3,
  input   io_in1_4,
  input   io_in1_5,
  input   io_in2_0,
  input   io_in2_1,
  input   io_in2_2,
  input   io_in2_3,
  input   io_in2_4,
  input   io_in2_5,
  output  io_outResultValid,
  output  io_outResult
);
  wire  comparatorModule_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_4_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_4_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_4_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_4_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_4_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_4_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_4_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_4_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_4_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_5_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_5_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_5_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_5_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_5_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_5_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_5_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_5_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_5_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_6_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_6_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_6_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_6_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_6_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_6_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_6_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_6_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_6_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_7_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_7_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_7_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_7_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_7_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_7_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_7_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_7_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_7_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_8_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_8_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_8_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_8_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_8_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_8_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_8_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_8_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_8_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_9_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_9_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_9_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_9_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_9_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_9_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_9_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_9_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_9_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_10_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_10_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_10_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_10_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_10_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_10_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_10_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_10_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_10_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_11_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_11_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_11_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_11_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_11_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_11_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_11_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_11_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_11_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_12_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_12_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_12_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_12_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_12_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_12_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_12_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_12_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_12_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_13_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_13_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_13_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_13_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_13_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_13_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_13_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_13_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_13_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_14_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_14_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_14_io_start; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_14_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_14_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_14_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_14_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_14_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_14_io_maxMin; // @[online_comparator2.scala 181:34]
  reg  outResultValid; // @[min_max_parallel_online_comparator.scala 58:31]
  reg  regStorageVec_0_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_0_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_0_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_1_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_1_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_1_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_2_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_2_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_2_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_3_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_3_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_3_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_4_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_4_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_4_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_5_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_5_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_5_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_6_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_6_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_6_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_7_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_8_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_9_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_10_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_11_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_12_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_13_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  regStorageVec_14_minMaxOutput; // @[min_max_parallel_online_comparator.scala 60:26]
  reg  state; // @[min_max_parallel_online_comparator.scala 63:22]
  reg [3:0] currentIteration; // @[min_max_parallel_online_comparator.scala 65:33]
  wire  _T_1 = ~state; // @[min_max_parallel_online_comparator.scala 76:19]
  wire [3:0] _currentIteration_T_1 = currentIteration + 4'h1; // @[min_max_parallel_online_comparator.scala 80:46]
  wire [3:0] _T_3 = 4'h8 - 4'h1; // @[min_max_parallel_online_comparator.scala 83:46]
  wire [3:0] _T_5 = _T_3 + 4'h3; // @[min_max_parallel_online_comparator.scala 83:52]
  wire  _T_6 = currentIteration != _T_5; // @[min_max_parallel_online_comparator.scala 83:28]
  wire  _GEN_0 = currentIteration == 4'h3 | outResultValid; // @[min_max_parallel_online_comparator.scala 88:62 89:28 58:31]
  wire  _T_9 = ~reset; // @[online_comparator2.scala 204:13]
  wire  earlyTerminate1 = comparatorModule_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_1 = comparatorModule_1_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_2 = comparatorModule_2_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_3 = comparatorModule_3_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_4 = comparatorModule_4_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_5 = comparatorModule_5_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_6 = comparatorModule_6_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_7 = comparatorModule_7_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_8 = comparatorModule_8_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_9 = comparatorModule_9_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_10 = comparatorModule_10_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_11 = comparatorModule_11_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_12 = comparatorModule_12_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_13 = comparatorModule_13_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  earlyTerminate1_14 = comparatorModule_14_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  _GEN_1 = _T_6 & _GEN_0; // @[min_max_parallel_online_comparator.scala 86:11 180:26]
  wire  _GEN_3 = _T_6 ? earlyTerminate1 : regStorageVec_0_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 86:11 107:49 60:26]
  wire  earlyTerminate2 = comparatorModule_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  _GEN_4 = _T_6 ? earlyTerminate2 : regStorageVec_0_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 86:11 108:49 60:26]
  wire  maxOutput = comparatorModule_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_5 = _T_6 ? maxOutput : regStorageVec_0_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 109:45 60:26]
  wire  _GEN_7 = _T_6 ? earlyTerminate1_1 : regStorageVec_1_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 86:11 107:49 60:26]
  wire  earlyTerminate2_1 = comparatorModule_1_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  _GEN_8 = _T_6 ? earlyTerminate2_1 : regStorageVec_1_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 86:11 108:49 60:26]
  wire  maxOutput_1 = comparatorModule_1_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_9 = _T_6 ? maxOutput_1 : regStorageVec_1_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 109:45 60:26]
  wire  _GEN_11 = _T_6 ? earlyTerminate1_2 : regStorageVec_2_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 86:11 107:49 60:26]
  wire  earlyTerminate2_2 = comparatorModule_2_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  _GEN_12 = _T_6 ? earlyTerminate2_2 : regStorageVec_2_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 86:11 108:49 60:26]
  wire  maxOutput_2 = comparatorModule_2_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_13 = _T_6 ? maxOutput_2 : regStorageVec_2_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 109:45 60:26]
  wire  _GEN_15 = _T_6 ? earlyTerminate1_3 : regStorageVec_3_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 86:11 107:49 60:26]
  wire  earlyTerminate2_3 = comparatorModule_3_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  _GEN_16 = _T_6 ? earlyTerminate2_3 : regStorageVec_3_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 86:11 108:49 60:26]
  wire  maxOutput_3 = comparatorModule_3_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_17 = _T_6 ? maxOutput_3 : regStorageVec_3_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 109:45 60:26]
  wire  _GEN_19 = _T_6 ? earlyTerminate1_4 : regStorageVec_4_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 86:11 107:49 60:26]
  wire  earlyTerminate2_4 = comparatorModule_4_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  _GEN_20 = _T_6 ? earlyTerminate2_4 : regStorageVec_4_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 86:11 108:49 60:26]
  wire  maxOutput_4 = comparatorModule_4_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_21 = _T_6 ? maxOutput_4 : regStorageVec_4_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 109:45 60:26]
  wire  _GEN_23 = _T_6 ? earlyTerminate1_5 : regStorageVec_5_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 86:11 107:49 60:26]
  wire  earlyTerminate2_5 = comparatorModule_5_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  _GEN_24 = _T_6 ? earlyTerminate2_5 : regStorageVec_5_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 86:11 108:49 60:26]
  wire  maxOutput_5 = comparatorModule_5_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_25 = _T_6 ? maxOutput_5 : regStorageVec_5_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 109:45 60:26]
  wire  _GEN_27 = _T_6 ? earlyTerminate1_6 : regStorageVec_6_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 86:11 107:49 60:26]
  wire  earlyTerminate2_6 = comparatorModule_6_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  _GEN_28 = _T_6 ? earlyTerminate2_6 : regStorageVec_6_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 86:11 108:49 60:26]
  wire  maxOutput_6 = comparatorModule_6_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_29 = _T_6 ? maxOutput_6 : regStorageVec_6_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 109:45 60:26]
  wire  earlyTerminate2_7 = comparatorModule_7_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  minOutput = comparatorModule_7_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_33 = _T_6 ? minOutput : regStorageVec_7_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 150:45 60:26]
  wire  earlyTerminate2_8 = comparatorModule_8_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  minOutput_1 = comparatorModule_8_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_37 = _T_6 ? minOutput_1 : regStorageVec_8_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 150:45 60:26]
  wire  earlyTerminate2_9 = comparatorModule_9_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  minOutput_2 = comparatorModule_9_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_41 = _T_6 ? minOutput_2 : regStorageVec_9_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 150:45 60:26]
  wire  earlyTerminate2_10 = comparatorModule_10_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  minOutput_3 = comparatorModule_10_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_45 = _T_6 ? minOutput_3 : regStorageVec_10_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 150:45 60:26]
  wire  earlyTerminate2_11 = comparatorModule_11_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  minOutput_4 = comparatorModule_11_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_49 = _T_6 ? minOutput_4 : regStorageVec_11_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 150:45 60:26]
  wire  earlyTerminate2_12 = comparatorModule_12_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  minOutput_5 = comparatorModule_12_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_53 = _T_6 ? minOutput_5 : regStorageVec_12_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 150:45 60:26]
  wire  earlyTerminate2_13 = comparatorModule_13_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  minOutput_6 = comparatorModule_13_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_57 = _T_6 ? minOutput_6 : regStorageVec_13_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 150:45 60:26]
  wire  earlyTerminate2_14 = comparatorModule_14_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  minOutput_7 = comparatorModule_14_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
  wire  _GEN_61 = _T_6 ? minOutput_7 : regStorageVec_14_minMaxOutput; // @[min_max_parallel_online_comparator.scala 86:11 150:45 60:26]
  wire  _GEN_62 = _T_6 ? state : 1'h1; // @[min_max_parallel_online_comparator.scala 86:11 179:17 63:22]
  wire  _GEN_63 = state ? 1'h0 : outResultValid; // @[min_max_parallel_online_comparator.scala 76:19 188:24 58:31]
  wire  _GEN_65 = ~state ? _GEN_1 : _GEN_63; // @[min_max_parallel_online_comparator.scala 76:19]
  wire  _GEN_67 = ~state ? _GEN_3 : regStorageVec_0_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_68 = ~state ? _GEN_4 : regStorageVec_0_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_69 = ~state ? _GEN_5 : regStorageVec_0_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_71 = ~state ? _GEN_7 : regStorageVec_1_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_72 = ~state ? _GEN_8 : regStorageVec_1_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_73 = ~state ? _GEN_9 : regStorageVec_1_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_75 = ~state ? _GEN_11 : regStorageVec_2_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_76 = ~state ? _GEN_12 : regStorageVec_2_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_77 = ~state ? _GEN_13 : regStorageVec_2_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_79 = ~state ? _GEN_15 : regStorageVec_3_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_80 = ~state ? _GEN_16 : regStorageVec_3_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_81 = ~state ? _GEN_17 : regStorageVec_3_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_83 = ~state ? _GEN_19 : regStorageVec_4_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_84 = ~state ? _GEN_20 : regStorageVec_4_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_85 = ~state ? _GEN_21 : regStorageVec_4_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_87 = ~state ? _GEN_23 : regStorageVec_5_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_88 = ~state ? _GEN_24 : regStorageVec_5_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_89 = ~state ? _GEN_25 : regStorageVec_5_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_91 = ~state ? _GEN_27 : regStorageVec_6_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_92 = ~state ? _GEN_28 : regStorageVec_6_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_93 = ~state ? _GEN_29 : regStorageVec_6_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_97 = ~state ? _GEN_33 : regStorageVec_7_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_101 = ~state ? _GEN_37 : regStorageVec_8_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_105 = ~state ? _GEN_41 : regStorageVec_9_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_109 = ~state ? _GEN_45 : regStorageVec_10_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_113 = ~state ? _GEN_49 : regStorageVec_11_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_117 = ~state ? _GEN_53 : regStorageVec_12_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_121 = ~state ? _GEN_57 : regStorageVec_13_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_125 = ~state ? _GEN_61 : regStorageVec_14_minMaxOutput; // @[min_max_parallel_online_comparator.scala 76:19 60:26]
  wire  _GEN_126 = ~state ? _GEN_62 : state; // @[min_max_parallel_online_comparator.scala 76:19 63:22]
  wire  _GEN_128 = io_start & _GEN_65; // @[min_max_parallel_online_comparator.scala 197:20 74:29]
  wire  _GEN_189 = io_start & _GEN_126; // @[min_max_parallel_online_comparator.scala 198:11 74:29]
  wire  _GEN_206 = io_start & _T_1 & _T_6; // @[online_comparator2.scala 204:13]
  OnlineComparator2 comparatorModule ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_clock),
    .reset(comparatorModule_reset),
    .io_start(comparatorModule_io_start),
    .io_earlyTerminate(comparatorModule_io_earlyTerminate),
    .io_in1(comparatorModule_io_in1),
    .io_in2(comparatorModule_io_in2),
    .io_earlyTerminate1(comparatorModule_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_io_earlyTerminate2),
    .io_maxMin(comparatorModule_io_maxMin)
  );
  OnlineComparator2 comparatorModule_1 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_1_clock),
    .reset(comparatorModule_1_reset),
    .io_start(comparatorModule_1_io_start),
    .io_earlyTerminate(comparatorModule_1_io_earlyTerminate),
    .io_in1(comparatorModule_1_io_in1),
    .io_in2(comparatorModule_1_io_in2),
    .io_earlyTerminate1(comparatorModule_1_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_1_io_earlyTerminate2),
    .io_maxMin(comparatorModule_1_io_maxMin)
  );
  OnlineComparator2 comparatorModule_2 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_2_clock),
    .reset(comparatorModule_2_reset),
    .io_start(comparatorModule_2_io_start),
    .io_earlyTerminate(comparatorModule_2_io_earlyTerminate),
    .io_in1(comparatorModule_2_io_in1),
    .io_in2(comparatorModule_2_io_in2),
    .io_earlyTerminate1(comparatorModule_2_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_2_io_earlyTerminate2),
    .io_maxMin(comparatorModule_2_io_maxMin)
  );
  OnlineComparator2 comparatorModule_3 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_3_clock),
    .reset(comparatorModule_3_reset),
    .io_start(comparatorModule_3_io_start),
    .io_earlyTerminate(comparatorModule_3_io_earlyTerminate),
    .io_in1(comparatorModule_3_io_in1),
    .io_in2(comparatorModule_3_io_in2),
    .io_earlyTerminate1(comparatorModule_3_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_3_io_earlyTerminate2),
    .io_maxMin(comparatorModule_3_io_maxMin)
  );
  OnlineComparator2 comparatorModule_4 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_4_clock),
    .reset(comparatorModule_4_reset),
    .io_start(comparatorModule_4_io_start),
    .io_earlyTerminate(comparatorModule_4_io_earlyTerminate),
    .io_in1(comparatorModule_4_io_in1),
    .io_in2(comparatorModule_4_io_in2),
    .io_earlyTerminate1(comparatorModule_4_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_4_io_earlyTerminate2),
    .io_maxMin(comparatorModule_4_io_maxMin)
  );
  OnlineComparator2 comparatorModule_5 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_5_clock),
    .reset(comparatorModule_5_reset),
    .io_start(comparatorModule_5_io_start),
    .io_earlyTerminate(comparatorModule_5_io_earlyTerminate),
    .io_in1(comparatorModule_5_io_in1),
    .io_in2(comparatorModule_5_io_in2),
    .io_earlyTerminate1(comparatorModule_5_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_5_io_earlyTerminate2),
    .io_maxMin(comparatorModule_5_io_maxMin)
  );
  OnlineComparator2 comparatorModule_6 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_6_clock),
    .reset(comparatorModule_6_reset),
    .io_start(comparatorModule_6_io_start),
    .io_earlyTerminate(comparatorModule_6_io_earlyTerminate),
    .io_in1(comparatorModule_6_io_in1),
    .io_in2(comparatorModule_6_io_in2),
    .io_earlyTerminate1(comparatorModule_6_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_6_io_earlyTerminate2),
    .io_maxMin(comparatorModule_6_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_7 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_7_clock),
    .reset(comparatorModule_7_reset),
    .io_start(comparatorModule_7_io_start),
    .io_earlyTerminate(comparatorModule_7_io_earlyTerminate),
    .io_in1(comparatorModule_7_io_in1),
    .io_in2(comparatorModule_7_io_in2),
    .io_earlyTerminate1(comparatorModule_7_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_7_io_earlyTerminate2),
    .io_maxMin(comparatorModule_7_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_8 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_8_clock),
    .reset(comparatorModule_8_reset),
    .io_start(comparatorModule_8_io_start),
    .io_earlyTerminate(comparatorModule_8_io_earlyTerminate),
    .io_in1(comparatorModule_8_io_in1),
    .io_in2(comparatorModule_8_io_in2),
    .io_earlyTerminate1(comparatorModule_8_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_8_io_earlyTerminate2),
    .io_maxMin(comparatorModule_8_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_9 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_9_clock),
    .reset(comparatorModule_9_reset),
    .io_start(comparatorModule_9_io_start),
    .io_earlyTerminate(comparatorModule_9_io_earlyTerminate),
    .io_in1(comparatorModule_9_io_in1),
    .io_in2(comparatorModule_9_io_in2),
    .io_earlyTerminate1(comparatorModule_9_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_9_io_earlyTerminate2),
    .io_maxMin(comparatorModule_9_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_10 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_10_clock),
    .reset(comparatorModule_10_reset),
    .io_start(comparatorModule_10_io_start),
    .io_earlyTerminate(comparatorModule_10_io_earlyTerminate),
    .io_in1(comparatorModule_10_io_in1),
    .io_in2(comparatorModule_10_io_in2),
    .io_earlyTerminate1(comparatorModule_10_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_10_io_earlyTerminate2),
    .io_maxMin(comparatorModule_10_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_11 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_11_clock),
    .reset(comparatorModule_11_reset),
    .io_start(comparatorModule_11_io_start),
    .io_earlyTerminate(comparatorModule_11_io_earlyTerminate),
    .io_in1(comparatorModule_11_io_in1),
    .io_in2(comparatorModule_11_io_in2),
    .io_earlyTerminate1(comparatorModule_11_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_11_io_earlyTerminate2),
    .io_maxMin(comparatorModule_11_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_12 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_12_clock),
    .reset(comparatorModule_12_reset),
    .io_start(comparatorModule_12_io_start),
    .io_earlyTerminate(comparatorModule_12_io_earlyTerminate),
    .io_in1(comparatorModule_12_io_in1),
    .io_in2(comparatorModule_12_io_in2),
    .io_earlyTerminate1(comparatorModule_12_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_12_io_earlyTerminate2),
    .io_maxMin(comparatorModule_12_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_13 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_13_clock),
    .reset(comparatorModule_13_reset),
    .io_start(comparatorModule_13_io_start),
    .io_earlyTerminate(comparatorModule_13_io_earlyTerminate),
    .io_in1(comparatorModule_13_io_in1),
    .io_in2(comparatorModule_13_io_in2),
    .io_earlyTerminate1(comparatorModule_13_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_13_io_earlyTerminate2),
    .io_maxMin(comparatorModule_13_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_14 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_14_clock),
    .reset(comparatorModule_14_reset),
    .io_start(comparatorModule_14_io_start),
    .io_earlyTerminate(comparatorModule_14_io_earlyTerminate),
    .io_in1(comparatorModule_14_io_in1),
    .io_in2(comparatorModule_14_io_in2),
    .io_earlyTerminate1(comparatorModule_14_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_14_io_earlyTerminate2),
    .io_maxMin(comparatorModule_14_io_maxMin)
  );
  assign io_outResultValid = outResultValid; // @[min_max_parallel_online_comparator.scala 221:21]
  assign io_outResult = regStorageVec_0_minMaxOutput; // @[min_max_parallel_online_comparator.scala 220:16]
  assign comparatorModule_clock = clock;
  assign comparatorModule_reset = reset;
  assign comparatorModule_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_io_earlyTerminate = regStorageVec_0_earlyTerminated2; // @[online_comparator2.scala 194:40]
  assign comparatorModule_io_in1 = regStorageVec_1_minMaxOutput; // @[online_comparator2.scala 191:29]
  assign comparatorModule_io_in2 = regStorageVec_2_minMaxOutput; // @[online_comparator2.scala 192:29]
  assign comparatorModule_1_clock = clock;
  assign comparatorModule_1_reset = reset;
  assign comparatorModule_1_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_1_io_earlyTerminate = regStorageVec_0_earlyTerminated1; // @[online_comparator2.scala 194:40]
  assign comparatorModule_1_io_in1 = regStorageVec_3_minMaxOutput; // @[online_comparator2.scala 191:29]
  assign comparatorModule_1_io_in2 = regStorageVec_4_minMaxOutput; // @[online_comparator2.scala 192:29]
  assign comparatorModule_2_clock = clock;
  assign comparatorModule_2_reset = reset;
  assign comparatorModule_2_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_2_io_earlyTerminate = regStorageVec_0_earlyTerminated2; // @[online_comparator2.scala 194:40]
  assign comparatorModule_2_io_in1 = regStorageVec_5_minMaxOutput; // @[online_comparator2.scala 191:29]
  assign comparatorModule_2_io_in2 = regStorageVec_6_minMaxOutput; // @[online_comparator2.scala 192:29]
  assign comparatorModule_3_clock = clock;
  assign comparatorModule_3_reset = reset;
  assign comparatorModule_3_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_3_io_earlyTerminate = regStorageVec_1_earlyTerminated1; // @[online_comparator2.scala 194:40]
  assign comparatorModule_3_io_in1 = regStorageVec_7_minMaxOutput; // @[online_comparator2.scala 191:29]
  assign comparatorModule_3_io_in2 = regStorageVec_8_minMaxOutput; // @[online_comparator2.scala 192:29]
  assign comparatorModule_4_clock = clock;
  assign comparatorModule_4_reset = reset;
  assign comparatorModule_4_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_4_io_earlyTerminate = regStorageVec_1_earlyTerminated2; // @[online_comparator2.scala 194:40]
  assign comparatorModule_4_io_in1 = regStorageVec_9_minMaxOutput; // @[online_comparator2.scala 191:29]
  assign comparatorModule_4_io_in2 = regStorageVec_10_minMaxOutput; // @[online_comparator2.scala 192:29]
  assign comparatorModule_5_clock = clock;
  assign comparatorModule_5_reset = reset;
  assign comparatorModule_5_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_5_io_earlyTerminate = regStorageVec_2_earlyTerminated1; // @[online_comparator2.scala 194:40]
  assign comparatorModule_5_io_in1 = regStorageVec_11_minMaxOutput; // @[online_comparator2.scala 191:29]
  assign comparatorModule_5_io_in2 = regStorageVec_12_minMaxOutput; // @[online_comparator2.scala 192:29]
  assign comparatorModule_6_clock = clock;
  assign comparatorModule_6_reset = reset;
  assign comparatorModule_6_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_6_io_earlyTerminate = regStorageVec_2_earlyTerminated2; // @[online_comparator2.scala 194:40]
  assign comparatorModule_6_io_in1 = regStorageVec_13_minMaxOutput; // @[online_comparator2.scala 191:29]
  assign comparatorModule_6_io_in2 = regStorageVec_14_minMaxOutput; // @[online_comparator2.scala 192:29]
  assign comparatorModule_7_clock = clock;
  assign comparatorModule_7_reset = reset;
  assign comparatorModule_7_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_7_io_earlyTerminate = regStorageVec_3_earlyTerminated1; // @[online_comparator2.scala 194:40]
  assign comparatorModule_7_io_in1 = io_in1_0; // @[online_comparator2.scala 191:29]
  assign comparatorModule_7_io_in2 = io_in2_0; // @[online_comparator2.scala 192:29]
  assign comparatorModule_8_clock = clock;
  assign comparatorModule_8_reset = reset;
  assign comparatorModule_8_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_8_io_earlyTerminate = regStorageVec_3_earlyTerminated2; // @[online_comparator2.scala 194:40]
  assign comparatorModule_8_io_in1 = io_in1_1; // @[online_comparator2.scala 191:29]
  assign comparatorModule_8_io_in2 = io_in2_1; // @[online_comparator2.scala 192:29]
  assign comparatorModule_9_clock = clock;
  assign comparatorModule_9_reset = reset;
  assign comparatorModule_9_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_9_io_earlyTerminate = regStorageVec_4_earlyTerminated1; // @[online_comparator2.scala 194:40]
  assign comparatorModule_9_io_in1 = io_in1_2; // @[online_comparator2.scala 191:29]
  assign comparatorModule_9_io_in2 = io_in2_2; // @[online_comparator2.scala 192:29]
  assign comparatorModule_10_clock = clock;
  assign comparatorModule_10_reset = reset;
  assign comparatorModule_10_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_10_io_earlyTerminate = regStorageVec_4_earlyTerminated2; // @[online_comparator2.scala 194:40]
  assign comparatorModule_10_io_in1 = io_in1_3; // @[online_comparator2.scala 191:29]
  assign comparatorModule_10_io_in2 = io_in2_3; // @[online_comparator2.scala 192:29]
  assign comparatorModule_11_clock = clock;
  assign comparatorModule_11_reset = reset;
  assign comparatorModule_11_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_11_io_earlyTerminate = regStorageVec_5_earlyTerminated1; // @[online_comparator2.scala 194:40]
  assign comparatorModule_11_io_in1 = io_in1_4; // @[online_comparator2.scala 191:29]
  assign comparatorModule_11_io_in2 = io_in2_4; // @[online_comparator2.scala 192:29]
  assign comparatorModule_12_clock = clock;
  assign comparatorModule_12_reset = reset;
  assign comparatorModule_12_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_12_io_earlyTerminate = regStorageVec_5_earlyTerminated2; // @[online_comparator2.scala 194:40]
  assign comparatorModule_12_io_in1 = io_in1_5; // @[online_comparator2.scala 191:29]
  assign comparatorModule_12_io_in2 = io_in2_5; // @[online_comparator2.scala 192:29]
  assign comparatorModule_13_clock = clock;
  assign comparatorModule_13_reset = reset;
  assign comparatorModule_13_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_13_io_earlyTerminate = regStorageVec_6_earlyTerminated1; // @[online_comparator2.scala 194:40]
  assign comparatorModule_13_io_in1 = 1'h0; // @[online_comparator2.scala 191:29]
  assign comparatorModule_13_io_in2 = 1'h0; // @[online_comparator2.scala 192:29]
  assign comparatorModule_14_clock = clock;
  assign comparatorModule_14_reset = reset;
  assign comparatorModule_14_io_start = io_start; // @[online_comparator2.scala 195:31]
  assign comparatorModule_14_io_earlyTerminate = regStorageVec_6_earlyTerminated2; // @[online_comparator2.scala 194:40]
  assign comparatorModule_14_io_in1 = 1'h0; // @[online_comparator2.scala 191:29]
  assign comparatorModule_14_io_in2 = 1'h0; // @[online_comparator2.scala 192:29]
  always @(posedge clock) begin
    if (reset) begin // @[min_max_parallel_online_comparator.scala 58:31]
      outResultValid <= 1'h0; // @[min_max_parallel_online_comparator.scala 58:31]
    end else begin
      outResultValid <= _GEN_128;
    end
    regStorageVec_0_minMaxOutput <= io_start & _GEN_69; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_0_earlyTerminated1 <= io_start & _GEN_67; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_0_earlyTerminated2 <= io_start & _GEN_68; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_1_minMaxOutput <= io_start & _GEN_73; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_1_earlyTerminated1 <= io_start & _GEN_71; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_1_earlyTerminated2 <= io_start & _GEN_72; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_2_minMaxOutput <= io_start & _GEN_77; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_2_earlyTerminated1 <= io_start & _GEN_75; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_2_earlyTerminated2 <= io_start & _GEN_76; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_3_minMaxOutput <= io_start & _GEN_81; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_3_earlyTerminated1 <= io_start & _GEN_79; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_3_earlyTerminated2 <= io_start & _GEN_80; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_4_minMaxOutput <= io_start & _GEN_85; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_4_earlyTerminated1 <= io_start & _GEN_83; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_4_earlyTerminated2 <= io_start & _GEN_84; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_5_minMaxOutput <= io_start & _GEN_89; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_5_earlyTerminated1 <= io_start & _GEN_87; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_5_earlyTerminated2 <= io_start & _GEN_88; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_6_minMaxOutput <= io_start & _GEN_93; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_6_earlyTerminated1 <= io_start & _GEN_91; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_6_earlyTerminated2 <= io_start & _GEN_92; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_7_minMaxOutput <= io_start & _GEN_97; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_8_minMaxOutput <= io_start & _GEN_101; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_9_minMaxOutput <= io_start & _GEN_105; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_10_minMaxOutput <= io_start & _GEN_109; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_11_minMaxOutput <= io_start & _GEN_113; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_12_minMaxOutput <= io_start & _GEN_117; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_13_minMaxOutput <= io_start & _GEN_121; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    regStorageVec_14_minMaxOutput <= io_start & _GEN_125; // @[min_max_parallel_online_comparator.scala 213:24 74:29]
    if (reset) begin // @[min_max_parallel_online_comparator.scala 63:22]
      state <= 1'h0; // @[min_max_parallel_online_comparator.scala 63:22]
    end else begin
      state <= _GEN_189;
    end
    if (reset) begin // @[min_max_parallel_online_comparator.scala 65:33]
      currentIteration <= 4'h0; // @[min_max_parallel_online_comparator.scala 65:33]
    end else if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        currentIteration <= _currentIteration_T_1; // @[min_max_parallel_online_comparator.scala 80:26]
      end
    end else begin
      currentIteration <= 4'h0; // @[min_max_parallel_online_comparator.scala 199:22]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,regStorageVec_1_minMaxOutput,regStorageVec_2_minMaxOutput,earlyTerminate1,earlyTerminate2); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",1'h0); // @[min_max_parallel_online_comparator.scala 112:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : regStorageVec(%d).minMaxOutput = %d\n",1'h1,regStorageVec_1_minMaxOutput); // @[min_max_parallel_online_comparator.scala 113:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : regStorageVec(%d).minMaxOutput = %d\n",2'h2,regStorageVec_2_minMaxOutput); // @[min_max_parallel_online_comparator.scala 118:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated2\n",1'h0); // @[min_max_parallel_online_comparator.scala 129:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,regStorageVec_3_minMaxOutput,regStorageVec_4_minMaxOutput,earlyTerminate1_1,earlyTerminate2_1); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",1'h1); // @[min_max_parallel_online_comparator.scala 112:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : regStorageVec(%d).minMaxOutput = %d\n",2'h3,regStorageVec_3_minMaxOutput); // @[min_max_parallel_online_comparator.scala 113:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : regStorageVec(%d).minMaxOutput = %d\n",3'h4,regStorageVec_4_minMaxOutput); // @[min_max_parallel_online_comparator.scala 118:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated1\n",1'h0); // @[min_max_parallel_online_comparator.scala 124:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,regStorageVec_5_minMaxOutput,regStorageVec_6_minMaxOutput,earlyTerminate1_2,earlyTerminate2_2); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",2'h2); // @[min_max_parallel_online_comparator.scala 112:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : regStorageVec(%d).minMaxOutput = %d\n",3'h5,regStorageVec_5_minMaxOutput); // @[min_max_parallel_online_comparator.scala 113:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : regStorageVec(%d).minMaxOutput = %d\n",3'h6,regStorageVec_6_minMaxOutput); // @[min_max_parallel_online_comparator.scala 118:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated2\n",1'h0); // @[min_max_parallel_online_comparator.scala 129:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,regStorageVec_7_minMaxOutput,regStorageVec_8_minMaxOutput,earlyTerminate1_3,earlyTerminate2_3); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",2'h3); // @[min_max_parallel_online_comparator.scala 112:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : regStorageVec(%d).minMaxOutput = %d\n",3'h7,regStorageVec_7_minMaxOutput); // @[min_max_parallel_online_comparator.scala 113:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : regStorageVec(%d).minMaxOutput = %d\n",4'h8,regStorageVec_8_minMaxOutput); // @[min_max_parallel_online_comparator.scala 118:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated1\n",1'h1); // @[min_max_parallel_online_comparator.scala 124:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,regStorageVec_9_minMaxOutput,regStorageVec_10_minMaxOutput,earlyTerminate1_4,earlyTerminate2_4); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",3'h4); // @[min_max_parallel_online_comparator.scala 112:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : regStorageVec(%d).minMaxOutput = %d\n",4'h9,regStorageVec_9_minMaxOutput); // @[min_max_parallel_online_comparator.scala 113:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : regStorageVec(%d).minMaxOutput = %d\n",4'ha,regStorageVec_10_minMaxOutput); // @[min_max_parallel_online_comparator.scala 118:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated2\n",1'h1); // @[min_max_parallel_online_comparator.scala 129:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,regStorageVec_11_minMaxOutput,regStorageVec_12_minMaxOutput,earlyTerminate1_5,earlyTerminate2_5); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",3'h5); // @[min_max_parallel_online_comparator.scala 112:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : regStorageVec(%d).minMaxOutput = %d\n",4'hb,regStorageVec_11_minMaxOutput); // @[min_max_parallel_online_comparator.scala 113:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : regStorageVec(%d).minMaxOutput = %d\n",4'hc,regStorageVec_12_minMaxOutput); // @[min_max_parallel_online_comparator.scala 118:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated1\n",2'h2); // @[min_max_parallel_online_comparator.scala 124:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,regStorageVec_13_minMaxOutput,regStorageVec_14_minMaxOutput,earlyTerminate1_6,earlyTerminate2_6); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",3'h6); // @[min_max_parallel_online_comparator.scala 112:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : regStorageVec(%d).minMaxOutput = %d\n",4'hd,regStorageVec_13_minMaxOutput); // @[min_max_parallel_online_comparator.scala 113:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : regStorageVec(%d).minMaxOutput = %d\n",4'he,regStorageVec_14_minMaxOutput); // @[min_max_parallel_online_comparator.scala 118:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated2\n",2'h2); // @[min_max_parallel_online_comparator.scala 129:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,io_in1_0,io_in2_0,earlyTerminate1_7,earlyTerminate2_7); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",3'h7); // @[min_max_parallel_online_comparator.scala 153:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : io.in1(%d) = %d\n",1'h0,io_in1_0); // @[min_max_parallel_online_comparator.scala 154:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : io.in2(%d) = %d\n",1'h0,io_in2_0); // @[min_max_parallel_online_comparator.scala 159:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated1\n",2'h3); // @[min_max_parallel_online_comparator.scala 165:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,io_in1_1,io_in2_1,earlyTerminate1_8,earlyTerminate2_8); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",4'h8); // @[min_max_parallel_online_comparator.scala 153:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : io.in1(%d) = %d\n",1'h1,io_in1_1); // @[min_max_parallel_online_comparator.scala 154:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : io.in2(%d) = %d\n",1'h1,io_in2_1); // @[min_max_parallel_online_comparator.scala 159:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated2\n",2'h3); // @[min_max_parallel_online_comparator.scala 170:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,io_in1_2,io_in2_2,earlyTerminate1_9,earlyTerminate2_9); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",4'h9); // @[min_max_parallel_online_comparator.scala 153:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : io.in1(%d) = %d\n",2'h2,io_in1_2); // @[min_max_parallel_online_comparator.scala 154:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : io.in2(%d) = %d\n",2'h2,io_in2_2); // @[min_max_parallel_online_comparator.scala 159:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated1\n",3'h4); // @[min_max_parallel_online_comparator.scala 165:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,io_in1_3,io_in2_3,earlyTerminate1_10,earlyTerminate2_10); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",4'ha); // @[min_max_parallel_online_comparator.scala 153:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : io.in1(%d) = %d\n",2'h3,io_in1_3); // @[min_max_parallel_online_comparator.scala 154:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : io.in2(%d) = %d\n",2'h3,io_in2_3); // @[min_max_parallel_online_comparator.scala 159:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated2\n",3'h4); // @[min_max_parallel_online_comparator.scala 170:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,io_in1_4,io_in2_4,earlyTerminate1_11,earlyTerminate2_11); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",4'hb); // @[min_max_parallel_online_comparator.scala 153:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : io.in1(%d) = %d\n",3'h4,io_in1_4); // @[min_max_parallel_online_comparator.scala 154:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : io.in2(%d) = %d\n",3'h4,io_in2_4); // @[min_max_parallel_online_comparator.scala 159:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated1\n",3'h5); // @[min_max_parallel_online_comparator.scala 165:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,io_in1_5,io_in2_5,earlyTerminate1_12,earlyTerminate2_12); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",4'hc); // @[min_max_parallel_online_comparator.scala 153:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : io.in1(%d) = %d\n",3'h5,io_in1_5); // @[min_max_parallel_online_comparator.scala 154:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : io.in2(%d) = %d\n",3'h5,io_in2_5); // @[min_max_parallel_online_comparator.scala 159:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated2\n",3'h5); // @[min_max_parallel_online_comparator.scala 170:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,1'h0,1'h0,earlyTerminate1_13,earlyTerminate2_13); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",4'hd); // @[min_max_parallel_online_comparator.scala 153:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : io.in1(%d) = %d\n",3'h6,1'h0); // @[min_max_parallel_online_comparator.scala 154:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : io.in2(%d) = %d\n",3'h6,1'h0); // @[min_max_parallel_online_comparator.scala 159:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated1\n",3'h6); // @[min_max_parallel_online_comparator.scala 165:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_1 & _T_6 & ~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,io_start,1'h0,1'h0,earlyTerminate1_14,earlyTerminate2_14); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"max comparator : %d\n",4'he); // @[min_max_parallel_online_comparator.scala 153:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin1 : io.in1(%d) = %d\n",3'h7,1'h0); // @[min_max_parallel_online_comparator.scala 154:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tin2 : io.in2(%d) = %d\n",3'h7,1'h0); // @[min_max_parallel_online_comparator.scala 159:23]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_206 & _T_9) begin
          $fwrite(32'h80000002,"\tET : regStorageVec(%d).earlyTerminated2\n",3'h6); // @[min_max_parallel_online_comparator.scala 170:25]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
