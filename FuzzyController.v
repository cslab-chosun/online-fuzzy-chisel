module Comparator(
  input   clock,
  input   reset,
  input   io_in1,
  input   io_in2,
  output  io_earlyTerminate1,
  output  io_earlyTerminate2
);
  reg  state; // @[comparator.scala 28:30]
  reg  earlyTerminate1; // @[comparator.scala 31:40]
  reg  earlyTerminate2; // @[comparator.scala 32:36]
  wire  _T_9 = ~io_in1 & io_in2; // @[comparator.scala 69:53]
  wire  _GEN_2 = ~io_in1 & io_in2 ? 1'h0 : earlyTerminate2; // @[comparator.scala 32:36 69:72 79:57]
  wire  _GEN_4 = ~io_in1 & io_in2 ? 1'h0 : 1'h1; // @[comparator.scala 69:72 83:39 96:39]
  wire  _GEN_6 = io_in1 & ~io_in2 | _GEN_2; // @[comparator.scala 53:72 63:57]
  assign io_earlyTerminate1 = earlyTerminate1; // @[comparator.scala 104:28]
  assign io_earlyTerminate2 = earlyTerminate2; // @[comparator.scala 105:28]
  always @(posedge clock) begin
    if (reset) begin // @[comparator.scala 28:30]
      state <= 1'h0; // @[comparator.scala 28:30]
    end else if (!(~state)) begin // @[comparator.scala 36:25]
      if (state) begin // @[comparator.scala 36:25]
        if (io_in1 & ~io_in2) begin // @[comparator.scala 53:72]
          state <= 1'h0; // @[comparator.scala 67:39]
        end else begin
          state <= _GEN_4;
        end
      end
    end
    if (reset) begin // @[comparator.scala 31:40]
      earlyTerminate1 <= 1'h0; // @[comparator.scala 31:40]
    end else if (!(~state)) begin // @[comparator.scala 36:25]
      if (state) begin // @[comparator.scala 36:25]
        if (io_in1 & ~io_in2) begin // @[comparator.scala 53:72]
          earlyTerminate1 <= 1'h0; // @[comparator.scala 62:57]
        end else begin
          earlyTerminate1 <= _T_9;
        end
      end
    end
    if (reset) begin // @[comparator.scala 32:36]
      earlyTerminate2 <= 1'h0; // @[comparator.scala 32:36]
    end else if (!(~state)) begin // @[comparator.scala 36:25]
      if (state) begin // @[comparator.scala 36:25]
        earlyTerminate2 <= _GEN_6;
      end
    end
  end
endmodule
module MinMaxTree(
  input        clock,
  input        reset,
  input  [7:0] io_in1,
  input  [7:0] io_in2,
  output [7:0] io_outResult
);
  wire  comparatorModule_clock; // @[comparator.scala 114:34]
  wire  comparatorModule_reset; // @[comparator.scala 114:34]
  wire  comparatorModule_io_in1; // @[comparator.scala 114:34]
  wire  comparatorModule_io_in2; // @[comparator.scala 114:34]
  wire  comparatorModule_io_earlyTerminate1; // @[comparator.scala 114:34]
  wire  comparatorModule_io_earlyTerminate2; // @[comparator.scala 114:34]
  reg [7:0] regMinVec_0; // @[min_max.scala 28:24]
  reg [7:0] regMinVec_7; // @[min_max.scala 28:24]
  reg [2:0] regBitIndx; // @[min_max.scala 30:29]
  reg [2:0] regVecIndx; // @[min_max.scala 31:29]
  wire [7:0] _T = io_in1 >> regBitIndx; // @[min_max.scala 33:76]
  wire [7:0] _T_2 = io_in2 >> regBitIndx; // @[min_max.scala 33:96]
  wire  earlyTerminate1 = comparatorModule_io_earlyTerminate1;
  wire  earlyTerminate2 = comparatorModule_io_earlyTerminate2;
  wire  earlyTerminated = earlyTerminate1 & earlyTerminate2; // @[comparator.scala 139:43]
  wire  selectedInput = earlyTerminate1 ? 1'h0 : 1'h1; // @[comparator.scala 144:28]
  wire [2:0] _regBitIndx_T_1 = regBitIndx + 3'h1; // @[min_max.scala 36:34]
  wire [2:0] _regVecIndx_T_1 = regVecIndx + 3'h1; // @[min_max.scala 48:42]
  Comparator comparatorModule ( // @[comparator.scala 114:34]
    .clock(comparatorModule_clock),
    .reset(comparatorModule_reset),
    .io_in1(comparatorModule_io_in1),
    .io_in2(comparatorModule_io_in2),
    .io_earlyTerminate1(comparatorModule_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_io_earlyTerminate2)
  );
  assign io_outResult = regMinVec_0 + regMinVec_7; // @[min_max.scala 60:34]
  assign comparatorModule_clock = clock;
  assign comparatorModule_reset = reset;
  assign comparatorModule_io_in1 = _T[0]; // @[min_max.scala 33:76]
  assign comparatorModule_io_in2 = _T_2[0]; // @[min_max.scala 33:96]
  always @(posedge clock) begin
    if (!(~earlyTerminated)) begin // @[min_max.scala 35:39]
      if (~selectedInput) begin // @[min_max.scala 44:38]
        if (3'h0 == regVecIndx) begin // @[min_max.scala 45:39]
          regMinVec_0 <= io_in1; // @[min_max.scala 45:39]
        end
      end else if (3'h0 == regVecIndx) begin // @[min_max.scala 47:39]
        regMinVec_0 <= io_in2; // @[min_max.scala 47:39]
      end
    end
    if (!(~earlyTerminated)) begin // @[min_max.scala 35:39]
      if (~selectedInput) begin // @[min_max.scala 44:38]
        if (3'h7 == regVecIndx) begin // @[min_max.scala 45:39]
          regMinVec_7 <= io_in1; // @[min_max.scala 45:39]
        end
      end else if (3'h7 == regVecIndx) begin // @[min_max.scala 47:39]
        regMinVec_7 <= io_in2; // @[min_max.scala 47:39]
      end
    end
    if (reset) begin // @[min_max.scala 30:29]
      regBitIndx <= 3'h0; // @[min_max.scala 30:29]
    end else if (~earlyTerminated) begin // @[min_max.scala 35:39]
      regBitIndx <= _regBitIndx_T_1; // @[min_max.scala 36:20]
    end else begin
      regBitIndx <= 3'h0; // @[min_max.scala 42:20]
    end
    if (reset) begin // @[min_max.scala 31:29]
      regVecIndx <= 3'h0; // @[min_max.scala 31:29]
    end else if (!(~earlyTerminated)) begin // @[min_max.scala 35:39]
      regVecIndx <= _regVecIndx_T_1; // @[min_max.scala 54:20]
    end
  end
endmodule
module FuzzyController(
  input        clock,
  input        reset,
  input  [7:0] io_in1,
  input  [7:0] io_in2,
  output [7:0] io_max
);
  wire  minMaxTree_minMaxTree_clock; // @[min_max.scala 68:28]
  wire  minMaxTree_minMaxTree_reset; // @[min_max.scala 68:28]
  wire [7:0] minMaxTree_minMaxTree_io_in1; // @[min_max.scala 68:28]
  wire [7:0] minMaxTree_minMaxTree_io_in2; // @[min_max.scala 68:28]
  wire [7:0] minMaxTree_minMaxTree_io_outResult; // @[min_max.scala 68:28]
  MinMaxTree minMaxTree_minMaxTree ( // @[min_max.scala 68:28]
    .clock(minMaxTree_minMaxTree_clock),
    .reset(minMaxTree_minMaxTree_reset),
    .io_in1(minMaxTree_minMaxTree_io_in1),
    .io_in2(minMaxTree_minMaxTree_io_in2),
    .io_outResult(minMaxTree_minMaxTree_io_outResult)
  );
  assign io_max = minMaxTree_minMaxTree_io_outResult; // @[min_max.scala 69:25 76:15]
  assign minMaxTree_minMaxTree_clock = clock;
  assign minMaxTree_minMaxTree_reset = reset;
  assign minMaxTree_minMaxTree_io_in1 = io_in1; // @[min_max.scala 73:23]
  assign minMaxTree_minMaxTree_io_in2 = io_in2; // @[min_max.scala 74:23]
endmodule
