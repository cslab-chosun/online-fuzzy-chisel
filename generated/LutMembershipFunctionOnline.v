module LutMembershipFunctionOnline(
  input   clock,
  input   reset,
  input   io_start,
  input   io_inputBit
);
  reg [7:0] i; // @[lut_mem_online.scala 205:18]
  reg [3:0] counter; // @[lut_mem_online.scala 211:24]
  wire  _T_10 = ~io_inputBit; // @[lut_mem_online.scala 236:32]
  wire  _T_279 = counter < 4'he; // @[lut_mem_online.scala 248:22]
  wire  _T_280 = counter < 4'h7; // @[lut_mem_online.scala 253:24]
  wire  _T_281 = counter >= 4'h7; // @[lut_mem_online.scala 256:30]
  wire [3:0] _outResult_T_1 = counter - 4'h7; // @[lut_mem_online.scala 258:41]
  wire  _T_285 = ~reset; // @[lut_mem_online.scala 260:21]
  wire  _T_286 = i < 8'h7f; // @[lut_mem_online.scala 271:18]
  wire [9:0] _i_T = 2'h2 * i; // @[lut_mem_online.scala 281:24]
  wire [9:0] _i_T_2 = _i_T + 10'h1; // @[lut_mem_online.scala 281:28]
  wire [9:0] _i_T_5 = _i_T + 10'h2; // @[lut_mem_online.scala 283:28]
  wire [9:0] _GEN_295 = io_inputBit ? _i_T_5 : {{2'd0}, i}; // @[lut_mem_online.scala 282:45 283:17 205:18]
  wire [9:0] _GEN_296 = _T_10 ? _i_T_2 : _GEN_295; // @[lut_mem_online.scala 280:39 281:17]
  wire  _T_291 = i < 8'hff; // @[lut_mem_online.scala 286:24]
  wire [7:0] _GEN_297 = i < 8'hff ? 8'hff : i; // @[lut_mem_online.scala 286:63 294:15 205:18]
  wire [9:0] _GEN_298 = i < 8'h7f ? _GEN_296 : {{2'd0}, _GEN_297}; // @[lut_mem_online.scala 271:61]
  wire [3:0] _counter_T_1 = counter + 4'h1; // @[lut_mem_online.scala 297:30]
  wire [9:0] _GEN_301 = counter < 4'he ? _GEN_298 : {{2'd0}, i}; // @[lut_mem_online.scala 205:18 248:52]
  wire [9:0] _GEN_325 = io_start ? _GEN_301 : 10'h0; // @[lut_mem_online.scala 219:29 321:7]
  wire [9:0] _GEN_328 = reset ? 10'h0 : _GEN_325; // @[lut_mem_online.scala 205:{18,18}]
  wire  _GEN_329 = io_start & _T_279; // @[lut_mem_online.scala 260:21]
  always @(posedge clock) begin
    i <= _GEN_328[7:0]; // @[lut_mem_online.scala 205:{18,18}]
    if (reset) begin // @[lut_mem_online.scala 211:24]
      counter <= 4'h0; // @[lut_mem_online.scala 211:24]
    end else if (io_start) begin // @[lut_mem_online.scala 219:29]
      if (counter < 4'he) begin // @[lut_mem_online.scala 248:52]
        counter <= _counter_T_1; // @[lut_mem_online.scala 297:19]
      end
    end else begin
      counter <= 4'h0; // @[lut_mem_online.scala 322:13]
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_279 & ~_T_280 & _T_281 & ~reset) begin
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
        if (_GEN_329 & _T_286 & _T_285) begin
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
        if (_GEN_329 & ~_T_286 & _T_291 & _T_285) begin
          $fwrite(32'h80000002,"debug, state transition 2: %d\n",i); // @[lut_mem_online.scala 289:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
