module LutMembershipFunctionOnline_9(
  input   clock,
  input   reset,
  input   io_start,
  input   io_inputBit
);
  reg [9:0] i; // @[lut_mem_online.scala 205:18]
  reg [4:0] counter; // @[lut_mem_online.scala 211:24]
  wire  _T_2 = counter < 5'ha; // @[lut_mem_online.scala 231:22]
  wire  _T_10 = ~io_inputBit; // @[lut_mem_online.scala 236:32]
  wire  _T_6747 = counter < 5'h11; // @[lut_mem_online.scala 248:22]
  wire  _T_6749 = counter >= 5'ha; // @[lut_mem_online.scala 256:30]
  wire [4:0] _outResult_T_1 = counter - 5'ha; // @[lut_mem_online.scala 258:41]
  wire  _T_6753 = ~reset; // @[lut_mem_online.scala 260:21]
  wire  _T_6754 = i < 10'h1ff; // @[lut_mem_online.scala 271:18]
  wire [11:0] _i_T = 2'h2 * i; // @[lut_mem_online.scala 281:24]
  wire [11:0] _i_T_2 = _i_T + 12'h1; // @[lut_mem_online.scala 281:28]
  wire [11:0] _i_T_5 = _i_T + 12'h2; // @[lut_mem_online.scala 283:28]
  wire [11:0] _GEN_6765 = io_inputBit ? _i_T_5 : {{2'd0}, i}; // @[lut_mem_online.scala 282:45 283:17 205:18]
  wire [11:0] _GEN_6766 = _T_10 ? _i_T_2 : _GEN_6765; // @[lut_mem_online.scala 280:39 281:17]
  wire  _T_6759 = i < 10'h3ff; // @[lut_mem_online.scala 286:24]
  wire [9:0] _GEN_6767 = i < 10'h3ff ? 10'h3ff : i; // @[lut_mem_online.scala 286:63 294:15 205:18]
  wire [11:0] _GEN_6768 = i < 10'h1ff ? _GEN_6766 : {{2'd0}, _GEN_6767}; // @[lut_mem_online.scala 271:61]
  wire [4:0] _counter_T_1 = counter + 5'h1; // @[lut_mem_online.scala 297:30]
  wire [11:0] _GEN_6771 = counter < 5'h11 ? _GEN_6768 : {{2'd0}, i}; // @[lut_mem_online.scala 205:18 248:52]
  wire [11:0] _GEN_6795 = io_start ? _GEN_6771 : 12'h0; // @[lut_mem_online.scala 219:29 321:7]
  wire [11:0] _GEN_6798 = reset ? 12'h0 : _GEN_6795; // @[lut_mem_online.scala 205:{18,18}]
  wire  _GEN_6799 = io_start & _T_6747; // @[lut_mem_online.scala 260:21]
  always @(posedge clock) begin
    i <= _GEN_6798[9:0]; // @[lut_mem_online.scala 205:{18,18}]
    if (reset) begin // @[lut_mem_online.scala 211:24]
      counter <= 5'h0; // @[lut_mem_online.scala 211:24]
    end else if (io_start) begin // @[lut_mem_online.scala 219:29]
      if (counter < 5'h11) begin // @[lut_mem_online.scala 248:52]
        counter <= _counter_T_1; // @[lut_mem_online.scala 297:19]
      end
    end else begin
      counter <= 5'h0; // @[lut_mem_online.scala 322:13]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_6747 & ~_T_2 & _T_6749 & ~reset) begin
          $fwrite(32'h80000002,"debug, set buffer to output buffer(%d), counter = %d\n",_outResult_T_1,counter); // @[lut_mem_online.scala 260:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_6799 & _T_6754 & _T_6753) begin
          $fwrite(32'h80000002,"debug, state transition 1: %d\n",i); // @[lut_mem_online.scala 274:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_6799 & ~_T_6754 & _T_6759 & _T_6753) begin
          $fwrite(32'h80000002,"debug, state transition 2: %d\n",i); // @[lut_mem_online.scala 289:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
