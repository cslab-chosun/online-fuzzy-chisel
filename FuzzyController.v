module OnlineComparator(
  input   clock,
  input   reset,
  input   io_start,
  input   io_in1,
  input   io_in2,
  output  io_earlyTerminate1,
  output  io_earlyTerminate2
);
  reg  state; // @[online_comparator.scala 28:22]
  reg  earlyTerminate1; // @[online_comparator.scala 31:32]
  reg  earlyTerminate2; // @[online_comparator.scala 32:32]
  wire  _GEN_0 = io_start | state; // @[online_comparator.scala 46:33 52:15 28:22]
  wire  _T_6 = io_in1 & ~io_in2; // @[online_comparator.scala 68:33]
  wire  _T_9 = ~io_in1 & io_in2; // @[online_comparator.scala 94:33]
  wire  _GEN_4 = ~io_in1 & io_in2 ? 1'h0 : 1'h1; // @[online_comparator.scala 115:15 128:15 94:52]
  assign io_earlyTerminate1 = earlyTerminate1; // @[online_comparator.scala 140:22]
  assign io_earlyTerminate2 = earlyTerminate2; // @[online_comparator.scala 141:22]
  always @(posedge clock) begin
    if (reset) begin // @[online_comparator.scala 28:22]
      state <= 1'h0; // @[online_comparator.scala 28:22]
    end else if (~state) begin // @[online_comparator.scala 35:17]
      state <= _GEN_0;
    end else if (state) begin // @[online_comparator.scala 35:17]
      if (io_in1 & ~io_in2) begin // @[online_comparator.scala 68:52]
        state <= 1'h0; // @[online_comparator.scala 92:15]
      end else begin
        state <= _GEN_4;
      end
    end
    if (reset) begin // @[online_comparator.scala 31:32]
      earlyTerminate1 <= 1'h0; // @[online_comparator.scala 31:32]
    end else if (~state) begin // @[online_comparator.scala 35:17]
      earlyTerminate1 <= 1'h0; // @[online_comparator.scala 39:23]
    end else if (state) begin // @[online_comparator.scala 35:17]
      if (io_in1 & ~io_in2) begin // @[online_comparator.scala 68:52]
        earlyTerminate1 <= 1'h0; // @[online_comparator.scala 82:27]
      end else begin
        earlyTerminate1 <= _T_9;
      end
    end
    if (reset) begin // @[online_comparator.scala 32:32]
      earlyTerminate2 <= 1'h0; // @[online_comparator.scala 32:32]
    end else if (~state) begin // @[online_comparator.scala 35:17]
      earlyTerminate2 <= 1'h0; // @[online_comparator.scala 40:23]
    end else if (state) begin // @[online_comparator.scala 35:17]
      earlyTerminate2 <= _T_6;
    end
  end
endmodule
module OnlineComparator_1(
  input   clock,
  input   reset,
  input   io_start,
  input   io_in1,
  input   io_in2,
  output  io_earlyTerminate1,
  output  io_earlyTerminate2
);
  reg  state; // @[online_comparator.scala 28:22]
  reg  earlyTerminate1; // @[online_comparator.scala 31:32]
  reg  earlyTerminate2; // @[online_comparator.scala 32:32]
  wire  _GEN_0 = io_start | state; // @[online_comparator.scala 46:33 52:15 28:22]
  wire  _T_6 = io_in1 & ~io_in2; // @[online_comparator.scala 68:33]
  wire  _T_9 = ~io_in1 & io_in2; // @[online_comparator.scala 94:33]
  wire  _GEN_4 = ~io_in1 & io_in2 ? 1'h0 : 1'h1; // @[online_comparator.scala 115:15 128:15 94:52]
  assign io_earlyTerminate1 = earlyTerminate1; // @[online_comparator.scala 140:22]
  assign io_earlyTerminate2 = earlyTerminate2; // @[online_comparator.scala 141:22]
  always @(posedge clock) begin
    if (reset) begin // @[online_comparator.scala 28:22]
      state <= 1'h0; // @[online_comparator.scala 28:22]
    end else if (~state) begin // @[online_comparator.scala 35:17]
      state <= _GEN_0;
    end else if (state) begin // @[online_comparator.scala 35:17]
      if (io_in1 & ~io_in2) begin // @[online_comparator.scala 68:52]
        state <= 1'h0; // @[online_comparator.scala 92:15]
      end else begin
        state <= _GEN_4;
      end
    end
    if (reset) begin // @[online_comparator.scala 31:32]
      earlyTerminate1 <= 1'h0; // @[online_comparator.scala 31:32]
    end else if (~state) begin // @[online_comparator.scala 35:17]
      earlyTerminate1 <= 1'h0; // @[online_comparator.scala 39:23]
    end else if (state) begin // @[online_comparator.scala 35:17]
      earlyTerminate1 <= _T_6;
    end
    if (reset) begin // @[online_comparator.scala 32:32]
      earlyTerminate2 <= 1'h0; // @[online_comparator.scala 32:32]
    end else if (~state) begin // @[online_comparator.scala 35:17]
      earlyTerminate2 <= 1'h0; // @[online_comparator.scala 40:23]
    end else if (state) begin // @[online_comparator.scala 35:17]
      if (io_in1 & ~io_in2) begin // @[online_comparator.scala 68:52]
        earlyTerminate2 <= 1'h0; // @[online_comparator.scala 73:27]
      end else begin
        earlyTerminate2 <= _T_9;
      end
    end
  end
endmodule
module MinMaxSerialOnlineComparator(
  input        clock,
  input        reset,
  input  [6:0] io_in1,
  input  [6:0] io_in2,
  output [6:0] io_outResult
);
  wire  comparatorModule_clock; // @[online_comparator.scala 155:34]
  wire  comparatorModule_reset; // @[online_comparator.scala 155:34]
  wire  comparatorModule_io_start; // @[online_comparator.scala 155:34]
  wire  comparatorModule_io_in1; // @[online_comparator.scala 155:34]
  wire  comparatorModule_io_in2; // @[online_comparator.scala 155:34]
  wire  comparatorModule_io_earlyTerminate1; // @[online_comparator.scala 155:34]
  wire  comparatorModule_io_earlyTerminate2; // @[online_comparator.scala 155:34]
  wire  comparatorModule_1_clock; // @[online_comparator.scala 155:34]
  wire  comparatorModule_1_reset; // @[online_comparator.scala 155:34]
  wire  comparatorModule_1_io_start; // @[online_comparator.scala 155:34]
  wire  comparatorModule_1_io_in1; // @[online_comparator.scala 155:34]
  wire  comparatorModule_1_io_in2; // @[online_comparator.scala 155:34]
  wire  comparatorModule_1_io_earlyTerminate1; // @[online_comparator.scala 155:34]
  wire  comparatorModule_1_io_earlyTerminate2; // @[online_comparator.scala 155:34]
  reg  askForNewNumber; // @[min_max_serial_online_comparator.scala 37:32]
  reg [6:0] outResult; // @[min_max_serial_online_comparator.scala 39:26]
  reg [6:0] regStorageVec_0; // @[min_max_serial_online_comparator.scala 41:26]
  reg [6:0] regStorageVec_1; // @[min_max_serial_online_comparator.scala 41:26]
  reg [6:0] regStorageVec_2; // @[min_max_serial_online_comparator.scala 41:26]
  reg [6:0] regStorageVec_3; // @[min_max_serial_online_comparator.scala 41:26]
  reg [6:0] regStorageVec_4; // @[min_max_serial_online_comparator.scala 41:26]
  reg [6:0] regStorageVec_5; // @[min_max_serial_online_comparator.scala 41:26]
  reg [6:0] regStorageVec_6; // @[min_max_serial_online_comparator.scala 41:26]
  reg [6:0] regStorageVec_7; // @[min_max_serial_online_comparator.scala 41:26]
  reg [2:0] regBitIndx; // @[min_max_serial_online_comparator.scala 43:27]
  reg [2:0] regVecIndx; // @[min_max_serial_online_comparator.scala 46:27]
  reg  regMaxVecIndx; // @[min_max_serial_online_comparator.scala 49:30]
  reg  regToEqualNums; // @[min_max_serial_online_comparator.scala 54:31]
  reg [1:0] state; // @[min_max_serial_online_comparator.scala 57:22]
  wire [6:0] _T = io_in1 >> regBitIndx; // @[min_max_serial_online_comparator.scala 62:13]
  wire [6:0] _T_2 = io_in2 >> regBitIndx; // @[min_max_serial_online_comparator.scala 63:13]
  wire  earlyTerminate1 = comparatorModule_io_earlyTerminate1; // @[online_comparator.scala 157:31 174:21]
  wire  earlyTerminate2 = comparatorModule_io_earlyTerminate2; // @[online_comparator.scala 158:31 175:21]
  wire  earlyTerminated = earlyTerminate1 | earlyTerminate2; // @[online_comparator.scala 190:43]
  wire  selectedInput = earlyTerminate1 ? 1'h0 : 1'h1; // @[online_comparator.scala 195:28]
  reg  input1Max; // @[min_max_serial_online_comparator.scala 69:26]
  reg  input2Max; // @[min_max_serial_online_comparator.scala 70:26]
  wire  earlyTerminate1_1 = comparatorModule_1_io_earlyTerminate1; // @[online_comparator.scala 157:31 174:21]
  wire  earlyTerminate2_1 = comparatorModule_1_io_earlyTerminate2; // @[online_comparator.scala 158:31 175:21]
  wire  earlyTerminatedMax = earlyTerminate1_1 | earlyTerminate2_1; // @[online_comparator.scala 190:43]
  wire  selectedInputMax = earlyTerminate1_1 ? 1'h0 : 1'h1; // @[online_comparator.scala 195:28]
  wire  _T_9 = ~regToEqualNums; // @[min_max_serial_online_comparator.scala 98:86]
  wire  _T_10 = (~earlyTerminated | askForNewNumber) & ~regToEqualNums; // @[min_max_serial_online_comparator.scala 98:68]
  wire [2:0] _regBitIndx_T_1 = regBitIndx - 3'h1; // @[min_max_serial_online_comparator.scala 100:34]
  wire  _GEN_0 = regBitIndx == 3'h0 | regToEqualNums; // @[min_max_serial_online_comparator.scala 105:34 106:26 54:31]
  wire [6:0] _GEN_1 = 3'h0 == regVecIndx ? io_in1 : regStorageVec_0; // @[min_max_serial_online_comparator.scala 130:{37,37} 41:26]
  wire [6:0] _GEN_2 = 3'h1 == regVecIndx ? io_in1 : regStorageVec_1; // @[min_max_serial_online_comparator.scala 130:{37,37} 41:26]
  wire [6:0] _GEN_3 = 3'h2 == regVecIndx ? io_in1 : regStorageVec_2; // @[min_max_serial_online_comparator.scala 130:{37,37} 41:26]
  wire [6:0] _GEN_4 = 3'h3 == regVecIndx ? io_in1 : regStorageVec_3; // @[min_max_serial_online_comparator.scala 130:{37,37} 41:26]
  wire [6:0] _GEN_5 = 3'h4 == regVecIndx ? io_in1 : regStorageVec_4; // @[min_max_serial_online_comparator.scala 130:{37,37} 41:26]
  wire [6:0] _GEN_6 = 3'h5 == regVecIndx ? io_in1 : regStorageVec_5; // @[min_max_serial_online_comparator.scala 130:{37,37} 41:26]
  wire [6:0] _GEN_7 = 3'h6 == regVecIndx ? io_in1 : regStorageVec_6; // @[min_max_serial_online_comparator.scala 130:{37,37} 41:26]
  wire [6:0] _GEN_8 = 3'h7 == regVecIndx ? io_in1 : regStorageVec_7; // @[min_max_serial_online_comparator.scala 130:{37,37} 41:26]
  wire [6:0] _GEN_9 = 3'h0 == regVecIndx ? io_in2 : regStorageVec_0; // @[min_max_serial_online_comparator.scala 137:{37,37} 41:26]
  wire [6:0] _GEN_10 = 3'h1 == regVecIndx ? io_in2 : regStorageVec_1; // @[min_max_serial_online_comparator.scala 137:{37,37} 41:26]
  wire [6:0] _GEN_11 = 3'h2 == regVecIndx ? io_in2 : regStorageVec_2; // @[min_max_serial_online_comparator.scala 137:{37,37} 41:26]
  wire [6:0] _GEN_12 = 3'h3 == regVecIndx ? io_in2 : regStorageVec_3; // @[min_max_serial_online_comparator.scala 137:{37,37} 41:26]
  wire [6:0] _GEN_13 = 3'h4 == regVecIndx ? io_in2 : regStorageVec_4; // @[min_max_serial_online_comparator.scala 137:{37,37} 41:26]
  wire [6:0] _GEN_14 = 3'h5 == regVecIndx ? io_in2 : regStorageVec_5; // @[min_max_serial_online_comparator.scala 137:{37,37} 41:26]
  wire [6:0] _GEN_15 = 3'h6 == regVecIndx ? io_in2 : regStorageVec_6; // @[min_max_serial_online_comparator.scala 137:{37,37} 41:26]
  wire [6:0] _GEN_16 = 3'h7 == regVecIndx ? io_in2 : regStorageVec_7; // @[min_max_serial_online_comparator.scala 137:{37,37} 41:26]
  wire  _T_13 = regVecIndx == 3'h7; // @[min_max_serial_online_comparator.scala 147:25]
  wire [1:0] _GEN_25 = regVecIndx == 3'h7 ? 2'h2 : state; // @[min_max_serial_online_comparator.scala 147:49 148:17 57:22]
  wire [6:0] _GEN_26 = regVecIndx == 3'h7 ? regStorageVec_0 : outResult; // @[min_max_serial_online_comparator.scala 147:49 153:19 39:26]
  wire [2:0] _regVecIndx_T_1 = regVecIndx + 3'h1; // @[min_max_serial_online_comparator.scala 170:34]
  wire  _GEN_30 = _T_10 & _GEN_0; // @[min_max_serial_online_comparator.scala 99:9]
  wire [6:0] _input1Max_T = outResult >> regBitIndx; // @[min_max_serial_online_comparator.scala 189:29]
  wire [6:0] _GEN_44 = regMaxVecIndx ? regStorageVec_1 : regStorageVec_0; // @[min_max_serial_online_comparator.scala 190:{48,48}]
  wire [1:0] _GEN_107 = {{1'd0}, regMaxVecIndx}; // @[min_max_serial_online_comparator.scala 190:{48,48}]
  wire [6:0] _GEN_45 = 2'h2 == _GEN_107 ? regStorageVec_2 : _GEN_44; // @[min_max_serial_online_comparator.scala 190:{48,48}]
  wire [6:0] _GEN_46 = 2'h3 == _GEN_107 ? regStorageVec_3 : _GEN_45; // @[min_max_serial_online_comparator.scala 190:{48,48}]
  wire [2:0] _GEN_109 = {{2'd0}, regMaxVecIndx}; // @[min_max_serial_online_comparator.scala 190:{48,48}]
  wire [6:0] _GEN_47 = 3'h4 == _GEN_109 ? regStorageVec_4 : _GEN_46; // @[min_max_serial_online_comparator.scala 190:{48,48}]
  wire [6:0] _GEN_48 = 3'h5 == _GEN_109 ? regStorageVec_5 : _GEN_47; // @[min_max_serial_online_comparator.scala 190:{48,48}]
  wire [6:0] _GEN_49 = 3'h6 == _GEN_109 ? regStorageVec_6 : _GEN_48; // @[min_max_serial_online_comparator.scala 190:{48,48}]
  wire [6:0] _GEN_50 = 3'h7 == _GEN_109 ? regStorageVec_7 : _GEN_49; // @[min_max_serial_online_comparator.scala 190:{48,48}]
  wire [6:0] _input2Max_T = _GEN_50 >> regBitIndx; // @[min_max_serial_online_comparator.scala 190:48]
  wire  _T_17 = ~earlyTerminatedMax & _T_9; // @[min_max_serial_online_comparator.scala 195:43]
  wire [6:0] _GEN_52 = selectedInputMax ? _GEN_50 : outResult; // @[min_max_serial_online_comparator.scala 231:40 236:21 39:26]
  wire [1:0] _GEN_53 = _T_13 ? 2'h3 : state; // @[min_max_serial_online_comparator.scala 249:49 250:17 57:22]
  wire [2:0] _GEN_54 = _T_17 ? _regBitIndx_T_1 : 3'h7; // @[min_max_serial_online_comparator.scala 196:8 198:20 224:20]
  wire  _GEN_55 = _T_17 & _GEN_0; // @[min_max_serial_online_comparator.scala 196:8 226:24]
  wire [6:0] _GEN_56 = _T_17 ? outResult : _GEN_52; // @[min_max_serial_online_comparator.scala 196:8 39:26]
  wire [1:0] _GEN_57 = _T_17 ? state : _GEN_53; // @[min_max_serial_online_comparator.scala 196:8 57:22]
  wire  _GEN_58 = _T_17 ? regMaxVecIndx : regMaxVecIndx + 1'h1; // @[min_max_serial_online_comparator.scala 196:8 256:23 49:30]
  wire  _GEN_67 = 2'h2 == state ? _GEN_58 : regMaxVecIndx; // @[min_max_serial_online_comparator.scala 80:17 49:30]
  wire  _GEN_83 = 2'h1 == state ? 1'h0 : 2'h2 == state; // @[min_max_serial_online_comparator.scala 80:17]
  wire  _GEN_86 = 2'h1 == state ? regMaxVecIndx : _GEN_67; // @[min_max_serial_online_comparator.scala 80:17 49:30]
  wire  _GEN_105 = 2'h0 == state ? regMaxVecIndx : _GEN_86; // @[min_max_serial_online_comparator.scala 80:17 49:30]
  OnlineComparator comparatorModule ( // @[online_comparator.scala 155:34]
    .clock(comparatorModule_clock),
    .reset(comparatorModule_reset),
    .io_start(comparatorModule_io_start),
    .io_in1(comparatorModule_io_in1),
    .io_in2(comparatorModule_io_in2),
    .io_earlyTerminate1(comparatorModule_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_io_earlyTerminate2)
  );
  OnlineComparator_1 comparatorModule_1 ( // @[online_comparator.scala 155:34]
    .clock(comparatorModule_1_clock),
    .reset(comparatorModule_1_reset),
    .io_start(comparatorModule_1_io_start),
    .io_in1(comparatorModule_1_io_in1),
    .io_in2(comparatorModule_1_io_in2),
    .io_earlyTerminate1(comparatorModule_1_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_1_io_earlyTerminate2)
  );
  assign io_outResult = outResult; // @[min_max_serial_online_comparator.scala 275:16]
  assign comparatorModule_clock = clock;
  assign comparatorModule_reset = reset;
  assign comparatorModule_io_start = ~askForNewNumber; // @[min_max_serial_online_comparator.scala 53:33]
  assign comparatorModule_io_in1 = _T[0]; // @[min_max_serial_online_comparator.scala 62:13]
  assign comparatorModule_io_in2 = _T_2[0]; // @[min_max_serial_online_comparator.scala 63:13]
  assign comparatorModule_1_clock = clock;
  assign comparatorModule_1_reset = reset;
  assign comparatorModule_1_io_start = 2'h0 == state ? 1'h0 : _GEN_83; // @[min_max_serial_online_comparator.scala 80:17]
  assign comparatorModule_1_io_in1 = input1Max; // @[online_comparator.scala 165:29]
  assign comparatorModule_1_io_in2 = input2Max; // @[online_comparator.scala 166:29]
  always @(posedge clock) begin
    if (reset) begin // @[min_max_serial_online_comparator.scala 37:32]
      askForNewNumber <= 1'h0; // @[min_max_serial_online_comparator.scala 37:32]
    end else if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (_T_10) begin // @[min_max_serial_online_comparator.scala 99:9]
          askForNewNumber <= 1'h0; // @[min_max_serial_online_comparator.scala 96:23]
        end else begin
          askForNewNumber <= 1'h1; // @[min_max_serial_online_comparator.scala 171:25]
        end
      end
    end
    if (reset) begin // @[min_max_serial_online_comparator.scala 39:26]
      outResult <= 7'h0; // @[min_max_serial_online_comparator.scala 39:26]
    end else if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
          outResult <= _GEN_26;
        end
      end else if (2'h2 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        outResult <= _GEN_56;
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
          if (~selectedInput) begin // @[min_max_serial_online_comparator.scala 129:37]
            regStorageVec_0 <= _GEN_1;
          end else begin
            regStorageVec_0 <= _GEN_9;
          end
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
          if (~selectedInput) begin // @[min_max_serial_online_comparator.scala 129:37]
            regStorageVec_1 <= _GEN_2;
          end else begin
            regStorageVec_1 <= _GEN_10;
          end
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
          if (~selectedInput) begin // @[min_max_serial_online_comparator.scala 129:37]
            regStorageVec_2 <= _GEN_3;
          end else begin
            regStorageVec_2 <= _GEN_11;
          end
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
          if (~selectedInput) begin // @[min_max_serial_online_comparator.scala 129:37]
            regStorageVec_3 <= _GEN_4;
          end else begin
            regStorageVec_3 <= _GEN_12;
          end
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
          if (~selectedInput) begin // @[min_max_serial_online_comparator.scala 129:37]
            regStorageVec_4 <= _GEN_5;
          end else begin
            regStorageVec_4 <= _GEN_13;
          end
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
          if (~selectedInput) begin // @[min_max_serial_online_comparator.scala 129:37]
            regStorageVec_5 <= _GEN_6;
          end else begin
            regStorageVec_5 <= _GEN_14;
          end
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
          if (~selectedInput) begin // @[min_max_serial_online_comparator.scala 129:37]
            regStorageVec_6 <= _GEN_7;
          end else begin
            regStorageVec_6 <= _GEN_15;
          end
        end
      end
    end
    if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
          if (~selectedInput) begin // @[min_max_serial_online_comparator.scala 129:37]
            regStorageVec_7 <= _GEN_8;
          end else begin
            regStorageVec_7 <= _GEN_16;
          end
        end
      end
    end
    if (reset) begin // @[min_max_serial_online_comparator.scala 43:27]
      regBitIndx <= 3'h7; // @[min_max_serial_online_comparator.scala 43:27]
    end else if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (_T_10) begin // @[min_max_serial_online_comparator.scala 99:9]
          regBitIndx <= _regBitIndx_T_1; // @[min_max_serial_online_comparator.scala 100:20]
        end else begin
          regBitIndx <= 3'h7;
        end
      end else if (2'h2 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        regBitIndx <= _GEN_54;
      end
    end
    if (reset) begin // @[min_max_serial_online_comparator.scala 46:27]
      regVecIndx <= 3'h0; // @[min_max_serial_online_comparator.scala 46:27]
    end else if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
          regVecIndx <= _regVecIndx_T_1; // @[min_max_serial_online_comparator.scala 170:20]
        end
      end
    end
    regMaxVecIndx <= reset | _GEN_105; // @[min_max_serial_online_comparator.scala 49:{30,30}]
    if (reset) begin // @[min_max_serial_online_comparator.scala 54:31]
      regToEqualNums <= 1'h0; // @[min_max_serial_online_comparator.scala 54:31]
    end else if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        regToEqualNums <= _GEN_30;
      end else if (2'h2 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
        regToEqualNums <= _GEN_55;
      end
    end
    if (reset) begin // @[min_max_serial_online_comparator.scala 57:22]
      state <= 2'h0; // @[min_max_serial_online_comparator.scala 57:22]
    end else if (2'h0 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
      state <= 2'h1; // @[min_max_serial_online_comparator.scala 83:13]
    end else if (2'h1 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (!(_T_10)) begin // @[min_max_serial_online_comparator.scala 99:9]
        state <= _GEN_25;
      end
    end else if (2'h2 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
      state <= _GEN_57;
    end
    if (reset) begin // @[min_max_serial_online_comparator.scala 69:26]
      input1Max <= 1'h0; // @[min_max_serial_online_comparator.scala 69:26]
    end else if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (!(2'h1 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (2'h2 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
          input1Max <= _input1Max_T[0]; // @[min_max_serial_online_comparator.scala 189:17]
        end
      end
    end
    if (reset) begin // @[min_max_serial_online_comparator.scala 70:26]
      input2Max <= 1'h0; // @[min_max_serial_online_comparator.scala 70:26]
    end else if (!(2'h0 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
      if (!(2'h1 == state)) begin // @[min_max_serial_online_comparator.scala 80:17]
        if (2'h2 == state) begin // @[min_max_serial_online_comparator.scala 80:17]
          input2Max <= _input2Max_T[0]; // @[min_max_serial_online_comparator.scala 190:17]
        end
      end
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
  wire  minMaxTree_minMaxTree_clock; // @[min_max_serial_online_comparator.scala 288:28]
  wire  minMaxTree_minMaxTree_reset; // @[min_max_serial_online_comparator.scala 288:28]
  wire [6:0] minMaxTree_minMaxTree_io_in1; // @[min_max_serial_online_comparator.scala 288:28]
  wire [6:0] minMaxTree_minMaxTree_io_in2; // @[min_max_serial_online_comparator.scala 288:28]
  wire [6:0] minMaxTree_minMaxTree_io_outResult; // @[min_max_serial_online_comparator.scala 288:28]
  MinMaxSerialOnlineComparator minMaxTree_minMaxTree ( // @[min_max_serial_online_comparator.scala 288:28]
    .clock(minMaxTree_minMaxTree_clock),
    .reset(minMaxTree_minMaxTree_reset),
    .io_in1(minMaxTree_minMaxTree_io_in1),
    .io_in2(minMaxTree_minMaxTree_io_in2),
    .io_outResult(minMaxTree_minMaxTree_io_outResult)
  );
  assign io_max = {{1'd0}, minMaxTree_minMaxTree_io_outResult}; // @[min_max_serial_online_comparator.scala 289:25 296:15]
  assign minMaxTree_minMaxTree_clock = clock;
  assign minMaxTree_minMaxTree_reset = reset;
  assign minMaxTree_minMaxTree_io_in1 = io_in1[6:0]; // @[min_max_serial_online_comparator.scala 293:23]
  assign minMaxTree_minMaxTree_io_in2 = io_in2[6:0]; // @[min_max_serial_online_comparator.scala 294:23]
endmodule
