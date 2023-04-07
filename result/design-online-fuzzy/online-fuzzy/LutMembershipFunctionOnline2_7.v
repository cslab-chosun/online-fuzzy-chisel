module LutMembershipFunctionOnline2_7(
  input   clock,
  input   reset,
  input   io_start,
  input   io_inputBit,
  output  io_outResult
);
  reg  buffer_0; // @[lut_mem_online2.scala 76:19]
  reg  buffer_1; // @[lut_mem_online2.scala 76:19]
  reg  buffer_2; // @[lut_mem_online2.scala 76:19]
  reg  buffer_3; // @[lut_mem_online2.scala 76:19]
  reg  buffer_4; // @[lut_mem_online2.scala 76:19]
  reg  buffer_5; // @[lut_mem_online2.scala 76:19]
  reg  buffer_6; // @[lut_mem_online2.scala 76:19]
  reg  buffer_7; // @[lut_mem_online2.scala 76:19]
  reg [6:0] outputBuffer; // @[lut_mem_online2.scala 77:29]
  reg [2:0] counter; // @[lut_mem_online2.scala 79:24]
  reg [2:0] outputCounter; // @[lut_mem_online2.scala 80:30]
  reg  isPassedDelta; // @[lut_mem_online2.scala 82:30]
  reg  isOutputValid; // @[lut_mem_online2.scala 83:30]
  reg  outResult; // @[lut_mem_online2.scala 86:26]
  wire [3:0] _GEN_309 = {{1'd0}, counter}; // @[lut_mem_online2.scala 114:22]
  wire  _GEN_0 = _GEN_309 == 4'ha | isPassedDelta; // @[lut_mem_online2.scala 114:35 115:25 82:30]
  wire  _T_3 = _GEN_309 != 4'h8; // @[lut_mem_online2.scala 121:22]
  wire  _GEN_1 = 3'h0 == counter ? io_inputBit : buffer_0; // @[lut_mem_online2.scala 123:{27,27} 76:19]
  wire  _GEN_2 = 3'h1 == counter ? io_inputBit : buffer_1; // @[lut_mem_online2.scala 123:{27,27} 76:19]
  wire  _GEN_3 = 3'h2 == counter ? io_inputBit : buffer_2; // @[lut_mem_online2.scala 123:{27,27} 76:19]
  wire  _GEN_4 = 3'h3 == counter ? io_inputBit : buffer_3; // @[lut_mem_online2.scala 123:{27,27} 76:19]
  wire  _GEN_5 = 3'h4 == counter ? io_inputBit : buffer_4; // @[lut_mem_online2.scala 123:{27,27} 76:19]
  wire  _GEN_6 = 3'h5 == counter ? io_inputBit : buffer_5; // @[lut_mem_online2.scala 123:{27,27} 76:19]
  wire  _GEN_7 = 3'h6 == counter ? io_inputBit : buffer_6; // @[lut_mem_online2.scala 123:{27,27} 76:19]
  wire  _GEN_8 = 3'h7 == counter ? io_inputBit : buffer_7; // @[lut_mem_online2.scala 123:{27,27} 76:19]
  wire  _T_5 = ~reset; // @[lut_mem_online2.scala 127:19]
  wire [2:0] _counter_T_1 = counter + 3'h1; // @[lut_mem_online2.scala 137:30]
  wire  _GEN_9 = _GEN_309 != 4'h8 ? _GEN_1 : buffer_0; // @[lut_mem_online2.scala 121:38 76:19]
  wire  _GEN_10 = _GEN_309 != 4'h8 ? _GEN_2 : buffer_1; // @[lut_mem_online2.scala 121:38 76:19]
  wire  _GEN_11 = _GEN_309 != 4'h8 ? _GEN_3 : buffer_2; // @[lut_mem_online2.scala 121:38 76:19]
  wire  _GEN_12 = _GEN_309 != 4'h8 ? _GEN_4 : buffer_3; // @[lut_mem_online2.scala 121:38 76:19]
  wire  _GEN_13 = _GEN_309 != 4'h8 ? _GEN_5 : buffer_4; // @[lut_mem_online2.scala 121:38 76:19]
  wire  _GEN_14 = _GEN_309 != 4'h8 ? _GEN_6 : buffer_5; // @[lut_mem_online2.scala 121:38 76:19]
  wire  _GEN_15 = _GEN_309 != 4'h8 ? _GEN_7 : buffer_6; // @[lut_mem_online2.scala 121:38 76:19]
  wire  _GEN_16 = _GEN_309 != 4'h8 ? _GEN_8 : buffer_7; // @[lut_mem_online2.scala 121:38 76:19]
  wire [7:0] _tempCurrentBuf_T = {buffer_7,buffer_6,buffer_5,buffer_4,buffer_3,buffer_2,buffer_1,buffer_0}; // @[lut_mem_online2.scala 145:47]
  wire [7:0] _GEN_311 = {{4'd0}, _tempCurrentBuf_T[7:4]}; // @[Bitwise.scala 108:31]
  wire [7:0] _tempCurrentBuf_T_4 = _GEN_311 & 8'hf; // @[Bitwise.scala 108:31]
  wire [7:0] _tempCurrentBuf_T_6 = {_tempCurrentBuf_T[3:0], 4'h0}; // @[Bitwise.scala 108:70]
  wire [7:0] _tempCurrentBuf_T_8 = _tempCurrentBuf_T_6 & 8'hf0; // @[Bitwise.scala 108:80]
  wire [7:0] _tempCurrentBuf_T_9 = _tempCurrentBuf_T_4 | _tempCurrentBuf_T_8; // @[Bitwise.scala 108:39]
  wire [7:0] _GEN_312 = {{2'd0}, _tempCurrentBuf_T_9[7:2]}; // @[Bitwise.scala 108:31]
  wire [7:0] _tempCurrentBuf_T_14 = _GEN_312 & 8'h33; // @[Bitwise.scala 108:31]
  wire [7:0] _tempCurrentBuf_T_16 = {_tempCurrentBuf_T_9[5:0], 2'h0}; // @[Bitwise.scala 108:70]
  wire [7:0] _tempCurrentBuf_T_18 = _tempCurrentBuf_T_16 & 8'hcc; // @[Bitwise.scala 108:80]
  wire [7:0] _tempCurrentBuf_T_19 = _tempCurrentBuf_T_14 | _tempCurrentBuf_T_18; // @[Bitwise.scala 108:39]
  wire [7:0] _GEN_313 = {{1'd0}, _tempCurrentBuf_T_19[7:1]}; // @[Bitwise.scala 108:31]
  wire [7:0] _tempCurrentBuf_T_24 = _GEN_313 & 8'h55; // @[Bitwise.scala 108:31]
  wire [7:0] _tempCurrentBuf_T_26 = {_tempCurrentBuf_T_19[6:0], 1'h0}; // @[Bitwise.scala 108:70]
  wire [7:0] _tempCurrentBuf_T_28 = _tempCurrentBuf_T_26 & 8'haa; // @[Bitwise.scala 108:80]
  wire [7:0] tempCurrentBuf = _tempCurrentBuf_T_24 | _tempCurrentBuf_T_28; // @[Bitwise.scala 108:39]
  wire [6:0] _GEN_79 = 8'h3d == tempCurrentBuf ? 7'h5 : 7'h0; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_80 = 8'h3e == tempCurrentBuf ? 7'ha : _GEN_79; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_81 = 8'h3f == tempCurrentBuf ? 7'hf : _GEN_80; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_82 = 8'h40 == tempCurrentBuf ? 7'h14 : _GEN_81; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_83 = 8'h41 == tempCurrentBuf ? 7'h19 : _GEN_82; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_84 = 8'h42 == tempCurrentBuf ? 7'h1e : _GEN_83; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_85 = 8'h43 == tempCurrentBuf ? 7'h23 : _GEN_84; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_86 = 8'h44 == tempCurrentBuf ? 7'h28 : _GEN_85; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_87 = 8'h45 == tempCurrentBuf ? 7'h2d : _GEN_86; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_88 = 8'h46 == tempCurrentBuf ? 7'h32 : _GEN_87; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_89 = 8'h47 == tempCurrentBuf ? 7'h37 : _GEN_88; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_90 = 8'h48 == tempCurrentBuf ? 7'h3c : _GEN_89; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_91 = 8'h49 == tempCurrentBuf ? 7'h41 : _GEN_90; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_92 = 8'h4a == tempCurrentBuf ? 7'h46 : _GEN_91; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_93 = 8'h4b == tempCurrentBuf ? 7'h4b : _GEN_92; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_94 = 8'h4c == tempCurrentBuf ? 7'h50 : _GEN_93; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_95 = 8'h4d == tempCurrentBuf ? 7'h55 : _GEN_94; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_96 = 8'h4e == tempCurrentBuf ? 7'h5a : _GEN_95; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_97 = 8'h4f == tempCurrentBuf ? 7'h5f : _GEN_96; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_98 = 8'h50 == tempCurrentBuf ? 7'h64 : _GEN_97; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_99 = 8'h51 == tempCurrentBuf ? 7'h64 : _GEN_98; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_100 = 8'h52 == tempCurrentBuf ? 7'h64 : _GEN_99; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_101 = 8'h53 == tempCurrentBuf ? 7'h64 : _GEN_100; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_102 = 8'h54 == tempCurrentBuf ? 7'h64 : _GEN_101; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_103 = 8'h55 == tempCurrentBuf ? 7'h64 : _GEN_102; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_104 = 8'h56 == tempCurrentBuf ? 7'h64 : _GEN_103; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_105 = 8'h57 == tempCurrentBuf ? 7'h64 : _GEN_104; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_106 = 8'h58 == tempCurrentBuf ? 7'h64 : _GEN_105; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_107 = 8'h59 == tempCurrentBuf ? 7'h64 : _GEN_106; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_108 = 8'h5a == tempCurrentBuf ? 7'h64 : _GEN_107; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_109 = 8'h5b == tempCurrentBuf ? 7'h64 : _GEN_108; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_110 = 8'h5c == tempCurrentBuf ? 7'h64 : _GEN_109; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_111 = 8'h5d == tempCurrentBuf ? 7'h64 : _GEN_110; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_112 = 8'h5e == tempCurrentBuf ? 7'h64 : _GEN_111; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_113 = 8'h5f == tempCurrentBuf ? 7'h64 : _GEN_112; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_114 = 8'h60 == tempCurrentBuf ? 7'h64 : _GEN_113; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_115 = 8'h61 == tempCurrentBuf ? 7'h64 : _GEN_114; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_116 = 8'h62 == tempCurrentBuf ? 7'h64 : _GEN_115; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_117 = 8'h63 == tempCurrentBuf ? 7'h64 : _GEN_116; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_118 = 8'h64 == tempCurrentBuf ? 7'h64 : _GEN_117; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_119 = 8'h65 == tempCurrentBuf ? 7'h5f : _GEN_118; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_120 = 8'h66 == tempCurrentBuf ? 7'h5a : _GEN_119; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_121 = 8'h67 == tempCurrentBuf ? 7'h55 : _GEN_120; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_122 = 8'h68 == tempCurrentBuf ? 7'h50 : _GEN_121; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_123 = 8'h69 == tempCurrentBuf ? 7'h4b : _GEN_122; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_124 = 8'h6a == tempCurrentBuf ? 7'h46 : _GEN_123; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_125 = 8'h6b == tempCurrentBuf ? 7'h41 : _GEN_124; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_126 = 8'h6c == tempCurrentBuf ? 7'h3c : _GEN_125; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_127 = 8'h6d == tempCurrentBuf ? 7'h37 : _GEN_126; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_128 = 8'h6e == tempCurrentBuf ? 7'h32 : _GEN_127; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_129 = 8'h6f == tempCurrentBuf ? 7'h2d : _GEN_128; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_130 = 8'h70 == tempCurrentBuf ? 7'h28 : _GEN_129; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_131 = 8'h71 == tempCurrentBuf ? 7'h23 : _GEN_130; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_132 = 8'h72 == tempCurrentBuf ? 7'h1e : _GEN_131; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_133 = 8'h73 == tempCurrentBuf ? 7'h19 : _GEN_132; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_134 = 8'h74 == tempCurrentBuf ? 7'h14 : _GEN_133; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_135 = 8'h75 == tempCurrentBuf ? 7'hf : _GEN_134; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_136 = 8'h76 == tempCurrentBuf ? 7'ha : _GEN_135; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_137 = 8'h77 == tempCurrentBuf ? 7'h5 : _GEN_136; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_138 = 8'h78 == tempCurrentBuf ? 7'h0 : _GEN_137; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_139 = 8'h79 == tempCurrentBuf ? 7'h0 : _GEN_138; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_140 = 8'h7a == tempCurrentBuf ? 7'h0 : _GEN_139; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_141 = 8'h7b == tempCurrentBuf ? 7'h0 : _GEN_140; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_142 = 8'h7c == tempCurrentBuf ? 7'h0 : _GEN_141; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_143 = 8'h7d == tempCurrentBuf ? 7'h0 : _GEN_142; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_144 = 8'h7e == tempCurrentBuf ? 7'h0 : _GEN_143; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_145 = 8'h7f == tempCurrentBuf ? 7'h0 : _GEN_144; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_146 = 8'h80 == tempCurrentBuf ? 7'h0 : _GEN_145; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_147 = 8'h81 == tempCurrentBuf ? 7'h0 : _GEN_146; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_148 = 8'h82 == tempCurrentBuf ? 7'h0 : _GEN_147; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_149 = 8'h83 == tempCurrentBuf ? 7'h0 : _GEN_148; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_150 = 8'h84 == tempCurrentBuf ? 7'h0 : _GEN_149; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_151 = 8'h85 == tempCurrentBuf ? 7'h0 : _GEN_150; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_152 = 8'h86 == tempCurrentBuf ? 7'h0 : _GEN_151; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_153 = 8'h87 == tempCurrentBuf ? 7'h0 : _GEN_152; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_154 = 8'h88 == tempCurrentBuf ? 7'h0 : _GEN_153; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_155 = 8'h89 == tempCurrentBuf ? 7'h0 : _GEN_154; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_156 = 8'h8a == tempCurrentBuf ? 7'h0 : _GEN_155; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_157 = 8'h8b == tempCurrentBuf ? 7'h0 : _GEN_156; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_158 = 8'h8c == tempCurrentBuf ? 7'h0 : _GEN_157; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_159 = 8'h8d == tempCurrentBuf ? 7'h0 : _GEN_158; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_160 = 8'h8e == tempCurrentBuf ? 7'h0 : _GEN_159; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_161 = 8'h8f == tempCurrentBuf ? 7'h0 : _GEN_160; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_162 = 8'h90 == tempCurrentBuf ? 7'h0 : _GEN_161; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_163 = 8'h91 == tempCurrentBuf ? 7'h0 : _GEN_162; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_164 = 8'h92 == tempCurrentBuf ? 7'h0 : _GEN_163; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_165 = 8'h93 == tempCurrentBuf ? 7'h0 : _GEN_164; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_166 = 8'h94 == tempCurrentBuf ? 7'h0 : _GEN_165; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_167 = 8'h95 == tempCurrentBuf ? 7'h0 : _GEN_166; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_168 = 8'h96 == tempCurrentBuf ? 7'h0 : _GEN_167; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_169 = 8'h97 == tempCurrentBuf ? 7'h0 : _GEN_168; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_170 = 8'h98 == tempCurrentBuf ? 7'h0 : _GEN_169; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_171 = 8'h99 == tempCurrentBuf ? 7'h0 : _GEN_170; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_172 = 8'h9a == tempCurrentBuf ? 7'h0 : _GEN_171; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_173 = 8'h9b == tempCurrentBuf ? 7'h0 : _GEN_172; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_174 = 8'h9c == tempCurrentBuf ? 7'h0 : _GEN_173; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_175 = 8'h9d == tempCurrentBuf ? 7'h0 : _GEN_174; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_176 = 8'h9e == tempCurrentBuf ? 7'h0 : _GEN_175; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_177 = 8'h9f == tempCurrentBuf ? 7'h0 : _GEN_176; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_178 = 8'ha0 == tempCurrentBuf ? 7'h0 : _GEN_177; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_179 = 8'ha1 == tempCurrentBuf ? 7'h0 : _GEN_178; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_180 = 8'ha2 == tempCurrentBuf ? 7'h0 : _GEN_179; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_181 = 8'ha3 == tempCurrentBuf ? 7'h0 : _GEN_180; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_182 = 8'ha4 == tempCurrentBuf ? 7'h0 : _GEN_181; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_183 = 8'ha5 == tempCurrentBuf ? 7'h0 : _GEN_182; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_184 = 8'ha6 == tempCurrentBuf ? 7'h0 : _GEN_183; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_185 = 8'ha7 == tempCurrentBuf ? 7'h0 : _GEN_184; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_186 = 8'ha8 == tempCurrentBuf ? 7'h0 : _GEN_185; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_187 = 8'ha9 == tempCurrentBuf ? 7'h0 : _GEN_186; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_188 = 8'haa == tempCurrentBuf ? 7'h0 : _GEN_187; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_189 = 8'hab == tempCurrentBuf ? 7'h0 : _GEN_188; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_190 = 8'hac == tempCurrentBuf ? 7'h0 : _GEN_189; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_191 = 8'had == tempCurrentBuf ? 7'h0 : _GEN_190; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_192 = 8'hae == tempCurrentBuf ? 7'h0 : _GEN_191; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_193 = 8'haf == tempCurrentBuf ? 7'h0 : _GEN_192; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_194 = 8'hb0 == tempCurrentBuf ? 7'h0 : _GEN_193; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_195 = 8'hb1 == tempCurrentBuf ? 7'h0 : _GEN_194; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_196 = 8'hb2 == tempCurrentBuf ? 7'h0 : _GEN_195; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_197 = 8'hb3 == tempCurrentBuf ? 7'h0 : _GEN_196; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_198 = 8'hb4 == tempCurrentBuf ? 7'h0 : _GEN_197; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_199 = 8'hb5 == tempCurrentBuf ? 7'h0 : _GEN_198; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_200 = 8'hb6 == tempCurrentBuf ? 7'h0 : _GEN_199; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_201 = 8'hb7 == tempCurrentBuf ? 7'h0 : _GEN_200; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_202 = 8'hb8 == tempCurrentBuf ? 7'h0 : _GEN_201; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_203 = 8'hb9 == tempCurrentBuf ? 7'h0 : _GEN_202; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_204 = 8'hba == tempCurrentBuf ? 7'h0 : _GEN_203; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_205 = 8'hbb == tempCurrentBuf ? 7'h0 : _GEN_204; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_206 = 8'hbc == tempCurrentBuf ? 7'h0 : _GEN_205; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_207 = 8'hbd == tempCurrentBuf ? 7'h0 : _GEN_206; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_208 = 8'hbe == tempCurrentBuf ? 7'h0 : _GEN_207; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_209 = 8'hbf == tempCurrentBuf ? 7'h0 : _GEN_208; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_210 = 8'hc0 == tempCurrentBuf ? 7'h0 : _GEN_209; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_211 = 8'hc1 == tempCurrentBuf ? 7'h0 : _GEN_210; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_212 = 8'hc2 == tempCurrentBuf ? 7'h0 : _GEN_211; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_213 = 8'hc3 == tempCurrentBuf ? 7'h0 : _GEN_212; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_214 = 8'hc4 == tempCurrentBuf ? 7'h0 : _GEN_213; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_215 = 8'hc5 == tempCurrentBuf ? 7'h0 : _GEN_214; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_216 = 8'hc6 == tempCurrentBuf ? 7'h0 : _GEN_215; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_217 = 8'hc7 == tempCurrentBuf ? 7'h0 : _GEN_216; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_218 = 8'hc8 == tempCurrentBuf ? 7'h0 : _GEN_217; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_219 = 8'hc9 == tempCurrentBuf ? 7'h0 : _GEN_218; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_220 = 8'hca == tempCurrentBuf ? 7'h0 : _GEN_219; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_221 = 8'hcb == tempCurrentBuf ? 7'h0 : _GEN_220; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_222 = 8'hcc == tempCurrentBuf ? 7'h0 : _GEN_221; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_223 = 8'hcd == tempCurrentBuf ? 7'h0 : _GEN_222; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_224 = 8'hce == tempCurrentBuf ? 7'h0 : _GEN_223; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_225 = 8'hcf == tempCurrentBuf ? 7'h0 : _GEN_224; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_226 = 8'hd0 == tempCurrentBuf ? 7'h0 : _GEN_225; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_227 = 8'hd1 == tempCurrentBuf ? 7'h0 : _GEN_226; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_228 = 8'hd2 == tempCurrentBuf ? 7'h0 : _GEN_227; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_229 = 8'hd3 == tempCurrentBuf ? 7'h0 : _GEN_228; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_230 = 8'hd4 == tempCurrentBuf ? 7'h0 : _GEN_229; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_231 = 8'hd5 == tempCurrentBuf ? 7'h0 : _GEN_230; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_232 = 8'hd6 == tempCurrentBuf ? 7'h0 : _GEN_231; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_233 = 8'hd7 == tempCurrentBuf ? 7'h0 : _GEN_232; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_234 = 8'hd8 == tempCurrentBuf ? 7'h0 : _GEN_233; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_235 = 8'hd9 == tempCurrentBuf ? 7'h0 : _GEN_234; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_236 = 8'hda == tempCurrentBuf ? 7'h0 : _GEN_235; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_237 = 8'hdb == tempCurrentBuf ? 7'h0 : _GEN_236; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_238 = 8'hdc == tempCurrentBuf ? 7'h0 : _GEN_237; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_239 = 8'hdd == tempCurrentBuf ? 7'h0 : _GEN_238; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_240 = 8'hde == tempCurrentBuf ? 7'h0 : _GEN_239; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_241 = 8'hdf == tempCurrentBuf ? 7'h0 : _GEN_240; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_242 = 8'he0 == tempCurrentBuf ? 7'h0 : _GEN_241; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_243 = 8'he1 == tempCurrentBuf ? 7'h0 : _GEN_242; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_244 = 8'he2 == tempCurrentBuf ? 7'h0 : _GEN_243; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_245 = 8'he3 == tempCurrentBuf ? 7'h0 : _GEN_244; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_246 = 8'he4 == tempCurrentBuf ? 7'h0 : _GEN_245; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_247 = 8'he5 == tempCurrentBuf ? 7'h0 : _GEN_246; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_248 = 8'he6 == tempCurrentBuf ? 7'h0 : _GEN_247; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_249 = 8'he7 == tempCurrentBuf ? 7'h0 : _GEN_248; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_250 = 8'he8 == tempCurrentBuf ? 7'h0 : _GEN_249; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_251 = 8'he9 == tempCurrentBuf ? 7'h0 : _GEN_250; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_252 = 8'hea == tempCurrentBuf ? 7'h0 : _GEN_251; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_253 = 8'heb == tempCurrentBuf ? 7'h0 : _GEN_252; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_254 = 8'hec == tempCurrentBuf ? 7'h0 : _GEN_253; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_255 = 8'hed == tempCurrentBuf ? 7'h0 : _GEN_254; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_256 = 8'hee == tempCurrentBuf ? 7'h0 : _GEN_255; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_257 = 8'hef == tempCurrentBuf ? 7'h0 : _GEN_256; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_258 = 8'hf0 == tempCurrentBuf ? 7'h0 : _GEN_257; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_259 = 8'hf1 == tempCurrentBuf ? 7'h0 : _GEN_258; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_260 = 8'hf2 == tempCurrentBuf ? 7'h0 : _GEN_259; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_261 = 8'hf3 == tempCurrentBuf ? 7'h0 : _GEN_260; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_262 = 8'hf4 == tempCurrentBuf ? 7'h0 : _GEN_261; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_263 = 8'hf5 == tempCurrentBuf ? 7'h0 : _GEN_262; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_264 = 8'hf6 == tempCurrentBuf ? 7'h0 : _GEN_263; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_265 = 8'hf7 == tempCurrentBuf ? 7'h0 : _GEN_264; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_266 = 8'hf8 == tempCurrentBuf ? 7'h0 : _GEN_265; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_267 = 8'hf9 == tempCurrentBuf ? 7'h0 : _GEN_266; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_268 = 8'hfa == tempCurrentBuf ? 7'h0 : _GEN_267; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_269 = 8'hfb == tempCurrentBuf ? 7'h0 : _GEN_268; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_270 = 8'hfc == tempCurrentBuf ? 7'h0 : _GEN_269; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_271 = 8'hfd == tempCurrentBuf ? 7'h0 : _GEN_270; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_272 = 8'hfe == tempCurrentBuf ? 7'h0 : _GEN_271; // @[lut_mem_online2.scala 148:{24,24}]
  wire [6:0] _GEN_273 = 8'hff == tempCurrentBuf ? 7'h0 : _GEN_272; // @[lut_mem_online2.scala 148:{24,24}]
  wire [2:0] _outResult_T_1 = 3'h6 - outputCounter; // @[lut_mem_online2.scala 165:60]
  wire [6:0] _outResult_T_2 = outputBuffer >> _outResult_T_1; // @[lut_mem_online2.scala 165:36]
  wire [2:0] _outputCounter_T_1 = outputCounter + 3'h1; // @[lut_mem_online2.scala 167:42]
  wire  _GEN_275 = isOutputValid & outputCounter != 3'h7 & _outResult_T_2[0]; // @[lut_mem_online2.scala 163:78 165:21 172:23]
  assign io_outResult = outResult; // @[lut_mem_online2.scala 209:16]
  always @(posedge clock) begin
    buffer_0 <= io_start & _GEN_9; // @[lut_mem_online2.scala 198:17 98:29]
    buffer_1 <= io_start & _GEN_10; // @[lut_mem_online2.scala 198:17 98:29]
    buffer_2 <= io_start & _GEN_11; // @[lut_mem_online2.scala 198:17 98:29]
    buffer_3 <= io_start & _GEN_12; // @[lut_mem_online2.scala 198:17 98:29]
    buffer_4 <= io_start & _GEN_13; // @[lut_mem_online2.scala 198:17 98:29]
    buffer_5 <= io_start & _GEN_14; // @[lut_mem_online2.scala 198:17 98:29]
    buffer_6 <= io_start & _GEN_15; // @[lut_mem_online2.scala 198:17 98:29]
    buffer_7 <= io_start & _GEN_16; // @[lut_mem_online2.scala 198:17 98:29]
    if (reset) begin // @[lut_mem_online2.scala 77:29]
      outputBuffer <= 7'h0; // @[lut_mem_online2.scala 77:29]
    end else if (io_start) begin // @[lut_mem_online2.scala 98:29]
      if (isPassedDelta) begin // @[lut_mem_online2.scala 143:40]
        if (8'hff == tempCurrentBuf) begin // @[lut_mem_online2.scala 148:24]
          outputBuffer <= 7'h0; // @[lut_mem_online2.scala 148:24]
        end else begin
          outputBuffer <= _GEN_272;
        end
      end
    end
    if (reset) begin // @[lut_mem_online2.scala 79:24]
      counter <= 3'h0; // @[lut_mem_online2.scala 79:24]
    end else if (io_start) begin // @[lut_mem_online2.scala 98:29]
      if (_GEN_309 != 4'h8) begin // @[lut_mem_online2.scala 121:38]
        counter <= _counter_T_1; // @[lut_mem_online2.scala 137:19]
      end
    end else begin
      counter <= 3'h0; // @[lut_mem_online2.scala 194:13]
    end
    if (reset) begin // @[lut_mem_online2.scala 80:30]
      outputCounter <= 3'h0; // @[lut_mem_online2.scala 80:30]
    end else if (io_start) begin // @[lut_mem_online2.scala 98:29]
      if (isOutputValid & outputCounter != 3'h7) begin // @[lut_mem_online2.scala 163:78]
        outputCounter <= _outputCounter_T_1; // @[lut_mem_online2.scala 167:25]
      end
    end else begin
      outputCounter <= 3'h0; // @[lut_mem_online2.scala 195:19]
    end
    if (reset) begin // @[lut_mem_online2.scala 82:30]
      isPassedDelta <= 1'h0; // @[lut_mem_online2.scala 82:30]
    end else if (io_start) begin // @[lut_mem_online2.scala 98:29]
      isPassedDelta <= _GEN_0;
    end
    isOutputValid <= isPassedDelta; // @[lut_mem_online2.scala 83:30]
    if (reset) begin // @[lut_mem_online2.scala 86:26]
      outResult <= 1'h0; // @[lut_mem_online2.scala 86:26]
    end else if (io_start) begin // @[lut_mem_online2.scala 98:29]
      outResult <= _GEN_275;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_3 & ~reset) begin
          $fwrite(32'h80000002,"buffer(%d) = %d\n",counter,io_inputBit); // @[lut_mem_online2.scala 127:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & isPassedDelta & _T_5) begin
          $fwrite(32'h80000002,"lut(%d) = %d\n",tempCurrentBuf,_GEN_273); // @[lut_mem_online2.scala 152:19]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
