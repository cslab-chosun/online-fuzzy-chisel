module OnlineComparator2(
  input   clock,
  input   reset,
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
  wire  _T_1 = ~state; // @[online_comparator2.scala 44:19]
  wire  _T_4 = ~reset; // @[online_comparator2.scala 51:19]
  wire  _T_7 = io_in1 & ~io_in2; // @[online_comparator2.scala 61:35]
  wire  _T_12 = ~io_in1 & io_in2; // @[online_comparator2.scala 92:35]
  wire  _GEN_2 = ~io_in1 & io_in2 ? io_in2 : io_in1; // @[online_comparator2.scala 100:26 125:24 92:54]
  wire  _GEN_3 = io_in1 & ~io_in2 ? 1'h0 : _T_12; // @[online_comparator2.scala 61:54 65:29]
  wire  _GEN_5 = io_in1 & ~io_in2 ? io_in1 : _GEN_2; // @[online_comparator2.scala 61:54 70:26]
  wire  _GEN_6 = io_in1 & ~io_in2 | _T_12; // @[online_comparator2.scala 61:54 90:17]
  wire  _GEN_7 = io_earlyTerminate | _GEN_3; // @[online_comparator2.scala 48:44 54:27]
  wire  _GEN_8 = io_earlyTerminate | _T_7; // @[online_comparator2.scala 48:44 56:27]
  wire  _GEN_9 = io_earlyTerminate | _GEN_6; // @[online_comparator2.scala 48:44 59:17]
  wire  _GEN_10 = io_earlyTerminate ? 1'h0 : _GEN_5; // @[online_comparator2.scala 48:44]
  wire  _GEN_11 = earlyTerminate1 ? io_in2 : io_in1; // @[online_comparator2.scala 141:42 142:24 144:24]
  wire  earlyTerminate1Shadow = ~state & _GEN_7; // @[online_comparator2.scala 44:19]
  wire  earlyTerminate2Shadow = ~state & _GEN_8; // @[online_comparator2.scala 44:19]
  wire  _GEN_27 = _T_1 & ~io_earlyTerminate; // @[online_comparator2.scala 73:21]
  wire  _GEN_32 = _GEN_27 & ~_T_7; // @[online_comparator2.scala 103:21]
  assign io_earlyTerminate1 = earlyTerminate1 | earlyTerminate1Shadow; // @[online_comparator2.scala 163:41]
  assign io_earlyTerminate2 = earlyTerminate2 | earlyTerminate2Shadow; // @[online_comparator2.scala 164:41]
  assign io_maxMin = ~state ? _GEN_10 : state & _GEN_11; // @[online_comparator2.scala 44:19]
  always @(posedge clock) begin
    if (reset) begin // @[online_comparator2.scala 33:22]
      state <= 1'h0; // @[online_comparator2.scala 33:22]
    end else if (~state) begin // @[online_comparator2.scala 44:19]
      state <= _GEN_9;
    end
    if (reset) begin // @[online_comparator2.scala 36:32]
      earlyTerminate1 <= 1'h0; // @[online_comparator2.scala 36:32]
    end else if (~state) begin // @[online_comparator2.scala 44:19]
      earlyTerminate1 <= _GEN_7;
    end
    if (reset) begin // @[online_comparator2.scala 37:32]
      earlyTerminate2 <= 1'h0; // @[online_comparator2.scala 37:32]
    end else if (~state) begin // @[online_comparator2.scala 44:19]
      earlyTerminate2 <= _GEN_8;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1 & io_earlyTerminate & ~reset) begin
          $fwrite(32'h80000002,"dbg, comparator debug: global earlyTerminate raised\n"); // @[online_comparator2.scala 51:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1 & ~io_earlyTerminate & _T_7 & _T_4) begin
          $fwrite(32'h80000002,"dbg, comparator debug: earlyTerminate1 => true\n"); // @[online_comparator2.scala 73:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_27 & ~_T_7 & _T_12 & _T_4) begin
          $fwrite(32'h80000002,"dbg, comparator debug: earlyTerminate2 => true\n"); // @[online_comparator2.scala 103:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_32 & ~_T_12 & _T_4) begin
          $fwrite(32'h80000002,"dbg, comparator debug: both bits are equal\n"); // @[online_comparator2.scala 135:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
