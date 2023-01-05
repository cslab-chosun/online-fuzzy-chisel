module Comparator(
  input   clock,
  input   reset,
  input   io_start,
  input   io_in1,
  input   io_in2,
  output  io_earlyTerminate1,
  output  io_earlyTerminate2
);
  reg  state; // @[comparator.scala 28:22]
  reg  earlyTerminate1; // @[comparator.scala 31:32]
  reg  earlyTerminate2; // @[comparator.scala 32:32]
  wire  _T = ~state; // @[comparator.scala 35:17]
  wire  _T_2 = ~reset; // @[comparator.scala 43:15]
  wire  _GEN_0 = io_start | state; // @[comparator.scala 46:33 52:15 28:22]
  wire  _T_12 = io_in1 & ~io_in2; // @[comparator.scala 68:33]
  wire  _T_17 = ~io_in1 & io_in2; // @[comparator.scala 94:33]
  wire  _GEN_4 = ~io_in1 & io_in2 ? 1'h0 : 1'h1; // @[comparator.scala 115:15 128:15 94:52]
  wire  _GEN_23 = ~_T & state; // @[comparator.scala 87:19]
  wire  _GEN_28 = _GEN_23 & ~_T_12; // @[comparator.scala 111:19]
  assign io_earlyTerminate1 = earlyTerminate1; // @[comparator.scala 140:22]
  assign io_earlyTerminate2 = earlyTerminate2; // @[comparator.scala 141:22]
  always @(posedge clock) begin
    if (reset) begin // @[comparator.scala 28:22]
      state <= 1'h0; // @[comparator.scala 28:22]
    end else if (~state) begin // @[comparator.scala 35:17]
      state <= _GEN_0;
    end else if (state) begin // @[comparator.scala 35:17]
      if (io_in1 & ~io_in2) begin // @[comparator.scala 68:52]
        state <= 1'h0; // @[comparator.scala 92:15]
      end else begin
        state <= _GEN_4;
      end
    end
    if (reset) begin // @[comparator.scala 31:32]
      earlyTerminate1 <= 1'h0; // @[comparator.scala 31:32]
    end else if (~state) begin // @[comparator.scala 35:17]
      earlyTerminate1 <= 1'h0; // @[comparator.scala 39:23]
    end else if (state) begin // @[comparator.scala 35:17]
      if (io_in1 & ~io_in2) begin // @[comparator.scala 68:52]
        earlyTerminate1 <= 1'h0; // @[comparator.scala 82:27]
      end else begin
        earlyTerminate1 <= _T_17;
      end
    end
    if (reset) begin // @[comparator.scala 32:32]
      earlyTerminate2 <= 1'h0; // @[comparator.scala 32:32]
    end else if (~state) begin // @[comparator.scala 35:17]
      earlyTerminate2 <= 1'h0; // @[comparator.scala 40:23]
    end else if (state) begin // @[comparator.scala 35:17]
      earlyTerminate2 <= _T_12;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T & ~reset) begin
          $fwrite(32'h80000002,"dbg, comparator debug: in idle state | start : %d\n",io_start); // @[comparator.scala 43:15]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T & io_start & _T_2) begin
          $fwrite(32'h80000002,"dbg, comparator debug: module will go to init state\n"); // @[comparator.scala 49:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~_T & state & _T_12 & _T_2) begin
          $fwrite(32'h80000002,"dbg, comparator debug: earlyTerminate2 => true\n"); // @[comparator.scala 87:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_23 & ~_T_12 & _T_17 & _T_2) begin
          $fwrite(32'h80000002,"dbg, comparator debug: earlyTerminate1 => true\n"); // @[comparator.scala 111:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_28 & ~_T_17 & _T_2) begin
          $fwrite(32'h80000002,"dbg, comparator debug: both bits are equal\n"); // @[comparator.scala 131:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module MinMaxTree(
  input        clock,
  input        reset,
  input  [7:0] io_in1,
  input  [7:0] io_in2,
  output [7:0] io_outResult
);
  wire  comparatorModule_clock; // @[comparator.scala 155:34]
  wire  comparatorModule_reset; // @[comparator.scala 155:34]
  wire  comparatorModule_io_start; // @[comparator.scala 155:34]
  wire  comparatorModule_io_in1; // @[comparator.scala 155:34]
  wire  comparatorModule_io_in2; // @[comparator.scala 155:34]
  wire  comparatorModule_io_earlyTerminate1; // @[comparator.scala 155:34]
  wire  comparatorModule_io_earlyTerminate2; // @[comparator.scala 155:34]
  reg  askForNewNumber; // @[min_max.scala 29:32]
  reg [7:0] regMinVec_0; // @[min_max.scala 31:22]
  reg [7:0] regMinVec_1; // @[min_max.scala 31:22]
  reg [7:0] regMinVec_2; // @[min_max.scala 31:22]
  reg [7:0] regMinVec_3; // @[min_max.scala 31:22]
  reg [7:0] regMinVec_4; // @[min_max.scala 31:22]
  reg [7:0] regMinVec_5; // @[min_max.scala 31:22]
  reg [7:0] regMinVec_6; // @[min_max.scala 31:22]
  reg [7:0] regMinVec_7; // @[min_max.scala 31:22]
  reg [2:0] regBitIndx; // @[min_max.scala 33:27]
  reg [2:0] regVecIndx; // @[min_max.scala 36:27]
  wire  compStartBit = ~askForNewNumber; // @[min_max.scala 37:33]
  reg  regToEqualNums; // @[min_max.scala 38:31]
  wire [7:0] _T = io_in1 >> regBitIndx; // @[min_max.scala 42:11]
  wire [7:0] _T_2 = io_in2 >> regBitIndx; // @[min_max.scala 43:11]
  wire  _T_5 = ~reset; // @[comparator.scala 178:13]
  wire  earlyTerminate1 = comparatorModule_io_earlyTerminate1; // @[comparator.scala 157:31 174:21]
  wire  earlyTerminate2 = comparatorModule_io_earlyTerminate2; // @[comparator.scala 158:31 175:21]
  wire  earlyTerminated = earlyTerminate1 | earlyTerminate2; // @[comparator.scala 190:43]
  wire  selectedInput = earlyTerminate1 ? 1'h0 : 1'h1; // @[comparator.scala 195:28]
  wire  _T_11 = (~earlyTerminated | askForNewNumber) & ~regToEqualNums; // @[min_max.scala 60:66]
  wire [2:0] _regBitIndx_T_1 = regBitIndx - 3'h1; // @[min_max.scala 62:32]
  wire  _GEN_0 = regBitIndx == 3'h0 | regToEqualNums; // @[min_max.scala 67:32 68:24 38:31]
  wire [2:0] _regVecIndx_T_1 = regVecIndx + 3'h1; // @[min_max.scala 109:32]
  wire  _GEN_26 = _T_11 & _GEN_0; // @[min_max.scala 61:7 89:22]
  wire [7:0] _io_outResult_T_1 = regMinVec_0 + regMinVec_1; // @[min_max.scala 120:32]
  wire [7:0] _io_outResult_T_3 = _io_outResult_T_1 + regMinVec_2; // @[min_max.scala 120:47]
  wire [7:0] _io_outResult_T_5 = _io_outResult_T_3 + regMinVec_3; // @[min_max.scala 120:62]
  wire [7:0] _io_outResult_T_7 = _io_outResult_T_5 + regMinVec_4; // @[min_max.scala 122:5]
  wire [7:0] _io_outResult_T_9 = _io_outResult_T_7 + regMinVec_5; // @[min_max.scala 122:20]
  wire [7:0] _io_outResult_T_11 = _io_outResult_T_9 + regMinVec_6; // @[min_max.scala 122:35]
  Comparator comparatorModule ( // @[comparator.scala 155:34]
    .clock(comparatorModule_clock),
    .reset(comparatorModule_reset),
    .io_start(comparatorModule_io_start),
    .io_in1(comparatorModule_io_in1),
    .io_in2(comparatorModule_io_in2),
    .io_earlyTerminate1(comparatorModule_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_io_earlyTerminate2)
  );
  assign io_outResult = _io_outResult_T_11 + regMinVec_7; // @[min_max.scala 122:50]
  assign comparatorModule_clock = clock;
  assign comparatorModule_reset = reset;
  assign comparatorModule_io_start = ~askForNewNumber; // @[min_max.scala 37:33]
  assign comparatorModule_io_in1 = _T[0]; // @[min_max.scala 42:11]
  assign comparatorModule_io_in2 = _T_2[0]; // @[min_max.scala 43:11]
  always @(posedge clock) begin
    if (reset) begin // @[min_max.scala 29:32]
      askForNewNumber <= 1'h0; // @[min_max.scala 29:32]
    end else if (_T_11) begin // @[min_max.scala 61:7]
      askForNewNumber <= 1'h0; // @[min_max.scala 58:21]
    end else begin
      askForNewNumber <= 1'h1; // @[min_max.scala 110:23]
    end
    if (!(_T_11)) begin // @[min_max.scala 61:7]
      if (~selectedInput) begin // @[min_max.scala 91:35]
        if (3'h0 == regVecIndx) begin // @[min_max.scala 92:31]
          regMinVec_0 <= io_in1; // @[min_max.scala 92:31]
        end
      end else if (3'h0 == regVecIndx) begin // @[min_max.scala 99:31]
        regMinVec_0 <= io_in2; // @[min_max.scala 99:31]
      end
    end
    if (!(_T_11)) begin // @[min_max.scala 61:7]
      if (~selectedInput) begin // @[min_max.scala 91:35]
        if (3'h1 == regVecIndx) begin // @[min_max.scala 92:31]
          regMinVec_1 <= io_in1; // @[min_max.scala 92:31]
        end
      end else if (3'h1 == regVecIndx) begin // @[min_max.scala 99:31]
        regMinVec_1 <= io_in2; // @[min_max.scala 99:31]
      end
    end
    if (!(_T_11)) begin // @[min_max.scala 61:7]
      if (~selectedInput) begin // @[min_max.scala 91:35]
        if (3'h2 == regVecIndx) begin // @[min_max.scala 92:31]
          regMinVec_2 <= io_in1; // @[min_max.scala 92:31]
        end
      end else if (3'h2 == regVecIndx) begin // @[min_max.scala 99:31]
        regMinVec_2 <= io_in2; // @[min_max.scala 99:31]
      end
    end
    if (!(_T_11)) begin // @[min_max.scala 61:7]
      if (~selectedInput) begin // @[min_max.scala 91:35]
        if (3'h3 == regVecIndx) begin // @[min_max.scala 92:31]
          regMinVec_3 <= io_in1; // @[min_max.scala 92:31]
        end
      end else if (3'h3 == regVecIndx) begin // @[min_max.scala 99:31]
        regMinVec_3 <= io_in2; // @[min_max.scala 99:31]
      end
    end
    if (!(_T_11)) begin // @[min_max.scala 61:7]
      if (~selectedInput) begin // @[min_max.scala 91:35]
        if (3'h4 == regVecIndx) begin // @[min_max.scala 92:31]
          regMinVec_4 <= io_in1; // @[min_max.scala 92:31]
        end
      end else if (3'h4 == regVecIndx) begin // @[min_max.scala 99:31]
        regMinVec_4 <= io_in2; // @[min_max.scala 99:31]
      end
    end
    if (!(_T_11)) begin // @[min_max.scala 61:7]
      if (~selectedInput) begin // @[min_max.scala 91:35]
        if (3'h5 == regVecIndx) begin // @[min_max.scala 92:31]
          regMinVec_5 <= io_in1; // @[min_max.scala 92:31]
        end
      end else if (3'h5 == regVecIndx) begin // @[min_max.scala 99:31]
        regMinVec_5 <= io_in2; // @[min_max.scala 99:31]
      end
    end
    if (!(_T_11)) begin // @[min_max.scala 61:7]
      if (~selectedInput) begin // @[min_max.scala 91:35]
        if (3'h6 == regVecIndx) begin // @[min_max.scala 92:31]
          regMinVec_6 <= io_in1; // @[min_max.scala 92:31]
        end
      end else if (3'h6 == regVecIndx) begin // @[min_max.scala 99:31]
        regMinVec_6 <= io_in2; // @[min_max.scala 99:31]
      end
    end
    if (!(_T_11)) begin // @[min_max.scala 61:7]
      if (~selectedInput) begin // @[min_max.scala 91:35]
        if (3'h7 == regVecIndx) begin // @[min_max.scala 92:31]
          regMinVec_7 <= io_in1; // @[min_max.scala 92:31]
        end
      end else if (3'h7 == regVecIndx) begin // @[min_max.scala 99:31]
        regMinVec_7 <= io_in2; // @[min_max.scala 99:31]
      end
    end
    if (reset) begin // @[min_max.scala 33:27]
      regBitIndx <= 3'h7; // @[min_max.scala 33:27]
    end else if (_T_11) begin // @[min_max.scala 61:7]
      regBitIndx <= _regBitIndx_T_1; // @[min_max.scala 62:18]
    end else begin
      regBitIndx <= 3'h7; // @[min_max.scala 88:18]
    end
    if (reset) begin // @[min_max.scala 36:27]
      regVecIndx <= 3'h0; // @[min_max.scala 36:27]
    end else if (!(_T_11)) begin // @[min_max.scala 61:7]
      regVecIndx <= _regVecIndx_T_1; // @[min_max.scala 109:18]
    end
    if (reset) begin // @[min_max.scala 38:31]
      regToEqualNums <= 1'h0; // @[min_max.scala 38:31]
    end else begin
      regToEqualNums <= _GEN_26;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,compStartBit,_T[0],_T_2[0],earlyTerminate1,earlyTerminate2); // @[comparator.scala 178:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_5) begin
          $fwrite(32'h80000002,"=======================================\n"); // @[min_max.scala 113:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module FuzzyController(
  input        clock,
  input        reset,
  input  [7:0] io_in1,
  input  [7:0] io_in2,
  output [7:0] io_max
);
  wire  minMaxTree_minMaxTree_clock; // @[min_max.scala 136:28]
  wire  minMaxTree_minMaxTree_reset; // @[min_max.scala 136:28]
  wire [7:0] minMaxTree_minMaxTree_io_in1; // @[min_max.scala 136:28]
  wire [7:0] minMaxTree_minMaxTree_io_in2; // @[min_max.scala 136:28]
  wire [7:0] minMaxTree_minMaxTree_io_outResult; // @[min_max.scala 136:28]
  MinMaxTree minMaxTree_minMaxTree ( // @[min_max.scala 136:28]
    .clock(minMaxTree_minMaxTree_clock),
    .reset(minMaxTree_minMaxTree_reset),
    .io_in1(minMaxTree_minMaxTree_io_in1),
    .io_in2(minMaxTree_minMaxTree_io_in2),
    .io_outResult(minMaxTree_minMaxTree_io_outResult)
  );
  assign io_max = minMaxTree_minMaxTree_io_outResult; // @[min_max.scala 137:25 144:15]
  assign minMaxTree_minMaxTree_clock = clock;
  assign minMaxTree_minMaxTree_reset = reset;
  assign minMaxTree_minMaxTree_io_in1 = io_in1; // @[min_max.scala 141:23]
  assign minMaxTree_minMaxTree_io_in2 = io_in2; // @[min_max.scala 142:23]
endmodule
