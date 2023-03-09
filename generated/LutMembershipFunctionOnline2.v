module LutMembershipFunctionOnline2(
  input   clock,
  input   reset,
  input   io_start,
  input   io_inputBit,
  output  io_outResultValid,
  output  io_outResult
);
  reg [4:0] i; // @[lut_mem_online2.scala 240:18]
  reg  buffer_0; // @[lut_mem_online2.scala 244:19]
  reg  buffer_1; // @[lut_mem_online2.scala 244:19]
  reg  buffer_2; // @[lut_mem_online2.scala 244:19]
  reg  buffer_3; // @[lut_mem_online2.scala 244:19]
  reg [3:0] counter; // @[lut_mem_online2.scala 246:24]
  reg  outResultValid; // @[lut_mem_online2.scala 248:31]
  reg  outResult; // @[lut_mem_online2.scala 249:26]
  wire  _T_2 = counter < 4'h5; // @[lut_mem_online2.scala 266:22]
  wire  _GEN_0 = io_inputBit ? 1'h0 : buffer_0; // @[lut_mem_online2.scala 244:19 271:46 273:32]
  wire  _GEN_1 = i == 5'h3 ? _GEN_0 : buffer_0; // @[lut_mem_online2.scala 244:19 269:34]
  wire  _T_6 = ~io_inputBit; // @[lut_mem_online2.scala 271:32]
  wire  _GEN_2 = ~io_inputBit ? 1'h0 : _GEN_1; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_3 = i == 5'h4 ? _GEN_2 : _GEN_1; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_4 = ~io_inputBit ? 1'h0 : _GEN_3; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_5 = i == 5'h6 ? _GEN_4 : _GEN_3; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_6 = io_inputBit ? 1'h0 : _GEN_5; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_7 = i == 5'h7 ? _GEN_6 : _GEN_5; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_8 = ~io_inputBit ? 1'h0 : _GEN_7; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_9 = i == 5'ha ? _GEN_8 : _GEN_7; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_10 = io_inputBit ? 1'h0 : _GEN_9; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_11 = i == 5'hb ? _GEN_10 : _GEN_9; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_12 = ~io_inputBit ? 1'h0 : _GEN_11; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_13 = i == 5'hc ? _GEN_12 : _GEN_11; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_14 = ~io_inputBit ? 1'h0 : _GEN_13; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_15 = i == 5'he ? _GEN_14 : _GEN_13; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_16 = ~io_inputBit ? 1'h0 : _GEN_15; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_17 = i == 5'hf ? _GEN_16 : _GEN_15; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_18 = io_inputBit | _GEN_17; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_19 = i == 5'hf ? _GEN_18 : _GEN_17; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_20 = ~io_inputBit | _GEN_19; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_21 = i == 5'h16 ? _GEN_20 : _GEN_19; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_22 = io_inputBit ? 1'h0 : _GEN_21; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_23 = i == 5'h16 ? _GEN_22 : _GEN_21; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_24 = ~io_inputBit ? 1'h0 : _GEN_23; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_25 = i == 5'h17 ? _GEN_24 : _GEN_23; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_26 = io_inputBit | _GEN_25; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_27 = i == 5'h17 ? _GEN_26 : _GEN_25; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_28 = ~io_inputBit | _GEN_27; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_29 = i == 5'h1a ? _GEN_28 : _GEN_27; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_30 = io_inputBit ? 1'h0 : _GEN_29; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_31 = i == 5'h1a ? _GEN_30 : _GEN_29; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_32 = ~io_inputBit | _GEN_31; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_33 = i == 5'h1e ? _GEN_32 : _GEN_31; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_36 = ~io_inputBit ? 1'h0 : buffer_1; // @[lut_mem_online2.scala 244:19 271:46 273:32]
  wire  _GEN_37 = i == 5'h3 ? _GEN_36 : buffer_1; // @[lut_mem_online2.scala 244:19 269:34]
  wire  _GEN_38 = io_inputBit ? 1'h0 : _GEN_37; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_39 = i == 5'h4 ? _GEN_38 : _GEN_37; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_40 = io_inputBit ? 1'h0 : _GEN_39; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_41 = i == 5'h6 ? _GEN_40 : _GEN_39; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_42 = ~io_inputBit ? 1'h0 : _GEN_41; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_43 = i == 5'hb ? _GEN_42 : _GEN_41; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_44 = io_inputBit ? 1'h0 : _GEN_43; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_45 = i == 5'hc ? _GEN_44 : _GEN_43; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_46 = ~io_inputBit ? 1'h0 : _GEN_45; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_47 = i == 5'h11 ? _GEN_46 : _GEN_45; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_48 = io_inputBit | _GEN_47; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_49 = i == 5'h11 ? _GEN_48 : _GEN_47; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_50 = ~io_inputBit | _GEN_49; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_51 = i == 5'h12 ? _GEN_50 : _GEN_49; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_52 = io_inputBit ? 1'h0 : _GEN_51; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_53 = i == 5'h12 ? _GEN_52 : _GEN_51; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_54 = ~io_inputBit ? 1'h0 : _GEN_53; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_55 = i == 5'h13 ? _GEN_54 : _GEN_53; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_56 = io_inputBit | _GEN_55; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_57 = i == 5'h13 ? _GEN_56 : _GEN_55; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_58 = ~io_inputBit | _GEN_57; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_59 = i == 5'h14 ? _GEN_58 : _GEN_57; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_60 = io_inputBit ? 1'h0 : _GEN_59; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_61 = i == 5'h14 ? _GEN_60 : _GEN_59; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_62 = ~io_inputBit | _GEN_61; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_63 = i == 5'h18 ? _GEN_62 : _GEN_61; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_64 = io_inputBit ? 1'h0 : _GEN_63; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_65 = i == 5'h18 ? _GEN_64 : _GEN_63; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_66 = ~io_inputBit ? 1'h0 : _GEN_65; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_67 = i == 5'h19 ? _GEN_66 : _GEN_65; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_68 = io_inputBit | _GEN_67; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_69 = i == 5'h19 ? _GEN_68 : _GEN_67; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_70 = ~io_inputBit ? 1'h0 : _GEN_69; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_71 = i == 5'h1b ? _GEN_70 : _GEN_69; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_72 = io_inputBit | _GEN_71; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_73 = i == 5'h1b ? _GEN_72 : _GEN_71; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_74 = ~io_inputBit | _GEN_73; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_75 = i == 5'h1c ? _GEN_74 : _GEN_73; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_78 = ~io_inputBit ? 1'h0 : buffer_2; // @[lut_mem_online2.scala 244:19 271:46 273:32]
  wire  _GEN_79 = i == 5'h2 ? _GEN_78 : buffer_2; // @[lut_mem_online2.scala 244:19 269:34]
  wire  _GEN_80 = ~io_inputBit ? 1'h0 : _GEN_79; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_81 = i == 5'h7 ? _GEN_80 : _GEN_79; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_82 = ~io_inputBit ? 1'h0 : _GEN_81; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_83 = i == 5'h8 ? _GEN_82 : _GEN_81; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_84 = io_inputBit ? 1'h0 : _GEN_83; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_85 = i == 5'h9 ? _GEN_84 : _GEN_83; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_86 = io_inputBit ? 1'h0 : _GEN_85; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_87 = i == 5'ha ? _GEN_86 : _GEN_85; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_88 = ~io_inputBit | _GEN_87; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_89 = i == 5'he ? _GEN_88 : _GEN_87; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_90 = ~io_inputBit | _GEN_89; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_91 = i == 5'h10 ? _GEN_90 : _GEN_89; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_92 = io_inputBit ? 1'h0 : _GEN_91; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_93 = i == 5'h10 ? _GEN_92 : _GEN_91; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_94 = ~io_inputBit | _GEN_93; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_95 = i == 5'h12 ? _GEN_94 : _GEN_93; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_96 = io_inputBit ? 1'h0 : _GEN_95; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_97 = i == 5'h12 ? _GEN_96 : _GEN_95; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_98 = ~io_inputBit ? 1'h0 : _GEN_97; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_99 = i == 5'h13 ? _GEN_98 : _GEN_97; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_100 = io_inputBit | _GEN_99; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_101 = i == 5'h13 ? _GEN_100 : _GEN_99; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_102 = ~io_inputBit ? 1'h0 : _GEN_101; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_103 = i == 5'h15 ? _GEN_102 : _GEN_101; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_104 = io_inputBit | _GEN_103; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_105 = i == 5'h15 ? _GEN_104 : _GEN_103; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_106 = ~io_inputBit ? 1'h0 : _GEN_105; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_107 = i == 5'h1b ? _GEN_106 : _GEN_105; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_108 = io_inputBit | _GEN_107; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_109 = i == 5'h1b ? _GEN_108 : _GEN_107; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_110 = ~io_inputBit | _GEN_109; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_111 = i == 5'h1c ? _GEN_110 : _GEN_109; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_112 = io_inputBit ? 1'h0 : _GEN_111; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_113 = i == 5'h1c ? _GEN_112 : _GEN_111; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_114 = ~io_inputBit | _GEN_113; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_115 = i == 5'h1e ? _GEN_114 : _GEN_113; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_118 = io_inputBit ? 1'h0 : buffer_3; // @[lut_mem_online2.scala 244:19 271:46 273:32]
  wire  _GEN_119 = i == 5'h0 ? _GEN_118 : buffer_3; // @[lut_mem_online2.scala 244:19 269:34]
  wire  _GEN_120 = io_inputBit | _GEN_119; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_121 = i == 5'h7 ? _GEN_120 : _GEN_119; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_122 = ~io_inputBit | _GEN_121; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_123 = i == 5'ha ? _GEN_122 : _GEN_121; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_124 = ~io_inputBit ? 1'h0 : _GEN_123; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_125 = i == 5'hf ? _GEN_124 : _GEN_123; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_126 = io_inputBit | _GEN_125; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_127 = i == 5'hf ? _GEN_126 : _GEN_125; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_128 = ~io_inputBit ? 1'h0 : _GEN_127; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_129 = i == 5'h11 ? _GEN_128 : _GEN_127; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_130 = io_inputBit | _GEN_129; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_131 = i == 5'h11 ? _GEN_130 : _GEN_129; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_132 = ~io_inputBit | _GEN_131; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_133 = i == 5'h12 ? _GEN_132 : _GEN_131; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_134 = io_inputBit ? 1'h0 : _GEN_133; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_135 = i == 5'h12 ? _GEN_134 : _GEN_133; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_136 = ~io_inputBit ? 1'h0 : _GEN_135; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_137 = i == 5'h13 ? _GEN_136 : _GEN_135; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_138 = io_inputBit | _GEN_137; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_139 = i == 5'h13 ? _GEN_138 : _GEN_137; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_140 = ~io_inputBit | _GEN_139; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_141 = i == 5'h14 ? _GEN_140 : _GEN_139; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_142 = io_inputBit ? 1'h0 : _GEN_141; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_143 = i == 5'h14 ? _GEN_142 : _GEN_141; // @[lut_mem_online2.scala 269:34]
  wire  _GEN_144 = ~io_inputBit | _GEN_143; // @[lut_mem_online2.scala 271:46 273:32]
  wire  _GEN_145 = i == 5'h16 ? _GEN_144 : _GEN_143; // @[lut_mem_online2.scala 269:34]
  wire [3:0] _outResult_T_1 = counter - 4'h5; // @[lut_mem_online2.scala 294:41]
  wire  _GEN_153 = 3'h1 == _outResult_T_1[2:0] ? buffer_1 : buffer_0; // @[lut_mem_online2.scala 294:{23,23}]
  wire  _GEN_154 = 3'h2 == _outResult_T_1[2:0] ? buffer_2 : _GEN_153; // @[lut_mem_online2.scala 294:{23,23}]
  wire  _GEN_155 = 3'h3 == _outResult_T_1[2:0] ? buffer_3 : _GEN_154; // @[lut_mem_online2.scala 294:{23,23}]
  wire  _GEN_156 = 3'h4 == _outResult_T_1[2:0] ? 1'h0 : _GEN_155; // @[lut_mem_online2.scala 294:{23,23}]
  wire  _GEN_157 = counter >= 4'h5 | outResultValid; // @[lut_mem_online2.scala 292:42 293:28 248:31]
  wire  _GEN_158 = counter >= 4'h5 ? _GEN_156 : outResult; // @[lut_mem_online2.scala 292:42 294:23 249:26]
  wire  _GEN_159 = _T_2 ? 1'h0 : _GEN_157; // @[lut_mem_online2.scala 289:35 290:28]
  wire  _GEN_160 = _T_2 ? 1'h0 : _GEN_158; // @[lut_mem_online2.scala 289:35 291:23]
  wire [6:0] _i_T = 2'h2 * i; // @[lut_mem_online2.scala 318:24]
  wire [6:0] _i_T_2 = _i_T + 7'h1; // @[lut_mem_online2.scala 318:28]
  wire [6:0] _i_T_5 = _i_T + 7'h2; // @[lut_mem_online2.scala 320:28]
  wire [6:0] _GEN_161 = io_inputBit ? _i_T_5 : {{2'd0}, i}; // @[lut_mem_online2.scala 319:45 320:17 240:18]
  wire [6:0] _GEN_162 = _T_6 ? _i_T_2 : _GEN_161; // @[lut_mem_online2.scala 317:39 318:17]
  wire [4:0] _GEN_163 = i < 5'h1f ? 5'h1f : i; // @[lut_mem_online2.scala 323:63 331:15 240:18]
  wire [6:0] _GEN_164 = i < 5'hf ? _GEN_162 : {{2'd0}, _GEN_163}; // @[lut_mem_online2.scala 308:61]
  wire [3:0] _counter_T_1 = counter + 4'h1; // @[lut_mem_online2.scala 334:30]
  wire  _GEN_165 = counter < 4'h9 & _GEN_159; // @[lut_mem_online2.scala 284:52 339:26]
  wire  _GEN_166 = counter < 4'h9 & _GEN_160; // @[lut_mem_online2.scala 284:52 338:21]
  wire [6:0] _GEN_167 = counter < 4'h9 ? _GEN_164 : {{2'd0}, i}; // @[lut_mem_online2.scala 240:18 284:52]
  wire  _GEN_183 = io_start & _GEN_165; // @[lut_mem_online2.scala 254:29 362:20]
  wire  _GEN_184 = io_start & _GEN_166; // @[lut_mem_online2.scala 254:29 361:15]
  wire [6:0] _GEN_185 = io_start ? _GEN_167 : 7'h0; // @[lut_mem_online2.scala 254:29 359:7]
  wire [6:0] _GEN_188 = reset ? 7'h0 : _GEN_185; // @[lut_mem_online2.scala 240:{18,18}]
  assign io_outResultValid = outResultValid; // @[lut_mem_online2.scala 369:21]
  assign io_outResult = outResult; // @[lut_mem_online2.scala 368:16]
  always @(posedge clock) begin
    i <= _GEN_188[4:0]; // @[lut_mem_online2.scala 240:{18,18}]
    if (io_start) begin // @[lut_mem_online2.scala 254:29]
      if (counter < 4'h5) begin // @[lut_mem_online2.scala 266:36]
        if (i == 5'h1e) begin // @[lut_mem_online2.scala 269:34]
          if (io_inputBit) begin // @[lut_mem_online2.scala 271:46]
            buffer_0 <= 1'h0; // @[lut_mem_online2.scala 273:32]
          end else begin
            buffer_0 <= _GEN_33;
          end
        end else begin
          buffer_0 <= _GEN_33;
        end
      end
    end
    if (io_start) begin // @[lut_mem_online2.scala 254:29]
      if (counter < 4'h5) begin // @[lut_mem_online2.scala 266:36]
        if (i == 5'h1c) begin // @[lut_mem_online2.scala 269:34]
          if (io_inputBit) begin // @[lut_mem_online2.scala 271:46]
            buffer_1 <= 1'h0; // @[lut_mem_online2.scala 273:32]
          end else begin
            buffer_1 <= _GEN_75;
          end
        end else begin
          buffer_1 <= _GEN_75;
        end
      end
    end
    if (io_start) begin // @[lut_mem_online2.scala 254:29]
      if (counter < 4'h5) begin // @[lut_mem_online2.scala 266:36]
        if (i == 5'h1e) begin // @[lut_mem_online2.scala 269:34]
          if (io_inputBit) begin // @[lut_mem_online2.scala 271:46]
            buffer_2 <= 1'h0; // @[lut_mem_online2.scala 273:32]
          end else begin
            buffer_2 <= _GEN_115;
          end
        end else begin
          buffer_2 <= _GEN_115;
        end
      end
    end
    if (io_start) begin // @[lut_mem_online2.scala 254:29]
      if (counter < 4'h5) begin // @[lut_mem_online2.scala 266:36]
        if (i == 5'h16) begin // @[lut_mem_online2.scala 269:34]
          if (io_inputBit) begin // @[lut_mem_online2.scala 271:46]
            buffer_3 <= 1'h0; // @[lut_mem_online2.scala 273:32]
          end else begin
            buffer_3 <= _GEN_145;
          end
        end else begin
          buffer_3 <= _GEN_145;
        end
      end
    end
    if (reset) begin // @[lut_mem_online2.scala 246:24]
      counter <= 4'h0; // @[lut_mem_online2.scala 246:24]
    end else if (io_start) begin // @[lut_mem_online2.scala 254:29]
      if (counter < 4'h9) begin // @[lut_mem_online2.scala 284:52]
        counter <= _counter_T_1; // @[lut_mem_online2.scala 334:19]
      end
    end else begin
      counter <= 4'h0; // @[lut_mem_online2.scala 360:13]
    end
    if (reset) begin // @[lut_mem_online2.scala 248:31]
      outResultValid <= 1'h0; // @[lut_mem_online2.scala 248:31]
    end else begin
      outResultValid <= _GEN_183;
    end
    if (reset) begin // @[lut_mem_online2.scala 249:26]
      outResult <= 1'h0; // @[lut_mem_online2.scala 249:26]
    end else begin
      outResult <= _GEN_184;
    end
  end
endmodule
