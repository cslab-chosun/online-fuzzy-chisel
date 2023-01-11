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
  reg [1:0] state; // @[online_comparator2.scala 28:22]
  reg  earlyTerminate1; // @[online_comparator2.scala 31:32]
  reg  earlyTerminate2; // @[online_comparator2.scala 32:32]
  wire  _T_6 = io_in1 & ~io_in2; // @[online_comparator2.scala 68:33]
  wire  _T_9 = ~io_in1 & io_in2; // @[online_comparator2.scala 94:33]
  wire  _GEN_3 = ~io_in1 & io_in2 ? io_in2 : io_in1; // @[online_comparator2.scala 123:22 94:52 99:24]
  wire [1:0] _GEN_4 = ~io_in1 & io_in2 ? 2'h2 : 2'h1; // @[online_comparator2.scala 115:15 128:15 94:52]
  wire  _GEN_5 = io_in1 & ~io_in2 ? 1'h0 : _T_9; // @[online_comparator2.scala 68:52 72:27]
  wire  _GEN_7 = io_in1 & ~io_in2 ? io_in1 : _GEN_3; // @[online_comparator2.scala 68:52 74:24]
  wire [1:0] _GEN_8 = io_in1 & ~io_in2 ? 2'h2 : _GEN_4; // @[online_comparator2.scala 68:52 92:15]
  wire  _GEN_9 = io_earlyTerminate | _GEN_5; // @[online_comparator2.scala 57:42 63:25]
  wire  _GEN_10 = io_earlyTerminate | _T_6; // @[online_comparator2.scala 57:42 64:25]
  wire  _GEN_12 = io_earlyTerminate ? 1'h0 : _GEN_7; // @[online_comparator2.scala 57:42]
  wire  _GEN_13 = earlyTerminate1 ? io_in2 : io_in1; // @[online_comparator2.scala 137:41 138:22 140:22]
  wire  _GEN_18 = 2'h1 == state ? _GEN_12 : 2'h2 == state & _GEN_13; // @[online_comparator2.scala 35:17]
  assign io_earlyTerminate1 = earlyTerminate1; // @[online_comparator2.scala 148:22]
  assign io_earlyTerminate2 = earlyTerminate2; // @[online_comparator2.scala 149:22]
  assign io_maxMin = 2'h0 == state ? 1'h0 : _GEN_18; // @[online_comparator2.scala 35:17]
  always @(posedge clock) begin
    if (reset) begin // @[online_comparator2.scala 28:22]
      state <= 2'h0; // @[online_comparator2.scala 28:22]
    end else if (2'h0 == state) begin // @[online_comparator2.scala 35:17]
      if (io_start) begin // @[online_comparator2.scala 46:33]
        state <= 2'h1; // @[online_comparator2.scala 52:15]
      end
    end else if (2'h1 == state) begin // @[online_comparator2.scala 35:17]
      if (io_earlyTerminate) begin // @[online_comparator2.scala 57:42]
        state <= 2'h2; // @[online_comparator2.scala 66:15]
      end else begin
        state <= _GEN_8;
      end
    end
    if (reset) begin // @[online_comparator2.scala 31:32]
      earlyTerminate1 <= 1'h0; // @[online_comparator2.scala 31:32]
    end else if (2'h0 == state) begin // @[online_comparator2.scala 35:17]
      earlyTerminate1 <= 1'h0; // @[online_comparator2.scala 39:23]
    end else if (2'h1 == state) begin // @[online_comparator2.scala 35:17]
      earlyTerminate1 <= _GEN_9;
    end
    if (reset) begin // @[online_comparator2.scala 32:32]
      earlyTerminate2 <= 1'h0; // @[online_comparator2.scala 32:32]
    end else if (2'h0 == state) begin // @[online_comparator2.scala 35:17]
      earlyTerminate2 <= 1'h0; // @[online_comparator2.scala 40:23]
    end else if (2'h1 == state) begin // @[online_comparator2.scala 35:17]
      earlyTerminate2 <= _GEN_10;
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
  reg [1:0] state; // @[online_comparator2.scala 28:22]
  reg  earlyTerminate1; // @[online_comparator2.scala 31:32]
  wire  _T_6 = io_in1 & ~io_in2; // @[online_comparator2.scala 68:33]
  wire [1:0] _GEN_4 = ~io_in1 & io_in2 ? 2'h2 : 2'h1; // @[online_comparator2.scala 115:15 128:15 94:52]
  wire  _GEN_7 = io_in1 & ~io_in2 ? io_in2 : io_in1; // @[online_comparator2.scala 68:52 84:24]
  wire [1:0] _GEN_8 = io_in1 & ~io_in2 ? 2'h2 : _GEN_4; // @[online_comparator2.scala 68:52 92:15]
  wire  _GEN_9 = io_earlyTerminate | _T_6; // @[online_comparator2.scala 57:42 63:25]
  wire  _GEN_12 = io_earlyTerminate ? 1'h0 : _GEN_7; // @[online_comparator2.scala 57:42]
  wire  _GEN_13 = earlyTerminate1 ? io_in2 : io_in1; // @[online_comparator2.scala 137:41 138:22 140:22]
  wire  _GEN_18 = 2'h1 == state ? _GEN_12 : 2'h2 == state & _GEN_13; // @[online_comparator2.scala 35:17]
  assign io_maxMin = 2'h0 == state ? 1'h0 : _GEN_18; // @[online_comparator2.scala 35:17]
  always @(posedge clock) begin
    if (reset) begin // @[online_comparator2.scala 28:22]
      state <= 2'h0; // @[online_comparator2.scala 28:22]
    end else if (2'h0 == state) begin // @[online_comparator2.scala 35:17]
      if (io_start) begin // @[online_comparator2.scala 46:33]
        state <= 2'h1; // @[online_comparator2.scala 52:15]
      end
    end else if (2'h1 == state) begin // @[online_comparator2.scala 35:17]
      if (io_earlyTerminate) begin // @[online_comparator2.scala 57:42]
        state <= 2'h2; // @[online_comparator2.scala 66:15]
      end else begin
        state <= _GEN_8;
      end
    end
    if (reset) begin // @[online_comparator2.scala 31:32]
      earlyTerminate1 <= 1'h0; // @[online_comparator2.scala 31:32]
    end else if (2'h0 == state) begin // @[online_comparator2.scala 35:17]
      earlyTerminate1 <= 1'h0; // @[online_comparator2.scala 39:23]
    end else if (2'h1 == state) begin // @[online_comparator2.scala 35:17]
      earlyTerminate1 <= _GEN_9;
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
  wire  comparatorModule_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_io_earlyTerminate1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_io_earlyTerminate2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_1_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_1_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_1_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_1_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_1_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_1_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_1_io_earlyTerminate1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_1_io_earlyTerminate2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_1_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_2_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_2_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_2_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_2_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_2_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_2_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_2_io_earlyTerminate1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_2_io_earlyTerminate2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_2_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_3_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_3_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_3_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_3_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_3_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_3_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_3_io_earlyTerminate1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_3_io_earlyTerminate2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_3_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_4_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_4_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_4_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_4_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_4_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_4_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_4_io_earlyTerminate1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_4_io_earlyTerminate2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_4_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_5_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_5_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_5_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_5_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_5_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_5_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_5_io_earlyTerminate1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_5_io_earlyTerminate2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_5_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_6_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_6_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_6_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_6_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_6_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_6_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_6_io_earlyTerminate1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_6_io_earlyTerminate2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_6_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_7_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_7_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_7_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_7_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_7_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_7_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_7_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_8_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_8_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_8_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_8_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_8_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_8_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_8_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_9_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_9_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_9_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_9_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_9_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_9_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_9_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_10_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_10_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_10_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_10_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_10_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_10_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_10_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_11_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_11_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_11_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_11_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_11_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_11_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_11_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_12_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_12_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_12_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_12_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_12_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_12_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_12_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_13_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_13_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_13_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_13_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_13_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_13_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_13_io_maxMin; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_14_clock; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_14_reset; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_14_io_start; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_14_io_earlyTerminate; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_14_io_in1; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_14_io_in2; // @[online_comparator2.scala 163:34]
  wire  comparatorModule_14_io_maxMin; // @[online_comparator2.scala 163:34]
  reg  outResultValid; // @[min_max_parallel_online_comparator.scala 46:31]
  reg  outResult; // @[min_max_parallel_online_comparator.scala 47:26]
  reg  regStorageVec_0_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_0_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_0_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_1_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_1_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_1_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_2_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_2_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_2_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_3_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_3_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_3_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_4_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_4_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_4_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_5_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_5_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_5_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_6_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_6_earlyTerminated1; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_6_earlyTerminated2; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_7_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_8_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_9_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_10_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_11_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_12_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_13_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg  regStorageVec_14_minMaxOutput; // @[min_max_parallel_online_comparator.scala 49:26]
  reg [1:0] state; // @[min_max_parallel_online_comparator.scala 52:22]
  reg [3:0] currentIteration; // @[min_max_parallel_online_comparator.scala 54:33]
  wire  _T = 2'h0 == state; // @[min_max_parallel_online_comparator.scala 56:17]
  wire [3:0] _currentIteration_T_1 = currentIteration + 4'h1; // @[min_max_parallel_online_comparator.scala 67:44]
  wire [3:0] _T_6 = 4'h8 - 4'h1; // @[min_max_parallel_online_comparator.scala 70:38]
  wire [3:0] _T_8 = _T_6 + 4'h3; // @[min_max_parallel_online_comparator.scala 70:44]
  wire [3:0] _T_10 = _T_8 + 4'h1; // @[min_max_parallel_online_comparator.scala 70:83]
  wire  earlyTerminate1 = comparatorModule_io_earlyTerminate1; // @[online_comparator2.scala 165:31 182:21]
  wire  earlyTerminate1_1 = comparatorModule_1_io_earlyTerminate1; // @[online_comparator2.scala 165:31 182:21]
  wire  earlyTerminate1_2 = comparatorModule_2_io_earlyTerminate1; // @[online_comparator2.scala 165:31 182:21]
  wire  earlyTerminate1_3 = comparatorModule_3_io_earlyTerminate1; // @[online_comparator2.scala 165:31 182:21]
  wire  earlyTerminate1_4 = comparatorModule_4_io_earlyTerminate1; // @[online_comparator2.scala 165:31 182:21]
  wire  earlyTerminate1_5 = comparatorModule_5_io_earlyTerminate1; // @[online_comparator2.scala 165:31 182:21]
  wire  earlyTerminate1_6 = comparatorModule_6_io_earlyTerminate1; // @[online_comparator2.scala 165:31 182:21]
  wire  earlyTerminate2 = comparatorModule_io_earlyTerminate2; // @[online_comparator2.scala 166:31 183:21]
  wire  maxOutput = comparatorModule_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  earlyTerminate2_1 = comparatorModule_1_io_earlyTerminate2; // @[online_comparator2.scala 166:31 183:21]
  wire  maxOutput_1 = comparatorModule_1_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  earlyTerminate2_2 = comparatorModule_2_io_earlyTerminate2; // @[online_comparator2.scala 166:31 183:21]
  wire  maxOutput_2 = comparatorModule_2_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  earlyTerminate2_3 = comparatorModule_3_io_earlyTerminate2; // @[online_comparator2.scala 166:31 183:21]
  wire  maxOutput_3 = comparatorModule_3_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  earlyTerminate2_4 = comparatorModule_4_io_earlyTerminate2; // @[online_comparator2.scala 166:31 183:21]
  wire  maxOutput_4 = comparatorModule_4_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  earlyTerminate2_5 = comparatorModule_5_io_earlyTerminate2; // @[online_comparator2.scala 166:31 183:21]
  wire  maxOutput_5 = comparatorModule_5_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  earlyTerminate2_6 = comparatorModule_6_io_earlyTerminate2; // @[online_comparator2.scala 166:31 183:21]
  wire  maxOutput_6 = comparatorModule_6_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  minOutput = comparatorModule_7_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  minOutput_1 = comparatorModule_8_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  minOutput_2 = comparatorModule_9_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  minOutput_3 = comparatorModule_10_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  minOutput_4 = comparatorModule_11_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  minOutput_5 = comparatorModule_12_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  minOutput_6 = comparatorModule_13_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  minOutput_7 = comparatorModule_14_io_maxMin; // @[online_comparator2.scala 168:28 196:18]
  wire  _GEN_62 = 2'h2 == state | outResultValid; // @[min_max_parallel_online_comparator.scala 56:17 112:22 46:31]
  OnlineComparator2 comparatorModule ( // @[online_comparator2.scala 163:34]
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
  OnlineComparator2 comparatorModule_1 ( // @[online_comparator2.scala 163:34]
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
  OnlineComparator2 comparatorModule_2 ( // @[online_comparator2.scala 163:34]
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
  OnlineComparator2 comparatorModule_3 ( // @[online_comparator2.scala 163:34]
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
  OnlineComparator2 comparatorModule_4 ( // @[online_comparator2.scala 163:34]
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
  OnlineComparator2 comparatorModule_5 ( // @[online_comparator2.scala 163:34]
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
  OnlineComparator2 comparatorModule_6 ( // @[online_comparator2.scala 163:34]
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
  OnlineComparator2_7 comparatorModule_7 ( // @[online_comparator2.scala 163:34]
    .clock(comparatorModule_7_clock),
    .reset(comparatorModule_7_reset),
    .io_start(comparatorModule_7_io_start),
    .io_earlyTerminate(comparatorModule_7_io_earlyTerminate),
    .io_in1(comparatorModule_7_io_in1),
    .io_in2(comparatorModule_7_io_in2),
    .io_maxMin(comparatorModule_7_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_8 ( // @[online_comparator2.scala 163:34]
    .clock(comparatorModule_8_clock),
    .reset(comparatorModule_8_reset),
    .io_start(comparatorModule_8_io_start),
    .io_earlyTerminate(comparatorModule_8_io_earlyTerminate),
    .io_in1(comparatorModule_8_io_in1),
    .io_in2(comparatorModule_8_io_in2),
    .io_maxMin(comparatorModule_8_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_9 ( // @[online_comparator2.scala 163:34]
    .clock(comparatorModule_9_clock),
    .reset(comparatorModule_9_reset),
    .io_start(comparatorModule_9_io_start),
    .io_earlyTerminate(comparatorModule_9_io_earlyTerminate),
    .io_in1(comparatorModule_9_io_in1),
    .io_in2(comparatorModule_9_io_in2),
    .io_maxMin(comparatorModule_9_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_10 ( // @[online_comparator2.scala 163:34]
    .clock(comparatorModule_10_clock),
    .reset(comparatorModule_10_reset),
    .io_start(comparatorModule_10_io_start),
    .io_earlyTerminate(comparatorModule_10_io_earlyTerminate),
    .io_in1(comparatorModule_10_io_in1),
    .io_in2(comparatorModule_10_io_in2),
    .io_maxMin(comparatorModule_10_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_11 ( // @[online_comparator2.scala 163:34]
    .clock(comparatorModule_11_clock),
    .reset(comparatorModule_11_reset),
    .io_start(comparatorModule_11_io_start),
    .io_earlyTerminate(comparatorModule_11_io_earlyTerminate),
    .io_in1(comparatorModule_11_io_in1),
    .io_in2(comparatorModule_11_io_in2),
    .io_maxMin(comparatorModule_11_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_12 ( // @[online_comparator2.scala 163:34]
    .clock(comparatorModule_12_clock),
    .reset(comparatorModule_12_reset),
    .io_start(comparatorModule_12_io_start),
    .io_earlyTerminate(comparatorModule_12_io_earlyTerminate),
    .io_in1(comparatorModule_12_io_in1),
    .io_in2(comparatorModule_12_io_in2),
    .io_maxMin(comparatorModule_12_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_13 ( // @[online_comparator2.scala 163:34]
    .clock(comparatorModule_13_clock),
    .reset(comparatorModule_13_reset),
    .io_start(comparatorModule_13_io_start),
    .io_earlyTerminate(comparatorModule_13_io_earlyTerminate),
    .io_in1(comparatorModule_13_io_in1),
    .io_in2(comparatorModule_13_io_in2),
    .io_maxMin(comparatorModule_13_io_maxMin)
  );
  OnlineComparator2_7 comparatorModule_14 ( // @[online_comparator2.scala 163:34]
    .clock(comparatorModule_14_clock),
    .reset(comparatorModule_14_reset),
    .io_start(comparatorModule_14_io_start),
    .io_earlyTerminate(comparatorModule_14_io_earlyTerminate),
    .io_in1(comparatorModule_14_io_in1),
    .io_in2(comparatorModule_14_io_in2),
    .io_maxMin(comparatorModule_14_io_maxMin)
  );
  assign io_outResultValid = outResultValid; // @[min_max_parallel_online_comparator.scala 120:21]
  assign io_outResult = outResult; // @[min_max_parallel_online_comparator.scala 119:16]
  assign comparatorModule_clock = clock;
  assign comparatorModule_reset = reset;
  assign comparatorModule_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_io_earlyTerminate = regStorageVec_0_earlyTerminated2; // @[online_comparator2.scala 176:40]
  assign comparatorModule_io_in1 = regStorageVec_1_minMaxOutput; // @[online_comparator2.scala 173:29]
  assign comparatorModule_io_in2 = regStorageVec_2_minMaxOutput; // @[online_comparator2.scala 174:29]
  assign comparatorModule_1_clock = clock;
  assign comparatorModule_1_reset = reset;
  assign comparatorModule_1_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_1_io_earlyTerminate = regStorageVec_0_earlyTerminated1; // @[online_comparator2.scala 176:40]
  assign comparatorModule_1_io_in1 = regStorageVec_3_minMaxOutput; // @[online_comparator2.scala 173:29]
  assign comparatorModule_1_io_in2 = regStorageVec_4_minMaxOutput; // @[online_comparator2.scala 174:29]
  assign comparatorModule_2_clock = clock;
  assign comparatorModule_2_reset = reset;
  assign comparatorModule_2_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_2_io_earlyTerminate = regStorageVec_0_earlyTerminated2; // @[online_comparator2.scala 176:40]
  assign comparatorModule_2_io_in1 = regStorageVec_5_minMaxOutput; // @[online_comparator2.scala 173:29]
  assign comparatorModule_2_io_in2 = regStorageVec_6_minMaxOutput; // @[online_comparator2.scala 174:29]
  assign comparatorModule_3_clock = clock;
  assign comparatorModule_3_reset = reset;
  assign comparatorModule_3_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_3_io_earlyTerminate = regStorageVec_1_earlyTerminated1; // @[online_comparator2.scala 176:40]
  assign comparatorModule_3_io_in1 = regStorageVec_7_minMaxOutput; // @[online_comparator2.scala 173:29]
  assign comparatorModule_3_io_in2 = regStorageVec_8_minMaxOutput; // @[online_comparator2.scala 174:29]
  assign comparatorModule_4_clock = clock;
  assign comparatorModule_4_reset = reset;
  assign comparatorModule_4_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_4_io_earlyTerminate = regStorageVec_1_earlyTerminated2; // @[online_comparator2.scala 176:40]
  assign comparatorModule_4_io_in1 = regStorageVec_9_minMaxOutput; // @[online_comparator2.scala 173:29]
  assign comparatorModule_4_io_in2 = regStorageVec_10_minMaxOutput; // @[online_comparator2.scala 174:29]
  assign comparatorModule_5_clock = clock;
  assign comparatorModule_5_reset = reset;
  assign comparatorModule_5_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_5_io_earlyTerminate = regStorageVec_2_earlyTerminated1; // @[online_comparator2.scala 176:40]
  assign comparatorModule_5_io_in1 = regStorageVec_11_minMaxOutput; // @[online_comparator2.scala 173:29]
  assign comparatorModule_5_io_in2 = regStorageVec_12_minMaxOutput; // @[online_comparator2.scala 174:29]
  assign comparatorModule_6_clock = clock;
  assign comparatorModule_6_reset = reset;
  assign comparatorModule_6_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_6_io_earlyTerminate = regStorageVec_2_earlyTerminated2; // @[online_comparator2.scala 176:40]
  assign comparatorModule_6_io_in1 = regStorageVec_13_minMaxOutput; // @[online_comparator2.scala 173:29]
  assign comparatorModule_6_io_in2 = regStorageVec_14_minMaxOutput; // @[online_comparator2.scala 174:29]
  assign comparatorModule_7_clock = clock;
  assign comparatorModule_7_reset = reset;
  assign comparatorModule_7_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_7_io_earlyTerminate = regStorageVec_3_earlyTerminated1; // @[online_comparator2.scala 176:40]
  assign comparatorModule_7_io_in1 = io_in1_0; // @[online_comparator2.scala 173:29]
  assign comparatorModule_7_io_in2 = io_in2_0; // @[online_comparator2.scala 174:29]
  assign comparatorModule_8_clock = clock;
  assign comparatorModule_8_reset = reset;
  assign comparatorModule_8_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_8_io_earlyTerminate = regStorageVec_3_earlyTerminated2; // @[online_comparator2.scala 176:40]
  assign comparatorModule_8_io_in1 = io_in1_1; // @[online_comparator2.scala 173:29]
  assign comparatorModule_8_io_in2 = io_in2_1; // @[online_comparator2.scala 174:29]
  assign comparatorModule_9_clock = clock;
  assign comparatorModule_9_reset = reset;
  assign comparatorModule_9_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_9_io_earlyTerminate = regStorageVec_4_earlyTerminated1; // @[online_comparator2.scala 176:40]
  assign comparatorModule_9_io_in1 = io_in1_2; // @[online_comparator2.scala 173:29]
  assign comparatorModule_9_io_in2 = io_in2_2; // @[online_comparator2.scala 174:29]
  assign comparatorModule_10_clock = clock;
  assign comparatorModule_10_reset = reset;
  assign comparatorModule_10_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_10_io_earlyTerminate = regStorageVec_4_earlyTerminated2; // @[online_comparator2.scala 176:40]
  assign comparatorModule_10_io_in1 = io_in1_3; // @[online_comparator2.scala 173:29]
  assign comparatorModule_10_io_in2 = io_in2_3; // @[online_comparator2.scala 174:29]
  assign comparatorModule_11_clock = clock;
  assign comparatorModule_11_reset = reset;
  assign comparatorModule_11_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_11_io_earlyTerminate = regStorageVec_5_earlyTerminated1; // @[online_comparator2.scala 176:40]
  assign comparatorModule_11_io_in1 = io_in1_4; // @[online_comparator2.scala 173:29]
  assign comparatorModule_11_io_in2 = io_in2_4; // @[online_comparator2.scala 174:29]
  assign comparatorModule_12_clock = clock;
  assign comparatorModule_12_reset = reset;
  assign comparatorModule_12_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_12_io_earlyTerminate = regStorageVec_5_earlyTerminated2; // @[online_comparator2.scala 176:40]
  assign comparatorModule_12_io_in1 = io_in1_5; // @[online_comparator2.scala 173:29]
  assign comparatorModule_12_io_in2 = io_in2_5; // @[online_comparator2.scala 174:29]
  assign comparatorModule_13_clock = clock;
  assign comparatorModule_13_reset = reset;
  assign comparatorModule_13_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_13_io_earlyTerminate = regStorageVec_6_earlyTerminated1; // @[online_comparator2.scala 176:40]
  assign comparatorModule_13_io_in1 = io_in1_6; // @[online_comparator2.scala 173:29]
  assign comparatorModule_13_io_in2 = io_in2_6; // @[online_comparator2.scala 174:29]
  assign comparatorModule_14_clock = clock;
  assign comparatorModule_14_reset = reset;
  assign comparatorModule_14_io_start = io_start; // @[online_comparator2.scala 177:31]
  assign comparatorModule_14_io_earlyTerminate = regStorageVec_6_earlyTerminated2; // @[online_comparator2.scala 176:40]
  assign comparatorModule_14_io_in1 = io_in1_7; // @[online_comparator2.scala 173:29]
  assign comparatorModule_14_io_in2 = io_in2_7; // @[online_comparator2.scala 174:29]
  always @(posedge clock) begin
    if (reset) begin // @[min_max_parallel_online_comparator.scala 46:31]
      outResultValid <= 1'h0; // @[min_max_parallel_online_comparator.scala 46:31]
    end else if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (!(2'h1 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
        outResultValid <= _GEN_62;
      end
    end
    if (reset) begin // @[min_max_parallel_online_comparator.scala 47:26]
      outResult <= 1'h0; // @[min_max_parallel_online_comparator.scala 47:26]
    end else if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        outResult <= regStorageVec_0_minMaxOutput; // @[min_max_parallel_online_comparator.scala 68:17]
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_0_minMaxOutput <= maxOutput; // @[min_max_parallel_online_comparator.scala 85:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_0_earlyTerminated1 <= earlyTerminate1; // @[min_max_parallel_online_comparator.scala 83:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_0_earlyTerminated2 <= earlyTerminate2; // @[min_max_parallel_online_comparator.scala 84:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_1_minMaxOutput <= maxOutput_1; // @[min_max_parallel_online_comparator.scala 85:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_1_earlyTerminated1 <= earlyTerminate1_1; // @[min_max_parallel_online_comparator.scala 83:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_1_earlyTerminated2 <= earlyTerminate2_1; // @[min_max_parallel_online_comparator.scala 84:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_2_minMaxOutput <= maxOutput_2; // @[min_max_parallel_online_comparator.scala 85:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_2_earlyTerminated1 <= earlyTerminate1_2; // @[min_max_parallel_online_comparator.scala 83:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_2_earlyTerminated2 <= earlyTerminate2_2; // @[min_max_parallel_online_comparator.scala 84:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_3_minMaxOutput <= maxOutput_3; // @[min_max_parallel_online_comparator.scala 85:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_3_earlyTerminated1 <= earlyTerminate1_3; // @[min_max_parallel_online_comparator.scala 83:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_3_earlyTerminated2 <= earlyTerminate2_3; // @[min_max_parallel_online_comparator.scala 84:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_4_minMaxOutput <= maxOutput_4; // @[min_max_parallel_online_comparator.scala 85:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_4_earlyTerminated1 <= earlyTerminate1_4; // @[min_max_parallel_online_comparator.scala 83:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_4_earlyTerminated2 <= earlyTerminate2_4; // @[min_max_parallel_online_comparator.scala 84:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_5_minMaxOutput <= maxOutput_5; // @[min_max_parallel_online_comparator.scala 85:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_5_earlyTerminated1 <= earlyTerminate1_5; // @[min_max_parallel_online_comparator.scala 83:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_5_earlyTerminated2 <= earlyTerminate2_5; // @[min_max_parallel_online_comparator.scala 84:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_6_minMaxOutput <= maxOutput_6; // @[min_max_parallel_online_comparator.scala 85:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_6_earlyTerminated1 <= earlyTerminate1_6; // @[min_max_parallel_online_comparator.scala 83:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_6_earlyTerminated2 <= earlyTerminate2_6; // @[min_max_parallel_online_comparator.scala 84:51]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_7_minMaxOutput <= minOutput; // @[min_max_parallel_online_comparator.scala 100:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_8_minMaxOutput <= minOutput_1; // @[min_max_parallel_online_comparator.scala 100:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_9_minMaxOutput <= minOutput_2; // @[min_max_parallel_online_comparator.scala 100:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_10_minMaxOutput <= minOutput_3; // @[min_max_parallel_online_comparator.scala 100:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_11_minMaxOutput <= minOutput_4; // @[min_max_parallel_online_comparator.scala 100:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_12_minMaxOutput <= minOutput_5; // @[min_max_parallel_online_comparator.scala 100:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_13_minMaxOutput <= minOutput_6; // @[min_max_parallel_online_comparator.scala 100:47]
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        if (currentIteration != _T_10) begin // @[min_max_parallel_online_comparator.scala 70:90]
          regStorageVec_14_minMaxOutput <= minOutput_7; // @[min_max_parallel_online_comparator.scala 100:47]
        end
      end
    end
    if (reset) begin // @[min_max_parallel_online_comparator.scala 52:22]
      state <= 2'h0; // @[min_max_parallel_online_comparator.scala 52:22]
    end else if (2'h0 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (io_start) begin // @[min_max_parallel_online_comparator.scala 60:34]
        state <= 2'h1; // @[min_max_parallel_online_comparator.scala 61:15]
      end
    end else if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (!(currentIteration != _T_10)) begin // @[min_max_parallel_online_comparator.scala 70:90]
        state <= 2'h2; // @[min_max_parallel_online_comparator.scala 104:17]
      end
    end
    if (reset) begin // @[min_max_parallel_online_comparator.scala 54:33]
      currentIteration <= 4'h0; // @[min_max_parallel_online_comparator.scala 54:33]
    end else if (!(2'h0 == state)) begin // @[min_max_parallel_online_comparator.scala 56:17]
      if (2'h1 == state) begin // @[min_max_parallel_online_comparator.scala 56:17]
        currentIteration <= _currentIteration_T_1; // @[min_max_parallel_online_comparator.scala 67:24]
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T & io_start & ~reset) begin
          $fwrite(32'h80000002,"=============================================maximum index : %d\n",4'hf); // @[min_max_parallel_online_comparator.scala 62:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
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
  wire  minMaxTree_clock; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_reset; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_start; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in1_0; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in1_1; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in1_2; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in1_3; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in1_4; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in1_5; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in1_6; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in1_7; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in2_0; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in2_1; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in2_2; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in2_3; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in2_4; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in2_5; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in2_6; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_in2_7; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_outResultValid; // @[min_max_parallel_online_comparator.scala 131:28]
  wire  minMaxTree_io_outResult; // @[min_max_parallel_online_comparator.scala 131:28]
  wire [7:0] outResult = {{7'd0}, minMaxTree_io_outResult}; // @[min_max_parallel_online_comparator.scala 132:25 140:15]
  MinMaxParallelOnlineComparator minMaxTree ( // @[min_max_parallel_online_comparator.scala 131:28]
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
  assign io_outResultValid = minMaxTree_io_outResultValid; // @[min_max_parallel_online_comparator.scala 133:30 142:20]
  assign io_outResult = outResult[0]; // @[top.scala 37:16]
  assign minMaxTree_clock = clock;
  assign minMaxTree_reset = reset;
  assign minMaxTree_io_start = io_start; // @[min_max_parallel_online_comparator.scala 135:25]
  assign minMaxTree_io_in1_0 = io_in1_0; // @[min_max_parallel_online_comparator.scala 137:23]
  assign minMaxTree_io_in1_1 = io_in1_1; // @[min_max_parallel_online_comparator.scala 137:23]
  assign minMaxTree_io_in1_2 = io_in1_2; // @[min_max_parallel_online_comparator.scala 137:23]
  assign minMaxTree_io_in1_3 = io_in1_3; // @[min_max_parallel_online_comparator.scala 137:23]
  assign minMaxTree_io_in1_4 = io_in1_4; // @[min_max_parallel_online_comparator.scala 137:23]
  assign minMaxTree_io_in1_5 = io_in1_5; // @[min_max_parallel_online_comparator.scala 137:23]
  assign minMaxTree_io_in1_6 = io_in1_6; // @[min_max_parallel_online_comparator.scala 137:23]
  assign minMaxTree_io_in1_7 = io_in1_7; // @[min_max_parallel_online_comparator.scala 137:23]
  assign minMaxTree_io_in2_0 = io_in2_0; // @[min_max_parallel_online_comparator.scala 138:23]
  assign minMaxTree_io_in2_1 = io_in2_1; // @[min_max_parallel_online_comparator.scala 138:23]
  assign minMaxTree_io_in2_2 = io_in2_2; // @[min_max_parallel_online_comparator.scala 138:23]
  assign minMaxTree_io_in2_3 = io_in2_3; // @[min_max_parallel_online_comparator.scala 138:23]
  assign minMaxTree_io_in2_4 = io_in2_4; // @[min_max_parallel_online_comparator.scala 138:23]
  assign minMaxTree_io_in2_5 = io_in2_5; // @[min_max_parallel_online_comparator.scala 138:23]
  assign minMaxTree_io_in2_6 = io_in2_6; // @[min_max_parallel_online_comparator.scala 138:23]
  assign minMaxTree_io_in2_7 = io_in2_7; // @[min_max_parallel_online_comparator.scala 138:23]
endmodule
