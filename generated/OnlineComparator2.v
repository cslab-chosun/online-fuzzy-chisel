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
  wire  _GEN_13 = ~state ? _GEN_7 : earlyTerminate1; // @[online_comparator2.scala 44:19 36:32]
  wire  _GEN_14 = ~state & _GEN_7; // @[online_comparator2.scala 44:19]
  wire  _GEN_15 = ~state ? _GEN_8 : earlyTerminate2; // @[online_comparator2.scala 44:19 37:32]
  wire  _GEN_16 = ~state & _GEN_8; // @[online_comparator2.scala 44:19]
  wire  _GEN_17 = ~state ? _GEN_9 : state; // @[online_comparator2.scala 44:19 33:22]
  wire  _GEN_18 = ~state ? _GEN_10 : state & _GEN_11; // @[online_comparator2.scala 44:19]
  wire  _GEN_19 = io_start & _GEN_13; // @[online_comparator2.scala 151:21 42:29]
  wire  earlyTerminate1Shadow = io_start & _GEN_14; // @[online_comparator2.scala 154:27 42:29]
  wire  _GEN_21 = io_start & _GEN_15; // @[online_comparator2.scala 152:21 42:29]
  wire  earlyTerminate2Shadow = io_start & _GEN_16; // @[online_comparator2.scala 155:27 42:29]
  wire  _GEN_23 = io_start & _GEN_17; // @[online_comparator2.scala 150:11 42:29]
  assign io_earlyTerminate1 = earlyTerminate1 | earlyTerminate1Shadow; // @[online_comparator2.scala 163:41]
  assign io_earlyTerminate2 = earlyTerminate2 | earlyTerminate2Shadow; // @[online_comparator2.scala 164:41]
  assign io_maxMin = io_start & _GEN_18; // @[online_comparator2.scala 157:18 42:29]
  always @(posedge clock) begin
    if (reset) begin // @[online_comparator2.scala 33:22]
      state <= 1'h0; // @[online_comparator2.scala 33:22]
    end else begin
      state <= _GEN_23;
    end
    if (reset) begin // @[online_comparator2.scala 36:32]
      earlyTerminate1 <= 1'h0; // @[online_comparator2.scala 36:32]
    end else begin
      earlyTerminate1 <= _GEN_19;
    end
    if (reset) begin // @[online_comparator2.scala 37:32]
      earlyTerminate2 <= 1'h0; // @[online_comparator2.scala 37:32]
    end else begin
      earlyTerminate2 <= _GEN_21;
    end
  end
endmodule
