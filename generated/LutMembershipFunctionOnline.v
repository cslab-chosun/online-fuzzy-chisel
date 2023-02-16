module LutMembershipFunctionOnline(
  input   clock,
  input   reset,
  input   io_start,
  input   io_inputBit,
  output  io_outResult
);
  reg [7:0] i; // @[lut_mem_online.scala 205:18]
  reg  buffer_0; // @[lut_mem_online.scala 209:19]
  reg  buffer_1; // @[lut_mem_online.scala 209:19]
  reg  buffer_2; // @[lut_mem_online.scala 209:19]
  reg  buffer_3; // @[lut_mem_online.scala 209:19]
  reg  buffer_4; // @[lut_mem_online.scala 209:19]
  reg  buffer_5; // @[lut_mem_online.scala 209:19]
  reg  buffer_6; // @[lut_mem_online.scala 209:19]
  reg [3:0] counter; // @[lut_mem_online.scala 211:24]
  reg  outResult; // @[lut_mem_online.scala 214:26]
  wire  _GEN_0 = io_inputBit ? 1'h0 : buffer_0; // @[lut_mem_online.scala 209:19 236:46 238:32]
  wire  _GEN_1 = i == 8'h0 ? _GEN_0 : buffer_0; // @[lut_mem_online.scala 209:19 234:34]
  wire  _GEN_2 = io_inputBit ? 1'h0 : _GEN_1; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_3 = i == 8'h1 ? _GEN_2 : _GEN_1; // @[lut_mem_online.scala 234:34]
  wire  _GEN_4 = io_inputBit ? 1'h0 : _GEN_3; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_5 = i == 8'h3 ? _GEN_4 : _GEN_3; // @[lut_mem_online.scala 234:34]
  wire  _T_10 = ~io_inputBit; // @[lut_mem_online.scala 236:32]
  wire  _GEN_6 = ~io_inputBit | _GEN_5; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_7 = i == 8'h7 ? _GEN_6 : _GEN_5; // @[lut_mem_online.scala 234:34]
  wire  _GEN_8 = ~io_inputBit | _GEN_7; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_9 = i == 8'h10 ? _GEN_8 : _GEN_7; // @[lut_mem_online.scala 234:34]
  wire  _GEN_10 = ~io_inputBit | _GEN_9; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_11 = i == 8'h22 ? _GEN_10 : _GEN_9; // @[lut_mem_online.scala 234:34]
  wire  _GEN_14 = io_inputBit ? 1'h0 : buffer_1; // @[lut_mem_online.scala 209:19 236:46 238:32]
  wire  _GEN_15 = i == 8'h0 ? _GEN_14 : buffer_1; // @[lut_mem_online.scala 209:19 234:34]
  wire  _GEN_16 = io_inputBit ? 1'h0 : _GEN_15; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_17 = i == 8'h1 ? _GEN_16 : _GEN_15; // @[lut_mem_online.scala 234:34]
  wire  _GEN_18 = ~io_inputBit | _GEN_17; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_19 = i == 8'h7 ? _GEN_18 : _GEN_17; // @[lut_mem_online.scala 234:34]
  wire  _GEN_20 = io_inputBit ? 1'h0 : _GEN_19; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_21 = i == 8'h8 ? _GEN_20 : _GEN_19; // @[lut_mem_online.scala 234:34]
  wire  _GEN_22 = io_inputBit ? 1'h0 : _GEN_21; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_23 = i == 8'h11 ? _GEN_22 : _GEN_21; // @[lut_mem_online.scala 234:34]
  wire  _GEN_24 = ~io_inputBit | _GEN_23; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_25 = i == 8'h21 ? _GEN_24 : _GEN_23; // @[lut_mem_online.scala 234:34]
  wire  _GEN_26 = ~io_inputBit ? 1'h0 : _GEN_25; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_27 = i == 8'h22 ? _GEN_26 : _GEN_25; // @[lut_mem_online.scala 234:34]
  wire  _GEN_28 = io_inputBit | _GEN_27; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_29 = i == 8'h22 ? _GEN_28 : _GEN_27; // @[lut_mem_online.scala 234:34]
  wire  _GEN_30 = io_inputBit ? 1'h0 : _GEN_29; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_31 = i == 8'h23 ? _GEN_30 : _GEN_29; // @[lut_mem_online.scala 234:34]
  wire  _GEN_32 = io_inputBit ? 1'h0 : _GEN_31; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_33 = i == 8'h44 ? _GEN_32 : _GEN_31; // @[lut_mem_online.scala 234:34]
  wire  _GEN_34 = ~io_inputBit | _GEN_33; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_35 = i == 8'h47 ? _GEN_34 : _GEN_33; // @[lut_mem_online.scala 234:34]
  wire  _GEN_36 = io_inputBit ? 1'h0 : _GEN_35; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_37 = i == 8'h47 ? _GEN_36 : _GEN_35; // @[lut_mem_online.scala 234:34]
  wire  _GEN_38 = ~io_inputBit | _GEN_37; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_39 = i == 8'h89 ? _GEN_38 : _GEN_37; // @[lut_mem_online.scala 234:34]
  wire  _GEN_42 = io_inputBit ? 1'h0 : buffer_2; // @[lut_mem_online.scala 209:19 236:46 238:32]
  wire  _GEN_43 = i == 8'h0 ? _GEN_42 : buffer_2; // @[lut_mem_online.scala 209:19 234:34]
  wire  _GEN_44 = io_inputBit ? 1'h0 : _GEN_43; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_45 = i == 8'h1 ? _GEN_44 : _GEN_43; // @[lut_mem_online.scala 234:34]
  wire  _GEN_46 = ~io_inputBit ? 1'h0 : _GEN_45; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_47 = i == 8'h7 ? _GEN_46 : _GEN_45; // @[lut_mem_online.scala 234:34]
  wire  _GEN_48 = io_inputBit ? 1'h0 : _GEN_47; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_49 = i == 8'h8 ? _GEN_48 : _GEN_47; // @[lut_mem_online.scala 234:34]
  wire  _GEN_50 = io_inputBit ? 1'h0 : _GEN_49; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_51 = i == 8'h11 ? _GEN_50 : _GEN_49; // @[lut_mem_online.scala 234:34]
  wire  _GEN_52 = ~io_inputBit ? 1'h0 : _GEN_51; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_53 = i == 8'h21 ? _GEN_52 : _GEN_51; // @[lut_mem_online.scala 234:34]
  wire  _GEN_54 = io_inputBit | _GEN_53; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_55 = i == 8'h44 ? _GEN_54 : _GEN_53; // @[lut_mem_online.scala 234:34]
  wire  _GEN_56 = io_inputBit ? 1'h0 : _GEN_55; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_57 = i == 8'h45 ? _GEN_56 : _GEN_55; // @[lut_mem_online.scala 234:34]
  wire  _GEN_58 = ~io_inputBit | _GEN_57; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_59 = i == 8'h46 ? _GEN_58 : _GEN_57; // @[lut_mem_online.scala 234:34]
  wire  _GEN_60 = ~io_inputBit ? 1'h0 : _GEN_59; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_61 = i == 8'h47 ? _GEN_60 : _GEN_59; // @[lut_mem_online.scala 234:34]
  wire  _GEN_62 = io_inputBit | _GEN_61; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_63 = i == 8'h47 ? _GEN_62 : _GEN_61; // @[lut_mem_online.scala 234:34]
  wire  _GEN_64 = io_inputBit ? 1'h0 : _GEN_63; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_65 = i == 8'h48 ? _GEN_64 : _GEN_63; // @[lut_mem_online.scala 234:34]
  wire  _GEN_66 = ~io_inputBit ? 1'h0 : _GEN_65; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_67 = i == 8'h89 ? _GEN_66 : _GEN_65; // @[lut_mem_online.scala 234:34]
  wire  _GEN_68 = io_inputBit | _GEN_67; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_69 = i == 8'h89 ? _GEN_68 : _GEN_67; // @[lut_mem_online.scala 234:34]
  wire  _GEN_70 = ~io_inputBit | _GEN_69; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_71 = i == 8'h8b ? _GEN_70 : _GEN_69; // @[lut_mem_online.scala 234:34]
  wire  _GEN_72 = io_inputBit ? 1'h0 : _GEN_71; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_73 = i == 8'h8b ? _GEN_72 : _GEN_71; // @[lut_mem_online.scala 234:34]
  wire  _GEN_74 = ~io_inputBit | _GEN_73; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_75 = i == 8'h8e ? _GEN_74 : _GEN_73; // @[lut_mem_online.scala 234:34]
  wire  _GEN_76 = io_inputBit ? 1'h0 : _GEN_75; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_77 = i == 8'h8e ? _GEN_76 : _GEN_75; // @[lut_mem_online.scala 234:34]
  wire  _GEN_78 = ~io_inputBit | _GEN_77; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_79 = i == 8'h91 ? _GEN_78 : _GEN_77; // @[lut_mem_online.scala 234:34]
  wire  _GEN_82 = io_inputBit ? 1'h0 : buffer_3; // @[lut_mem_online.scala 209:19 236:46 238:32]
  wire  _GEN_83 = i == 8'h0 ? _GEN_82 : buffer_3; // @[lut_mem_online.scala 209:19 234:34]
  wire  _GEN_84 = io_inputBit ? 1'h0 : _GEN_83; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_85 = i == 8'h1 ? _GEN_84 : _GEN_83; // @[lut_mem_online.scala 234:34]
  wire  _GEN_86 = ~io_inputBit ? 1'h0 : _GEN_85; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_87 = i == 8'h7 ? _GEN_86 : _GEN_85; // @[lut_mem_online.scala 234:34]
  wire  _GEN_88 = io_inputBit ? 1'h0 : _GEN_87; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_89 = i == 8'h8 ? _GEN_88 : _GEN_87; // @[lut_mem_online.scala 234:34]
  wire  _GEN_90 = io_inputBit ? 1'h0 : _GEN_89; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_91 = i == 8'h11 ? _GEN_90 : _GEN_89; // @[lut_mem_online.scala 234:34]
  wire  _GEN_92 = ~io_inputBit ? 1'h0 : _GEN_91; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_93 = i == 8'h21 ? _GEN_92 : _GEN_91; // @[lut_mem_online.scala 234:34]
  wire  _GEN_94 = io_inputBit ? 1'h0 : _GEN_93; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_95 = i == 8'h45 ? _GEN_94 : _GEN_93; // @[lut_mem_online.scala 234:34]
  wire  _GEN_96 = io_inputBit | _GEN_95; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_97 = i == 8'h47 ? _GEN_96 : _GEN_95; // @[lut_mem_online.scala 234:34]
  wire  _GEN_98 = ~io_inputBit ? 1'h0 : _GEN_97; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_99 = i == 8'h89 ? _GEN_98 : _GEN_97; // @[lut_mem_online.scala 234:34]
  wire  _GEN_100 = io_inputBit | _GEN_99; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_101 = i == 8'h89 ? _GEN_100 : _GEN_99; // @[lut_mem_online.scala 234:34]
  wire  _GEN_102 = ~io_inputBit | _GEN_101; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_103 = i == 8'h8a ? _GEN_102 : _GEN_101; // @[lut_mem_online.scala 234:34]
  wire  _GEN_104 = io_inputBit ? 1'h0 : _GEN_103; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_105 = i == 8'h8a ? _GEN_104 : _GEN_103; // @[lut_mem_online.scala 234:34]
  wire  _GEN_106 = ~io_inputBit ? 1'h0 : _GEN_105; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_107 = i == 8'h8b ? _GEN_106 : _GEN_105; // @[lut_mem_online.scala 234:34]
  wire  _GEN_108 = io_inputBit | _GEN_107; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_109 = i == 8'h8b ? _GEN_108 : _GEN_107; // @[lut_mem_online.scala 234:34]
  wire  _GEN_110 = ~io_inputBit | _GEN_109; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_111 = i == 8'h8d ? _GEN_110 : _GEN_109; // @[lut_mem_online.scala 234:34]
  wire  _GEN_112 = io_inputBit ? 1'h0 : _GEN_111; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_113 = i == 8'h8d ? _GEN_112 : _GEN_111; // @[lut_mem_online.scala 234:34]
  wire  _GEN_114 = ~io_inputBit ? 1'h0 : _GEN_113; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_115 = i == 8'h8e ? _GEN_114 : _GEN_113; // @[lut_mem_online.scala 234:34]
  wire  _GEN_116 = io_inputBit | _GEN_115; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_117 = i == 8'h8e ? _GEN_116 : _GEN_115; // @[lut_mem_online.scala 234:34]
  wire  _GEN_118 = ~io_inputBit | _GEN_117; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_119 = i == 8'h8f ? _GEN_118 : _GEN_117; // @[lut_mem_online.scala 234:34]
  wire  _GEN_120 = io_inputBit ? 1'h0 : _GEN_119; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_121 = i == 8'h8f ? _GEN_120 : _GEN_119; // @[lut_mem_online.scala 234:34]
  wire  _GEN_122 = ~io_inputBit ? 1'h0 : _GEN_121; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_123 = i == 8'h91 ? _GEN_122 : _GEN_121; // @[lut_mem_online.scala 234:34]
  wire  _GEN_124 = io_inputBit | _GEN_123; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_125 = i == 8'h91 ? _GEN_124 : _GEN_123; // @[lut_mem_online.scala 234:34]
  wire  _GEN_126 = ~io_inputBit | _GEN_125; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_127 = i == 8'h92 ? _GEN_126 : _GEN_125; // @[lut_mem_online.scala 234:34]
  wire  _GEN_130 = io_inputBit ? 1'h0 : buffer_4; // @[lut_mem_online.scala 209:19 236:46 238:32]
  wire  _GEN_131 = i == 8'h0 ? _GEN_130 : buffer_4; // @[lut_mem_online.scala 209:19 234:34]
  wire  _GEN_132 = io_inputBit ? 1'h0 : _GEN_131; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_133 = i == 8'h1 ? _GEN_132 : _GEN_131; // @[lut_mem_online.scala 234:34]
  wire  _GEN_134 = ~io_inputBit | _GEN_133; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_135 = i == 8'h7 ? _GEN_134 : _GEN_133; // @[lut_mem_online.scala 234:34]
  wire  _GEN_136 = io_inputBit ? 1'h0 : _GEN_135; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_137 = i == 8'h8 ? _GEN_136 : _GEN_135; // @[lut_mem_online.scala 234:34]
  wire  _GEN_138 = io_inputBit ? 1'h0 : _GEN_137; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_139 = i == 8'h11 ? _GEN_138 : _GEN_137; // @[lut_mem_online.scala 234:34]
  wire  _GEN_140 = ~io_inputBit | _GEN_139; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_141 = i == 8'h21 ? _GEN_140 : _GEN_139; // @[lut_mem_online.scala 234:34]
  wire  _GEN_142 = ~io_inputBit | _GEN_141; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_143 = i == 8'h44 ? _GEN_142 : _GEN_141; // @[lut_mem_online.scala 234:34]
  wire  _GEN_144 = ~io_inputBit ? 1'h0 : _GEN_143; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_145 = i == 8'h45 ? _GEN_144 : _GEN_143; // @[lut_mem_online.scala 234:34]
  wire  _GEN_146 = ~io_inputBit | _GEN_145; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_147 = i == 8'h46 ? _GEN_146 : _GEN_145; // @[lut_mem_online.scala 234:34]
  wire  _GEN_148 = ~io_inputBit ? 1'h0 : _GEN_147; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_149 = i == 8'h47 ? _GEN_148 : _GEN_147; // @[lut_mem_online.scala 234:34]
  wire  _GEN_150 = ~io_inputBit | _GEN_149; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_151 = i == 8'h48 ? _GEN_150 : _GEN_149; // @[lut_mem_online.scala 234:34]
  wire  _GEN_152 = ~io_inputBit ? 1'h0 : _GEN_151; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_153 = i == 8'h8a ? _GEN_152 : _GEN_151; // @[lut_mem_online.scala 234:34]
  wire  _GEN_154 = io_inputBit | _GEN_153; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_155 = i == 8'h8a ? _GEN_154 : _GEN_153; // @[lut_mem_online.scala 234:34]
  wire  _GEN_156 = ~io_inputBit | _GEN_155; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_157 = i == 8'h8c ? _GEN_156 : _GEN_155; // @[lut_mem_online.scala 234:34]
  wire  _GEN_158 = io_inputBit ? 1'h0 : _GEN_157; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_159 = i == 8'h8c ? _GEN_158 : _GEN_157; // @[lut_mem_online.scala 234:34]
  wire  _GEN_160 = ~io_inputBit ? 1'h0 : _GEN_159; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_161 = i == 8'h8e ? _GEN_160 : _GEN_159; // @[lut_mem_online.scala 234:34]
  wire  _GEN_162 = io_inputBit | _GEN_161; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_163 = i == 8'h8e ? _GEN_162 : _GEN_161; // @[lut_mem_online.scala 234:34]
  wire  _GEN_164 = ~io_inputBit | _GEN_163; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_165 = i == 8'h90 ? _GEN_164 : _GEN_163; // @[lut_mem_online.scala 234:34]
  wire  _GEN_166 = io_inputBit ? 1'h0 : _GEN_165; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_167 = i == 8'h90 ? _GEN_166 : _GEN_165; // @[lut_mem_online.scala 234:34]
  wire  _GEN_168 = ~io_inputBit ? 1'h0 : _GEN_167; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_169 = i == 8'h92 ? _GEN_168 : _GEN_167; // @[lut_mem_online.scala 234:34]
  wire  _GEN_170 = io_inputBit | _GEN_169; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_172 = io_inputBit ? 1'h0 : buffer_5; // @[lut_mem_online.scala 209:19 236:46 238:32]
  wire  _GEN_173 = i == 8'h0 ? _GEN_172 : buffer_5; // @[lut_mem_online.scala 209:19 234:34]
  wire  _GEN_174 = io_inputBit ? 1'h0 : _GEN_173; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_175 = i == 8'h1 ? _GEN_174 : _GEN_173; // @[lut_mem_online.scala 234:34]
  wire  _GEN_176 = ~io_inputBit ? 1'h0 : _GEN_175; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_177 = i == 8'h7 ? _GEN_176 : _GEN_175; // @[lut_mem_online.scala 234:34]
  wire  _GEN_178 = io_inputBit ? 1'h0 : _GEN_177; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_179 = i == 8'h8 ? _GEN_178 : _GEN_177; // @[lut_mem_online.scala 234:34]
  wire  _GEN_180 = io_inputBit ? 1'h0 : _GEN_179; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_181 = i == 8'h11 ? _GEN_180 : _GEN_179; // @[lut_mem_online.scala 234:34]
  wire  _GEN_182 = ~io_inputBit ? 1'h0 : _GEN_181; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_183 = i == 8'h21 ? _GEN_182 : _GEN_181; // @[lut_mem_online.scala 234:34]
  wire  _GEN_184 = ~io_inputBit ? 1'h0 : _GEN_183; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_185 = i == 8'h89 ? _GEN_184 : _GEN_183; // @[lut_mem_online.scala 234:34]
  wire  _GEN_186 = io_inputBit | _GEN_185; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_187 = i == 8'h89 ? _GEN_186 : _GEN_185; // @[lut_mem_online.scala 234:34]
  wire  _GEN_188 = ~io_inputBit | _GEN_187; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_189 = i == 8'h8a ? _GEN_188 : _GEN_187; // @[lut_mem_online.scala 234:34]
  wire  _GEN_190 = io_inputBit ? 1'h0 : _GEN_189; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_191 = i == 8'h8a ? _GEN_190 : _GEN_189; // @[lut_mem_online.scala 234:34]
  wire  _GEN_192 = ~io_inputBit ? 1'h0 : _GEN_191; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_193 = i == 8'h8b ? _GEN_192 : _GEN_191; // @[lut_mem_online.scala 234:34]
  wire  _GEN_194 = io_inputBit | _GEN_193; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_195 = i == 8'h8b ? _GEN_194 : _GEN_193; // @[lut_mem_online.scala 234:34]
  wire  _GEN_196 = ~io_inputBit | _GEN_195; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_197 = i == 8'h8c ? _GEN_196 : _GEN_195; // @[lut_mem_online.scala 234:34]
  wire  _GEN_198 = io_inputBit ? 1'h0 : _GEN_197; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_199 = i == 8'h8c ? _GEN_198 : _GEN_197; // @[lut_mem_online.scala 234:34]
  wire  _GEN_200 = ~io_inputBit ? 1'h0 : _GEN_199; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_201 = i == 8'h8d ? _GEN_200 : _GEN_199; // @[lut_mem_online.scala 234:34]
  wire  _GEN_202 = io_inputBit | _GEN_201; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_203 = i == 8'h8d ? _GEN_202 : _GEN_201; // @[lut_mem_online.scala 234:34]
  wire  _GEN_204 = ~io_inputBit | _GEN_203; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_205 = i == 8'h8e ? _GEN_204 : _GEN_203; // @[lut_mem_online.scala 234:34]
  wire  _GEN_206 = io_inputBit ? 1'h0 : _GEN_205; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_207 = i == 8'h8e ? _GEN_206 : _GEN_205; // @[lut_mem_online.scala 234:34]
  wire  _GEN_208 = ~io_inputBit ? 1'h0 : _GEN_207; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_209 = i == 8'h8f ? _GEN_208 : _GEN_207; // @[lut_mem_online.scala 234:34]
  wire  _GEN_210 = io_inputBit | _GEN_209; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_211 = i == 8'h8f ? _GEN_210 : _GEN_209; // @[lut_mem_online.scala 234:34]
  wire  _GEN_212 = ~io_inputBit | _GEN_211; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_213 = i == 8'h90 ? _GEN_212 : _GEN_211; // @[lut_mem_online.scala 234:34]
  wire  _GEN_214 = io_inputBit ? 1'h0 : _GEN_213; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_215 = i == 8'h90 ? _GEN_214 : _GEN_213; // @[lut_mem_online.scala 234:34]
  wire  _GEN_216 = ~io_inputBit ? 1'h0 : _GEN_215; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_217 = i == 8'h91 ? _GEN_216 : _GEN_215; // @[lut_mem_online.scala 234:34]
  wire  _GEN_218 = io_inputBit | _GEN_217; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_219 = i == 8'h91 ? _GEN_218 : _GEN_217; // @[lut_mem_online.scala 234:34]
  wire  _GEN_220 = ~io_inputBit | _GEN_219; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_221 = i == 8'h92 ? _GEN_220 : _GEN_219; // @[lut_mem_online.scala 234:34]
  wire  _GEN_224 = io_inputBit ? 1'h0 : buffer_6; // @[lut_mem_online.scala 209:19 236:46 238:32]
  wire  _GEN_225 = i == 8'h0 ? _GEN_224 : buffer_6; // @[lut_mem_online.scala 209:19 234:34]
  wire  _GEN_226 = io_inputBit ? 1'h0 : _GEN_225; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_227 = i == 8'h1 ? _GEN_226 : _GEN_225; // @[lut_mem_online.scala 234:34]
  wire  _GEN_228 = ~io_inputBit ? 1'h0 : _GEN_227; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_229 = i == 8'h7 ? _GEN_228 : _GEN_227; // @[lut_mem_online.scala 234:34]
  wire  _GEN_230 = io_inputBit ? 1'h0 : _GEN_229; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_231 = i == 8'h8 ? _GEN_230 : _GEN_229; // @[lut_mem_online.scala 234:34]
  wire  _GEN_232 = io_inputBit ? 1'h0 : _GEN_231; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_233 = i == 8'h11 ? _GEN_232 : _GEN_231; // @[lut_mem_online.scala 234:34]
  wire  _GEN_234 = ~io_inputBit ? 1'h0 : _GEN_233; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_235 = i == 8'h21 ? _GEN_234 : _GEN_233; // @[lut_mem_online.scala 234:34]
  wire  _GEN_236 = ~io_inputBit ? 1'h0 : _GEN_235; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_237 = i == 8'h89 ? _GEN_236 : _GEN_235; // @[lut_mem_online.scala 234:34]
  wire  _GEN_238 = io_inputBit | _GEN_237; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_239 = i == 8'h89 ? _GEN_238 : _GEN_237; // @[lut_mem_online.scala 234:34]
  wire  _GEN_240 = ~io_inputBit ? 1'h0 : _GEN_239; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_241 = i == 8'h8a ? _GEN_240 : _GEN_239; // @[lut_mem_online.scala 234:34]
  wire  _GEN_242 = io_inputBit | _GEN_241; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_243 = i == 8'h8a ? _GEN_242 : _GEN_241; // @[lut_mem_online.scala 234:34]
  wire  _GEN_244 = ~io_inputBit ? 1'h0 : _GEN_243; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_245 = i == 8'h8b ? _GEN_244 : _GEN_243; // @[lut_mem_online.scala 234:34]
  wire  _GEN_246 = io_inputBit | _GEN_245; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_247 = i == 8'h8b ? _GEN_246 : _GEN_245; // @[lut_mem_online.scala 234:34]
  wire  _GEN_248 = ~io_inputBit ? 1'h0 : _GEN_247; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_249 = i == 8'h8c ? _GEN_248 : _GEN_247; // @[lut_mem_online.scala 234:34]
  wire  _GEN_250 = io_inputBit | _GEN_249; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_251 = i == 8'h8c ? _GEN_250 : _GEN_249; // @[lut_mem_online.scala 234:34]
  wire  _GEN_252 = ~io_inputBit ? 1'h0 : _GEN_251; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_253 = i == 8'h8d ? _GEN_252 : _GEN_251; // @[lut_mem_online.scala 234:34]
  wire  _GEN_254 = io_inputBit | _GEN_253; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_255 = i == 8'h8d ? _GEN_254 : _GEN_253; // @[lut_mem_online.scala 234:34]
  wire  _GEN_256 = ~io_inputBit ? 1'h0 : _GEN_255; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_257 = i == 8'h8e ? _GEN_256 : _GEN_255; // @[lut_mem_online.scala 234:34]
  wire  _GEN_258 = io_inputBit | _GEN_257; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_259 = i == 8'h8e ? _GEN_258 : _GEN_257; // @[lut_mem_online.scala 234:34]
  wire  _GEN_260 = ~io_inputBit ? 1'h0 : _GEN_259; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_261 = i == 8'h8f ? _GEN_260 : _GEN_259; // @[lut_mem_online.scala 234:34]
  wire  _GEN_262 = io_inputBit | _GEN_261; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_263 = i == 8'h8f ? _GEN_262 : _GEN_261; // @[lut_mem_online.scala 234:34]
  wire  _GEN_264 = ~io_inputBit ? 1'h0 : _GEN_263; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_265 = i == 8'h90 ? _GEN_264 : _GEN_263; // @[lut_mem_online.scala 234:34]
  wire  _GEN_266 = io_inputBit | _GEN_265; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_267 = i == 8'h90 ? _GEN_266 : _GEN_265; // @[lut_mem_online.scala 234:34]
  wire  _GEN_268 = ~io_inputBit ? 1'h0 : _GEN_267; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_269 = i == 8'h91 ? _GEN_268 : _GEN_267; // @[lut_mem_online.scala 234:34]
  wire  _GEN_270 = io_inputBit | _GEN_269; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_271 = i == 8'h91 ? _GEN_270 : _GEN_269; // @[lut_mem_online.scala 234:34]
  wire  _GEN_272 = ~io_inputBit ? 1'h0 : _GEN_271; // @[lut_mem_online.scala 236:46 238:32]
  wire  _GEN_273 = i == 8'h92 ? _GEN_272 : _GEN_271; // @[lut_mem_online.scala 234:34]
  wire  _GEN_274 = io_inputBit | _GEN_273; // @[lut_mem_online.scala 236:46 238:32]
  wire  _T_279 = counter < 4'he; // @[lut_mem_online.scala 248:22]
  wire  _T_280 = counter < 4'h7; // @[lut_mem_online.scala 253:24]
  wire  _T_281 = counter >= 4'h7; // @[lut_mem_online.scala 256:30]
  wire [3:0] _outResult_T_1 = counter - 4'h7; // @[lut_mem_online.scala 258:41]
  wire  _GEN_284 = 3'h1 == _outResult_T_1[2:0] ? buffer_1 : buffer_0; // @[lut_mem_online.scala 258:{23,23}]
  wire  _GEN_285 = 3'h2 == _outResult_T_1[2:0] ? buffer_2 : _GEN_284; // @[lut_mem_online.scala 258:{23,23}]
  wire  _GEN_286 = 3'h3 == _outResult_T_1[2:0] ? buffer_3 : _GEN_285; // @[lut_mem_online.scala 258:{23,23}]
  wire  _GEN_287 = 3'h4 == _outResult_T_1[2:0] ? buffer_4 : _GEN_286; // @[lut_mem_online.scala 258:{23,23}]
  wire  _GEN_288 = 3'h5 == _outResult_T_1[2:0] ? buffer_5 : _GEN_287; // @[lut_mem_online.scala 258:{23,23}]
  wire  _GEN_289 = 3'h6 == _outResult_T_1[2:0] ? buffer_6 : _GEN_288; // @[lut_mem_online.scala 258:{23,23}]
  wire  _GEN_290 = 3'h7 == _outResult_T_1[2:0] ? 1'h0 : _GEN_289; // @[lut_mem_online.scala 258:{23,23}]
  wire  _T_285 = ~reset; // @[lut_mem_online.scala 260:21]
  wire  _GEN_292 = counter >= 4'h7 ? _GEN_290 : outResult; // @[lut_mem_online.scala 256:42 258:23 214:26]
  wire  _GEN_294 = counter < 4'h7 ? 1'h0 : _GEN_292; // @[lut_mem_online.scala 253:35 255:23]
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
  wire  _GEN_300 = counter < 4'he & _GEN_294; // @[lut_mem_online.scala 248:52 300:21]
  wire [9:0] _GEN_301 = counter < 4'he ? _GEN_298 : {{2'd0}, i}; // @[lut_mem_online.scala 205:18 248:52]
  wire  _GEN_324 = io_start & _GEN_300; // @[lut_mem_online.scala 219:29 323:15]
  wire [9:0] _GEN_325 = io_start ? _GEN_301 : 10'h0; // @[lut_mem_online.scala 219:29 321:7]
  wire [9:0] _GEN_328 = reset ? 10'h0 : _GEN_325; // @[lut_mem_online.scala 205:{18,18}]
  wire  _GEN_329 = io_start & _T_279; // @[lut_mem_online.scala 260:21]
  assign io_outResult = outResult; // @[lut_mem_online.scala 330:16]
  always @(posedge clock) begin
    i <= _GEN_328[7:0]; // @[lut_mem_online.scala 205:{18,18}]
    if (io_start) begin // @[lut_mem_online.scala 219:29]
      if (counter < 4'h8) begin // @[lut_mem_online.scala 231:36]
        if (i == 8'h22) begin // @[lut_mem_online.scala 234:34]
          if (io_inputBit) begin // @[lut_mem_online.scala 236:46]
            buffer_0 <= 1'h0; // @[lut_mem_online.scala 238:32]
          end else begin
            buffer_0 <= _GEN_11;
          end
        end else begin
          buffer_0 <= _GEN_11;
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 219:29]
      if (counter < 4'h8) begin // @[lut_mem_online.scala 231:36]
        if (i == 8'h89) begin // @[lut_mem_online.scala 234:34]
          if (io_inputBit) begin // @[lut_mem_online.scala 236:46]
            buffer_1 <= 1'h0; // @[lut_mem_online.scala 238:32]
          end else begin
            buffer_1 <= _GEN_39;
          end
        end else begin
          buffer_1 <= _GEN_39;
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 219:29]
      if (counter < 4'h8) begin // @[lut_mem_online.scala 231:36]
        if (i == 8'h91) begin // @[lut_mem_online.scala 234:34]
          if (io_inputBit) begin // @[lut_mem_online.scala 236:46]
            buffer_2 <= 1'h0; // @[lut_mem_online.scala 238:32]
          end else begin
            buffer_2 <= _GEN_79;
          end
        end else begin
          buffer_2 <= _GEN_79;
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 219:29]
      if (counter < 4'h8) begin // @[lut_mem_online.scala 231:36]
        if (i == 8'h92) begin // @[lut_mem_online.scala 234:34]
          if (io_inputBit) begin // @[lut_mem_online.scala 236:46]
            buffer_3 <= 1'h0; // @[lut_mem_online.scala 238:32]
          end else begin
            buffer_3 <= _GEN_127;
          end
        end else begin
          buffer_3 <= _GEN_127;
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 219:29]
      if (counter < 4'h8) begin // @[lut_mem_online.scala 231:36]
        if (i == 8'h92) begin // @[lut_mem_online.scala 234:34]
          buffer_4 <= _GEN_170;
        end else if (i == 8'h92) begin // @[lut_mem_online.scala 234:34]
          buffer_4 <= _GEN_168;
        end else begin
          buffer_4 <= _GEN_167;
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 219:29]
      if (counter < 4'h8) begin // @[lut_mem_online.scala 231:36]
        if (i == 8'h92) begin // @[lut_mem_online.scala 234:34]
          if (io_inputBit) begin // @[lut_mem_online.scala 236:46]
            buffer_5 <= 1'h0; // @[lut_mem_online.scala 238:32]
          end else begin
            buffer_5 <= _GEN_221;
          end
        end else begin
          buffer_5 <= _GEN_221;
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 219:29]
      if (counter < 4'h8) begin // @[lut_mem_online.scala 231:36]
        if (i == 8'h92) begin // @[lut_mem_online.scala 234:34]
          buffer_6 <= _GEN_274;
        end else if (i == 8'h92) begin // @[lut_mem_online.scala 234:34]
          buffer_6 <= _GEN_272;
        end else begin
          buffer_6 <= _GEN_271;
        end
      end
    end
    if (reset) begin // @[lut_mem_online.scala 211:24]
      counter <= 4'h0; // @[lut_mem_online.scala 211:24]
    end else if (io_start) begin // @[lut_mem_online.scala 219:29]
      if (counter < 4'he) begin // @[lut_mem_online.scala 248:52]
        counter <= _counter_T_1; // @[lut_mem_online.scala 297:19]
      end
    end else begin
      counter <= 4'h0; // @[lut_mem_online.scala 322:13]
    end
    if (reset) begin // @[lut_mem_online.scala 214:26]
      outResult <= 1'h0; // @[lut_mem_online.scala 214:26]
    end else begin
      outResult <= _GEN_324;
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
