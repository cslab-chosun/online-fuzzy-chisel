module OnlineComparator2(
  input   clock,
  input   reset,
  input   io_start,
  input   io_earlyTerminate,
  input   io_in1,
  input   io_in2,
  output  io_earlyTerminate1,
  output  io_earlyTerminate2,
  output  io_maxMin
);
  reg  state; // @[online_comparator2.scala 33:22]
  reg  earlyTerminate1; // @[online_comparator2.scala 36:32]
  reg  earlyTerminate2; // @[online_comparator2.scala 37:32]
  wire  _T_5 = io_in1 & ~io_in2; // @[online_comparator2.scala 61:35]
  wire  _T_8 = ~io_in1 & io_in2; // @[online_comparator2.scala 92:35]
  wire  _GEN_2 = ~io_in1 & io_in2 ? io_in2 : io_in1; // @[online_comparator2.scala 100:26 125:24 92:54]
  wire  _GEN_3 = io_in1 & ~io_in2 ? 1'h0 : _T_8; // @[online_comparator2.scala 61:54 65:29]
  wire  _GEN_5 = io_in1 & ~io_in2 ? io_in1 : _GEN_2; // @[online_comparator2.scala 61:54 70:26]
  wire  _GEN_6 = io_in1 & ~io_in2 | _T_8; // @[online_comparator2.scala 61:54 90:17]
  wire  _GEN_7 = io_earlyTerminate | _GEN_3; // @[online_comparator2.scala 48:44 54:27]
  wire  _GEN_8 = io_earlyTerminate | _T_5; // @[online_comparator2.scala 48:44 56:27]
  wire  _GEN_9 = io_earlyTerminate | _GEN_6; // @[online_comparator2.scala 48:44 59:17]
  wire  _GEN_10 = io_earlyTerminate ? 1'h0 : _GEN_5; // @[online_comparator2.scala 48:44]
  wire  _GEN_11 = earlyTerminate1 ? io_in2 : io_in1; // @[online_comparator2.scala 141:42 142:24 144:24]
  wire  _GEN_14 = ~state & _GEN_7; // @[online_comparator2.scala 44:19]
  wire  _GEN_16 = ~state & _GEN_8; // @[online_comparator2.scala 44:19]
  wire  _GEN_18 = ~state ? _GEN_10 : state & _GEN_11; // @[online_comparator2.scala 44:19]
  wire  earlyTerminate1Shadow = io_start & _GEN_14; // @[online_comparator2.scala 42:29]
  wire  earlyTerminate2Shadow = io_start & _GEN_16; // @[online_comparator2.scala 42:29]
  assign io_earlyTerminate1 = earlyTerminate1 | earlyTerminate1Shadow; // @[online_comparator2.scala 153:41]
  assign io_earlyTerminate2 = earlyTerminate2 | earlyTerminate2Shadow; // @[online_comparator2.scala 154:41]
  assign io_maxMin = io_start & _GEN_18; // @[online_comparator2.scala 42:29]
  always @(posedge clock) begin
    if (reset) begin // @[online_comparator2.scala 33:22]
      state <= 1'h0; // @[online_comparator2.scala 33:22]
    end else if (io_start) begin // @[online_comparator2.scala 42:29]
      if (~state) begin // @[online_comparator2.scala 44:19]
        state <= _GEN_9;
      end
    end
    if (reset) begin // @[online_comparator2.scala 36:32]
      earlyTerminate1 <= 1'h0; // @[online_comparator2.scala 36:32]
    end else if (io_start) begin // @[online_comparator2.scala 42:29]
      if (~state) begin // @[online_comparator2.scala 44:19]
        earlyTerminate1 <= _GEN_7;
      end
    end
    if (reset) begin // @[online_comparator2.scala 37:32]
      earlyTerminate2 <= 1'h0; // @[online_comparator2.scala 37:32]
    end else if (io_start) begin // @[online_comparator2.scala 42:29]
      if (~state) begin // @[online_comparator2.scala 44:19]
        earlyTerminate2 <= _GEN_8;
      end
    end
  end
endmodule
module OnlineComparator2_7(
  input   clock,
  input   reset,
  input   io_start,
  input   io_earlyTerminate,
  input   io_in1,
  input   io_in2,
  output  io_maxMin
);
  reg  state; // @[online_comparator2.scala 33:22]
  reg  earlyTerminate1; // @[online_comparator2.scala 36:32]
  wire  _T_5 = io_in1 & ~io_in2; // @[online_comparator2.scala 61:35]
  wire  _T_8 = ~io_in1 & io_in2; // @[online_comparator2.scala 92:35]
  wire  _GEN_5 = io_in1 & ~io_in2 ? io_in2 : io_in1; // @[online_comparator2.scala 61:54 82:26]
  wire  _GEN_6 = io_in1 & ~io_in2 | _T_8; // @[online_comparator2.scala 61:54 90:17]
  wire  _GEN_7 = io_earlyTerminate | _T_5; // @[online_comparator2.scala 48:44 54:27]
  wire  _GEN_9 = io_earlyTerminate | _GEN_6; // @[online_comparator2.scala 48:44 59:17]
  wire  _GEN_10 = io_earlyTerminate ? 1'h0 : _GEN_5; // @[online_comparator2.scala 48:44]
  wire  _GEN_11 = earlyTerminate1 ? io_in2 : io_in1; // @[online_comparator2.scala 141:42 142:24 144:24]
  wire  _GEN_18 = ~state ? _GEN_10 : state & _GEN_11; // @[online_comparator2.scala 44:19]
  assign io_maxMin = io_start & _GEN_18; // @[online_comparator2.scala 42:29]
  always @(posedge clock) begin
    if (reset) begin // @[online_comparator2.scala 33:22]
      state <= 1'h0; // @[online_comparator2.scala 33:22]
    end else if (io_start) begin // @[online_comparator2.scala 42:29]
      if (~state) begin // @[online_comparator2.scala 44:19]
        state <= _GEN_9;
      end
    end
    if (reset) begin // @[online_comparator2.scala 36:32]
      earlyTerminate1 <= 1'h0; // @[online_comparator2.scala 36:32]
    end else if (io_start) begin // @[online_comparator2.scala 42:29]
      if (~state) begin // @[online_comparator2.scala 44:19]
        earlyTerminate1 <= _GEN_7;
      end
    end
  end
endmodule
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
  wire  comparatorModule_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_io_earlyTerminate1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_io_earlyTerminate2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_1_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_1_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_1_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_1_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_1_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_1_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_1_io_earlyTerminate1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_1_io_earlyTerminate2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_1_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_2_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_2_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_2_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_2_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_2_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_2_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_2_io_earlyTerminate1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_2_io_earlyTerminate2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_2_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_3_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_3_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_3_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_3_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_3_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_3_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_3_io_earlyTerminate1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_3_io_earlyTerminate2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_3_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_4_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_4_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_4_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_4_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_4_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_4_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_4_io_earlyTerminate1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_4_io_earlyTerminate2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_4_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_5_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_5_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_5_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_5_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_5_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_5_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_5_io_earlyTerminate1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_5_io_earlyTerminate2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_5_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_6_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_6_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_6_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_6_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_6_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_6_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_6_io_earlyTerminate1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_6_io_earlyTerminate2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_6_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_7_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_7_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_7_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_7_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_7_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_7_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_7_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_8_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_8_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_8_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_8_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_8_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_8_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_8_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_9_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_9_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_9_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_9_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_9_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_9_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_9_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_10_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_10_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_10_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_10_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_10_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_10_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_10_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_11_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_11_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_11_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_11_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_11_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_11_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_11_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_12_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_12_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_12_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_12_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_12_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_12_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_12_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_13_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_13_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_13_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_13_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_13_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_13_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_13_io_maxMin; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_14_clock; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_14_reset; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_14_io_start; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_14_io_earlyTerminate; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_14_io_in1; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_14_io_in2; // @[online_comparator2.scala 171:34]
  wire  comparatorModule_14_io_maxMin; // @[online_comparator2.scala 171:34]
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
  wire [3:0] _currentIteration_T_1 = currentIteration + 4'h1; // @[min_max_parallel_online_comparator.scala 80:46]
  wire [3:0] _T_3 = 4'h8 - 4'h1; // @[min_max_parallel_online_comparator.scala 83:46]
  wire [3:0] _T_5 = _T_3 + 4'h3; // @[min_max_parallel_online_comparator.scala 83:52]
  wire  _T_6 = currentIteration != _T_5; // @[min_max_parallel_online_comparator.scala 83:28]
  wire  _GEN_0 = currentIteration == 4'h3 | outResultValid; // @[min_max_parallel_online_comparator.scala 88:62 89:28 58:31]
  wire  earlyTerminate1 = comparatorModule_io_earlyTerminate1; // @[online_comparator2.scala 173:31 190:21]
  wire  earlyTerminate1_1 = comparatorModule_1_io_earlyTerminate1; // @[online_comparator2.scala 173:31 190:21]
  wire  earlyTerminate1_2 = comparatorModule_2_io_earlyTerminate1; // @[online_comparator2.scala 173:31 190:21]
  wire  earlyTerminate1_3 = comparatorModule_3_io_earlyTerminate1; // @[online_comparator2.scala 173:31 190:21]
  wire  earlyTerminate1_4 = comparatorModule_4_io_earlyTerminate1; // @[online_comparator2.scala 173:31 190:21]
  wire  earlyTerminate1_5 = comparatorModule_5_io_earlyTerminate1; // @[online_comparator2.scala 173:31 190:21]
  wire  earlyTerminate1_6 = comparatorModule_6_io_earlyTerminate1; // @[online_comparator2.scala 173:31 190:21]
  wire  _GEN_1 = _T_6 & _GEN_0; // @[min_max_parallel_online_comparator.scala 86:11 180:26]
  wire  earlyTerminate2 = comparatorModule_io_earlyTerminate2; // @[online_comparator2.scala 174:31 191:21]
  wire  maxOutput = comparatorModule_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  earlyTerminate2_1 = comparatorModule_1_io_earlyTerminate2; // @[online_comparator2.scala 174:31 191:21]
  wire  maxOutput_1 = comparatorModule_1_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  earlyTerminate2_2 = comparatorModule_2_io_earlyTerminate2; // @[online_comparator2.scala 174:31 191:21]
  wire  maxOutput_2 = comparatorModule_2_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  earlyTerminate2_3 = comparatorModule_3_io_earlyTerminate2; // @[online_comparator2.scala 174:31 191:21]
  wire  maxOutput_3 = comparatorModule_3_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  earlyTerminate2_4 = comparatorModule_4_io_earlyTerminate2; // @[online_comparator2.scala 174:31 191:21]
  wire  maxOutput_4 = comparatorModule_4_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  earlyTerminate2_5 = comparatorModule_5_io_earlyTerminate2; // @[online_comparator2.scala 174:31 191:21]
  wire  maxOutput_5 = comparatorModule_5_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  earlyTerminate2_6 = comparatorModule_6_io_earlyTerminate2; // @[online_comparator2.scala 174:31 191:21]
  wire  maxOutput_6 = comparatorModule_6_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  minOutput = comparatorModule_7_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  minOutput_1 = comparatorModule_8_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  minOutput_2 = comparatorModule_9_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  minOutput_3 = comparatorModule_10_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  minOutput_4 = comparatorModule_11_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  minOutput_5 = comparatorModule_12_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  minOutput_6 = comparatorModule_13_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  minOutput_7 = comparatorModule_14_io_maxMin; // @[online_comparator2.scala 176:28 204:18]
  wire  _GEN_62 = _T_6 ? state : 1'h1; // @[min_max_parallel_online_comparator.scala 86:11 179:17 63:22]
  wire  _GEN_63 = state ? 1'h0 : outResultValid; // @[min_max_parallel_online_comparator.scala 76:19 188:24 58:31]
  wire  _GEN_65 = ~state ? _GEN_1 : _GEN_63; // @[min_max_parallel_online_comparator.scala 76:19]
  wire  _GEN_126 = ~state ? _GEN_62 : state; // @[min_max_parallel_online_comparator.scala 76:19 63:22]
  wire  _GEN_128 = io_start & _GEN_65; // @[min_max_parallel_online_comparator.scala 196:20 74:29]
  wire  _GEN_189 = io_start & _GEN_126; // @[min_max_parallel_online_comparator.scala 197:11 74:29]
  OnlineComparator2 comparatorModule ( // @[online_comparator2.scala 171:34]
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
  OnlineComparator2 comparatorModule_1 ( // @[online_comparator2.scala 171:34]
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
  OnlineComparator2 comparatorModule_2 ( // @[online_comparator2.scala 171:34]
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
  OnlineComparator2 comparatorModule_3 ( // @[online_comparator2.scala 171:34]
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
  OnlineComparator2 comparatorModule_4 ( // @[online_comparator2.scala 171:34]
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
  OnlineComparator2 comparatorModule_5 ( // @[online_comparator2.scala 171:34]
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
  OnlineComparator2 comparatorModule_6 ( // @[online_comparator2.scala 171:34]
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
  OnlineComparator2_7 comparatorModule_7 ( // @[online_comparator2.scala 171:34]
    .clock(comparatorModule_7_clock),
    .reset(comparatorModule_7_reset),
    .io_start(comparatorModule_7_io_start),
    .io_earlyTerminate(comparatorModule_7_io_earlyTerminate),
    .io_in1(comparatorModule_7_io_in1),
    .io_in2(comparatorModule_7_io_in2),
    .io_maxMin(comparatorModule_7_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_8 ( // @[online_comparator2.scala 171:34]
    .clock(comparatorModule_8_clock),
    .reset(comparatorModule_8_reset),
    .io_start(comparatorModule_8_io_start),
    .io_earlyTerminate(comparatorModule_8_io_earlyTerminate),
    .io_in1(comparatorModule_8_io_in1),
    .io_in2(comparatorModule_8_io_in2),
    .io_maxMin(comparatorModule_8_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_9 ( // @[online_comparator2.scala 171:34]
    .clock(comparatorModule_9_clock),
    .reset(comparatorModule_9_reset),
    .io_start(comparatorModule_9_io_start),
    .io_earlyTerminate(comparatorModule_9_io_earlyTerminate),
    .io_in1(comparatorModule_9_io_in1),
    .io_in2(comparatorModule_9_io_in2),
    .io_maxMin(comparatorModule_9_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_10 ( // @[online_comparator2.scala 171:34]
    .clock(comparatorModule_10_clock),
    .reset(comparatorModule_10_reset),
    .io_start(comparatorModule_10_io_start),
    .io_earlyTerminate(comparatorModule_10_io_earlyTerminate),
    .io_in1(comparatorModule_10_io_in1),
    .io_in2(comparatorModule_10_io_in2),
    .io_maxMin(comparatorModule_10_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_11 ( // @[online_comparator2.scala 171:34]
    .clock(comparatorModule_11_clock),
    .reset(comparatorModule_11_reset),
    .io_start(comparatorModule_11_io_start),
    .io_earlyTerminate(comparatorModule_11_io_earlyTerminate),
    .io_in1(comparatorModule_11_io_in1),
    .io_in2(comparatorModule_11_io_in2),
    .io_maxMin(comparatorModule_11_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_12 ( // @[online_comparator2.scala 171:34]
    .clock(comparatorModule_12_clock),
    .reset(comparatorModule_12_reset),
    .io_start(comparatorModule_12_io_start),
    .io_earlyTerminate(comparatorModule_12_io_earlyTerminate),
    .io_in1(comparatorModule_12_io_in1),
    .io_in2(comparatorModule_12_io_in2),
    .io_maxMin(comparatorModule_12_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_13 ( // @[online_comparator2.scala 171:34]
    .clock(comparatorModule_13_clock),
    .reset(comparatorModule_13_reset),
    .io_start(comparatorModule_13_io_start),
    .io_earlyTerminate(comparatorModule_13_io_earlyTerminate),
    .io_in1(comparatorModule_13_io_in1),
    .io_in2(comparatorModule_13_io_in2),
    .io_maxMin(comparatorModule_13_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_14 ( // @[online_comparator2.scala 171:34]
    .clock(comparatorModule_14_clock),
    .reset(comparatorModule_14_reset),
    .io_start(comparatorModule_14_io_start),
    .io_earlyTerminate(comparatorModule_14_io_earlyTerminate),
    .io_in1(comparatorModule_14_io_in1),
    .io_in2(comparatorModule_14_io_in2),
    .io_maxMin(comparatorModule_14_io_maxMin)
  );
  assign io_outResultValid = outResultValid; // @[min_max_parallel_online_comparator.scala 205:21]
  assign io_outResult = regStorageVec_0_minMaxOutput; // @[min_max_parallel_online_comparator.scala 204:16]
  assign comparatorModule_clock = clock;
  assign comparatorModule_reset = reset;
  assign comparatorModule_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_io_earlyTerminate = regStorageVec_0_earlyTerminated2; // @[online_comparator2.scala 184:40]
  assign comparatorModule_io_in1 = regStorageVec_1_minMaxOutput; // @[online_comparator2.scala 181:29]
  assign comparatorModule_io_in2 = regStorageVec_2_minMaxOutput; // @[online_comparator2.scala 182:29]
  assign comparatorModule_1_clock = clock;
  assign comparatorModule_1_reset = reset;
  assign comparatorModule_1_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_1_io_earlyTerminate = regStorageVec_0_earlyTerminated1; // @[online_comparator2.scala 184:40]
  assign comparatorModule_1_io_in1 = regStorageVec_3_minMaxOutput; // @[online_comparator2.scala 181:29]
  assign comparatorModule_1_io_in2 = regStorageVec_4_minMaxOutput; // @[online_comparator2.scala 182:29]
  assign comparatorModule_2_clock = clock;
  assign comparatorModule_2_reset = reset;
  assign comparatorModule_2_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_2_io_earlyTerminate = regStorageVec_0_earlyTerminated2; // @[online_comparator2.scala 184:40]
  assign comparatorModule_2_io_in1 = regStorageVec_5_minMaxOutput; // @[online_comparator2.scala 181:29]
  assign comparatorModule_2_io_in2 = regStorageVec_6_minMaxOutput; // @[online_comparator2.scala 182:29]
  assign comparatorModule_3_clock = clock;
  assign comparatorModule_3_reset = reset;
  assign comparatorModule_3_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_3_io_earlyTerminate = regStorageVec_1_earlyTerminated1; // @[online_comparator2.scala 184:40]
  assign comparatorModule_3_io_in1 = regStorageVec_7_minMaxOutput; // @[online_comparator2.scala 181:29]
  assign comparatorModule_3_io_in2 = regStorageVec_8_minMaxOutput; // @[online_comparator2.scala 182:29]
  assign comparatorModule_4_clock = clock;
  assign comparatorModule_4_reset = reset;
  assign comparatorModule_4_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_4_io_earlyTerminate = regStorageVec_1_earlyTerminated2; // @[online_comparator2.scala 184:40]
  assign comparatorModule_4_io_in1 = regStorageVec_9_minMaxOutput; // @[online_comparator2.scala 181:29]
  assign comparatorModule_4_io_in2 = regStorageVec_10_minMaxOutput; // @[online_comparator2.scala 182:29]
  assign comparatorModule_5_clock = clock;
  assign comparatorModule_5_reset = reset;
  assign comparatorModule_5_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_5_io_earlyTerminate = regStorageVec_2_earlyTerminated1; // @[online_comparator2.scala 184:40]
  assign comparatorModule_5_io_in1 = regStorageVec_11_minMaxOutput; // @[online_comparator2.scala 181:29]
  assign comparatorModule_5_io_in2 = regStorageVec_12_minMaxOutput; // @[online_comparator2.scala 182:29]
  assign comparatorModule_6_clock = clock;
  assign comparatorModule_6_reset = reset;
  assign comparatorModule_6_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_6_io_earlyTerminate = regStorageVec_2_earlyTerminated2; // @[online_comparator2.scala 184:40]
  assign comparatorModule_6_io_in1 = regStorageVec_13_minMaxOutput; // @[online_comparator2.scala 181:29]
  assign comparatorModule_6_io_in2 = regStorageVec_14_minMaxOutput; // @[online_comparator2.scala 182:29]
  assign comparatorModule_7_clock = clock;
  assign comparatorModule_7_reset = reset;
  assign comparatorModule_7_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_7_io_earlyTerminate = regStorageVec_3_earlyTerminated1; // @[online_comparator2.scala 184:40]
  assign comparatorModule_7_io_in1 = io_in1_0; // @[online_comparator2.scala 181:29]
  assign comparatorModule_7_io_in2 = io_in2_0; // @[online_comparator2.scala 182:29]
  assign comparatorModule_8_clock = clock;
  assign comparatorModule_8_reset = reset;
  assign comparatorModule_8_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_8_io_earlyTerminate = regStorageVec_3_earlyTerminated2; // @[online_comparator2.scala 184:40]
  assign comparatorModule_8_io_in1 = io_in1_1; // @[online_comparator2.scala 181:29]
  assign comparatorModule_8_io_in2 = io_in2_1; // @[online_comparator2.scala 182:29]
  assign comparatorModule_9_clock = clock;
  assign comparatorModule_9_reset = reset;
  assign comparatorModule_9_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_9_io_earlyTerminate = regStorageVec_4_earlyTerminated1; // @[online_comparator2.scala 184:40]
  assign comparatorModule_9_io_in1 = io_in1_2; // @[online_comparator2.scala 181:29]
  assign comparatorModule_9_io_in2 = io_in2_2; // @[online_comparator2.scala 182:29]
  assign comparatorModule_10_clock = clock;
  assign comparatorModule_10_reset = reset;
  assign comparatorModule_10_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_10_io_earlyTerminate = regStorageVec_4_earlyTerminated2; // @[online_comparator2.scala 184:40]
  assign comparatorModule_10_io_in1 = io_in1_3; // @[online_comparator2.scala 181:29]
  assign comparatorModule_10_io_in2 = io_in2_3; // @[online_comparator2.scala 182:29]
  assign comparatorModule_11_clock = clock;
  assign comparatorModule_11_reset = reset;
  assign comparatorModule_11_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_11_io_earlyTerminate = regStorageVec_5_earlyTerminated1; // @[online_comparator2.scala 184:40]
  assign comparatorModule_11_io_in1 = io_in1_4; // @[online_comparator2.scala 181:29]
  assign comparatorModule_11_io_in2 = io_in2_4; // @[online_comparator2.scala 182:29]
  assign comparatorModule_12_clock = clock;
  assign comparatorModule_12_reset = reset;
  assign comparatorModule_12_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_12_io_earlyTerminate = regStorageVec_5_earlyTerminated2; // @[online_comparator2.scala 184:40]
  assign comparatorModule_12_io_in1 = io_in1_5; // @[online_comparator2.scala 181:29]
  assign comparatorModule_12_io_in2 = io_in2_5; // @[online_comparator2.scala 182:29]
  assign comparatorModule_13_clock = clock;
  assign comparatorModule_13_reset = reset;
  assign comparatorModule_13_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_13_io_earlyTerminate = regStorageVec_6_earlyTerminated1; // @[online_comparator2.scala 184:40]
  assign comparatorModule_13_io_in1 = io_in1_6; // @[online_comparator2.scala 181:29]
  assign comparatorModule_13_io_in2 = io_in2_6; // @[online_comparator2.scala 182:29]
  assign comparatorModule_14_clock = clock;
  assign comparatorModule_14_reset = reset;
  assign comparatorModule_14_io_start = io_start; // @[online_comparator2.scala 185:31]
  assign comparatorModule_14_io_earlyTerminate = regStorageVec_6_earlyTerminated2; // @[online_comparator2.scala 184:40]
  assign comparatorModule_14_io_in1 = io_in1_7; // @[online_comparator2.scala 181:29]
  assign comparatorModule_14_io_in2 = io_in2_7; // @[online_comparator2.scala 182:29]
  always @(posedge clock) begin
    if (reset) begin // @[min_max_parallel_online_comparator.scala 58:31]
      outResultValid <= 1'h0; // @[min_max_parallel_online_comparator.scala 58:31]
    end else begin
      outResultValid <= _GEN_128;
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_0_minMaxOutput <= maxOutput; // @[min_max_parallel_online_comparator.scala 109:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_0_earlyTerminated1 <= earlyTerminate1; // @[min_max_parallel_online_comparator.scala 107:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_0_earlyTerminated2 <= earlyTerminate2; // @[min_max_parallel_online_comparator.scala 108:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_1_minMaxOutput <= maxOutput_1; // @[min_max_parallel_online_comparator.scala 109:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_1_earlyTerminated1 <= earlyTerminate1_1; // @[min_max_parallel_online_comparator.scala 107:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_1_earlyTerminated2 <= earlyTerminate2_1; // @[min_max_parallel_online_comparator.scala 108:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_2_minMaxOutput <= maxOutput_2; // @[min_max_parallel_online_comparator.scala 109:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_2_earlyTerminated1 <= earlyTerminate1_2; // @[min_max_parallel_online_comparator.scala 107:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_2_earlyTerminated2 <= earlyTerminate2_2; // @[min_max_parallel_online_comparator.scala 108:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_3_minMaxOutput <= maxOutput_3; // @[min_max_parallel_online_comparator.scala 109:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_3_earlyTerminated1 <= earlyTerminate1_3; // @[min_max_parallel_online_comparator.scala 107:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_3_earlyTerminated2 <= earlyTerminate2_3; // @[min_max_parallel_online_comparator.scala 108:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_4_minMaxOutput <= maxOutput_4; // @[min_max_parallel_online_comparator.scala 109:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_4_earlyTerminated1 <= earlyTerminate1_4; // @[min_max_parallel_online_comparator.scala 107:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_4_earlyTerminated2 <= earlyTerminate2_4; // @[min_max_parallel_online_comparator.scala 108:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_5_minMaxOutput <= maxOutput_5; // @[min_max_parallel_online_comparator.scala 109:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_5_earlyTerminated1 <= earlyTerminate1_5; // @[min_max_parallel_online_comparator.scala 107:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_5_earlyTerminated2 <= earlyTerminate2_5; // @[min_max_parallel_online_comparator.scala 108:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_6_minMaxOutput <= maxOutput_6; // @[min_max_parallel_online_comparator.scala 109:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_6_earlyTerminated1 <= earlyTerminate1_6; // @[min_max_parallel_online_comparator.scala 107:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_6_earlyTerminated2 <= earlyTerminate2_6; // @[min_max_parallel_online_comparator.scala 108:49]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_7_minMaxOutput <= minOutput; // @[min_max_parallel_online_comparator.scala 150:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_8_minMaxOutput <= minOutput_1; // @[min_max_parallel_online_comparator.scala 150:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_9_minMaxOutput <= minOutput_2; // @[min_max_parallel_online_comparator.scala 150:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_10_minMaxOutput <= minOutput_3; // @[min_max_parallel_online_comparator.scala 150:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_11_minMaxOutput <= minOutput_4; // @[min_max_parallel_online_comparator.scala 150:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_12_minMaxOutput <= minOutput_5; // @[min_max_parallel_online_comparator.scala 150:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_13_minMaxOutput <= minOutput_6; // @[min_max_parallel_online_comparator.scala 150:45]
        end
      end
    end
    if (io_start) begin // @[min_max_parallel_online_comparator.scala 74:29]
      if (~state) begin // @[min_max_parallel_online_comparator.scala 76:19]
        if (_T_6) begin // @[min_max_parallel_online_comparator.scala 86:11]
          regStorageVec_14_minMaxOutput <= minOutput_7; // @[min_max_parallel_online_comparator.scala 150:45]
        end
      end
    end
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
      currentIteration <= 4'h0; // @[min_max_parallel_online_comparator.scala 198:22]
    end
  end
endmodule
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
  wire  minMaxTree_clock; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_reset; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_start; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in1_0; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in1_1; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in1_2; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in1_3; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in1_4; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in1_5; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in1_6; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in1_7; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in2_0; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in2_1; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in2_2; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in2_3; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in2_4; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in2_5; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in2_6; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_in2_7; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_outResultValid; // @[min_max_parallel_online_comparator.scala 216:28]
  wire  minMaxTree_io_outResult; // @[min_max_parallel_online_comparator.scala 216:28]
  MinMaxParallelOnlineComparator minMaxTree ( // @[min_max_parallel_online_comparator.scala 216:28]
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
  assign io_outResultValid = minMaxTree_io_outResultValid; // @[min_max_parallel_online_comparator.scala 220:30 230:20]
  assign io_outResult = minMaxTree_io_outResult; // @[min_max_parallel_online_comparator.scala 219:25 228:15]
  assign minMaxTree_clock = clock;
  assign minMaxTree_reset = reset;
  assign minMaxTree_io_start = io_start; // @[min_max_parallel_online_comparator.scala 222:25]
  assign minMaxTree_io_in1_0 = io_in1_0; // @[min_max_parallel_online_comparator.scala 225:23]
  assign minMaxTree_io_in1_1 = io_in1_1; // @[min_max_parallel_online_comparator.scala 225:23]
  assign minMaxTree_io_in1_2 = io_in1_2; // @[min_max_parallel_online_comparator.scala 225:23]
  assign minMaxTree_io_in1_3 = io_in1_3; // @[min_max_parallel_online_comparator.scala 225:23]
  assign minMaxTree_io_in1_4 = io_in1_4; // @[min_max_parallel_online_comparator.scala 225:23]
  assign minMaxTree_io_in1_5 = io_in1_5; // @[min_max_parallel_online_comparator.scala 225:23]
  assign minMaxTree_io_in1_6 = io_in1_6; // @[min_max_parallel_online_comparator.scala 225:23]
  assign minMaxTree_io_in1_7 = io_in1_7; // @[min_max_parallel_online_comparator.scala 225:23]
  assign minMaxTree_io_in2_0 = io_in2_0; // @[min_max_parallel_online_comparator.scala 226:23]
  assign minMaxTree_io_in2_1 = io_in2_1; // @[min_max_parallel_online_comparator.scala 226:23]
  assign minMaxTree_io_in2_2 = io_in2_2; // @[min_max_parallel_online_comparator.scala 226:23]
  assign minMaxTree_io_in2_3 = io_in2_3; // @[min_max_parallel_online_comparator.scala 226:23]
  assign minMaxTree_io_in2_4 = io_in2_4; // @[min_max_parallel_online_comparator.scala 226:23]
  assign minMaxTree_io_in2_5 = io_in2_5; // @[min_max_parallel_online_comparator.scala 226:23]
  assign minMaxTree_io_in2_6 = io_in2_6; // @[min_max_parallel_online_comparator.scala 226:23]
  assign minMaxTree_io_in2_7 = io_in2_7; // @[min_max_parallel_online_comparator.scala 226:23]
endmodule
