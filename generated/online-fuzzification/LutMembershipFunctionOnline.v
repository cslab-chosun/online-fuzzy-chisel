module LutMembershipFunctionOnline(
  input   clock,
  input   reset,
  input   io_start,
  input   io_inputBit,
  output  io_outResult
);
  reg [9:0] i; // @[lut_mem_online.scala 206:18]
  reg  buffer_0; // @[lut_mem_online.scala 210:19]
  reg  buffer_1; // @[lut_mem_online.scala 210:19]
  reg  buffer_2; // @[lut_mem_online.scala 210:19]
  reg  buffer_3; // @[lut_mem_online.scala 210:19]
  reg  buffer_4; // @[lut_mem_online.scala 210:19]
  reg  buffer_5; // @[lut_mem_online.scala 210:19]
  reg  buffer_6; // @[lut_mem_online.scala 210:19]
  reg [4:0] counter; // @[lut_mem_online.scala 212:24]
  reg  outResult; // @[lut_mem_online.scala 215:26]
  wire  _T_2 = counter < 5'ha; // @[lut_mem_online.scala 232:22]
  wire  _GEN_0 = i == 10'h0 ? 1'h0 : buffer_0; // @[lut_mem_online.scala 210:19 235:34 239:30]
  wire  _GEN_1 = i == 10'h1 ? 1'h0 : _GEN_0; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_2 = i == 10'h3 ? 1'h0 : _GEN_1; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_4 = i == 10'h10 ? 1'h0 : i == 10'h7 | _GEN_2; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_6 = i == 10'h44 ? 1'h0 : i == 10'h21 | _GEN_4; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_11 = i == 10'h0 ? 1'h0 : buffer_1; // @[lut_mem_online.scala 210:19 235:34 239:30]
  wire  _GEN_12 = i == 10'h1 ? 1'h0 : _GEN_11; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_13 = i == 10'h3 ? 1'h0 : _GEN_12; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_16 = i == 10'h21 ? 1'h0 : i == 10'h20 | (i == 10'hf | _GEN_13); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_18 = i == 10'h42 ? 1'h0 : i == 10'h22 | _GEN_16; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_20 = i == 10'h46 ? 1'h0 : i == 10'h44 | _GEN_18; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_22 = i == 10'h89 ? 1'h0 : i == 10'h85 | _GEN_20; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_25 = i == 10'h114 ? 1'h0 : i == 10'h10c | (i == 10'h8d | _GEN_22); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_28 = i == 10'h21a ? 1'h0 : i == 10'h21a | (i == 10'h11c | _GEN_25); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_29 = i == 10'h22a ? 1'h0 : _GEN_28; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_33 = i == 10'h0 ? 1'h0 : buffer_2; // @[lut_mem_online.scala 210:19 235:34 239:30]
  wire  _GEN_34 = i == 10'h1 ? 1'h0 : _GEN_33; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_35 = i == 10'h8 ? 1'h0 : _GEN_34; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_36 = i == 10'hf ? 1'h0 : _GEN_35; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_37 = i == 10'h11 ? 1'h0 : _GEN_36; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_38 = i == 10'h20 ? 1'h0 : _GEN_37; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_39 = i == 10'h23 ? 1'h0 : _GEN_38; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_41 = i == 10'h43 ? 1'h0 : i == 10'h42 | _GEN_39; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_43 = i == 10'h45 ? 1'h0 : i == 10'h44 | _GEN_41; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_45 = i == 10'h47 ? 1'h0 : i == 10'h46 | _GEN_43; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_46 = i == 10'h85 ? 1'h0 : _GEN_45; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_48 = i == 10'h89 ? 1'h0 : i == 10'h87 | _GEN_46; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_50 = i == 10'h8d ? 1'h0 : i == 10'h8b | _GEN_48; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_52 = i == 10'h10c ? 1'h0 : i == 10'h8f | _GEN_50; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_54 = i == 10'h114 ? 1'h0 : i == 10'h110 | _GEN_52; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_56 = i == 10'h11c ? 1'h0 : i == 10'h118 | _GEN_54; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_58 = i == 10'h21a ? 1'h0 : i == 10'h120 | _GEN_56; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_61 = i == 10'h222 ? 1'h0 : i == 10'h222 | (i == 10'h21a | _GEN_58); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_62 = i == 10'h22a ? 1'h0 : _GEN_61; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_65 = i == 10'h232 ? 1'h0 : i == 10'h232 | (i == 10'h22a | _GEN_62); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_66 = i == 10'h23a ? 1'h0 : _GEN_65; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_70 = i == 10'h0 ? 1'h0 : buffer_3; // @[lut_mem_online.scala 210:19 235:34 239:30]
  wire  _GEN_71 = i == 10'h1 ? 1'h0 : _GEN_70; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_72 = i == 10'h8 ? 1'h0 : _GEN_71; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_73 = i == 10'hf ? 1'h0 : _GEN_72; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_74 = i == 10'h11 ? 1'h0 : _GEN_73; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_75 = i == 10'h20 ? 1'h0 : _GEN_74; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_76 = i == 10'h23 ? 1'h0 : _GEN_75; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_77 = i == 10'h85 ? 1'h0 : _GEN_76; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_79 = i == 10'h87 ? 1'h0 : i == 10'h86 | _GEN_77; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_81 = i == 10'h89 ? 1'h0 : i == 10'h88 | _GEN_79; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_83 = i == 10'h8b ? 1'h0 : i == 10'h8a | _GEN_81; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_85 = i == 10'h8d ? 1'h0 : i == 10'h8c | _GEN_83; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_87 = i == 10'h8f ? 1'h0 : i == 10'h8e | _GEN_85; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_89 = i == 10'h10c ? 1'h0 : i == 10'h90 | _GEN_87; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_91 = i == 10'h110 ? 1'h0 : i == 10'h10e | _GEN_89; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_93 = i == 10'h114 ? 1'h0 : i == 10'h112 | _GEN_91; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_95 = i == 10'h118 ? 1'h0 : i == 10'h116 | _GEN_93; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_97 = i == 10'h11c ? 1'h0 : i == 10'h11a | _GEN_95; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_99 = i == 10'h120 ? 1'h0 : i == 10'h11e | _GEN_97; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_101 = i == 10'h21a ? 1'h0 : i == 10'h122 | _GEN_99; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_104 = i == 10'h21e ? 1'h0 : i == 10'h21e | (i == 10'h21a | _GEN_101); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_105 = i == 10'h222 ? 1'h0 : _GEN_104; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_108 = i == 10'h226 ? 1'h0 : i == 10'h226 | (i == 10'h222 | _GEN_105); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_109 = i == 10'h22a ? 1'h0 : _GEN_108; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_112 = i == 10'h22e ? 1'h0 : i == 10'h22e | (i == 10'h22a | _GEN_109); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_113 = i == 10'h232 ? 1'h0 : _GEN_112; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_116 = i == 10'h236 ? 1'h0 : i == 10'h236 | (i == 10'h232 | _GEN_113); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_117 = i == 10'h23a ? 1'h0 : _GEN_116; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_120 = i == 10'h23e ? 1'h0 : i == 10'h23e | (i == 10'h23a | _GEN_117); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_121 = i == 10'h242 ? 1'h0 : _GEN_120; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_125 = i == 10'h0 ? 1'h0 : buffer_4; // @[lut_mem_online.scala 210:19 235:34 239:30]
  wire  _GEN_126 = i == 10'h1 ? 1'h0 : _GEN_125; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_127 = i == 10'h8 ? 1'h0 : _GEN_126; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_129 = i == 10'h11 ? 1'h0 : i == 10'hf | _GEN_127; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_131 = i == 10'h48 ? 1'h0 : i == 10'h20 | _GEN_129; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_132 = i == 10'h91 ? 1'h0 : _GEN_131; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_134 = i == 10'h10c ? 1'h0 : i == 10'h10b | _GEN_132; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_136 = i == 10'h10e ? 1'h0 : i == 10'h10d | _GEN_134; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_138 = i == 10'h110 ? 1'h0 : i == 10'h10f | _GEN_136; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_140 = i == 10'h112 ? 1'h0 : i == 10'h111 | _GEN_138; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_142 = i == 10'h114 ? 1'h0 : i == 10'h113 | _GEN_140; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_144 = i == 10'h116 ? 1'h0 : i == 10'h115 | _GEN_142; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_146 = i == 10'h118 ? 1'h0 : i == 10'h117 | _GEN_144; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_148 = i == 10'h11a ? 1'h0 : i == 10'h119 | _GEN_146; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_150 = i == 10'h11c ? 1'h0 : i == 10'h11b | _GEN_148; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_152 = i == 10'h11e ? 1'h0 : i == 10'h11d | _GEN_150; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_154 = i == 10'h120 ? 1'h0 : i == 10'h11f | _GEN_152; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_156 = i == 10'h122 ? 1'h0 : i == 10'h121 | _GEN_154; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_159 = i == 10'h218 ? 1'h0 : i == 10'h218 | (i == 10'h123 | _GEN_156); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_160 = i == 10'h21a ? 1'h0 : _GEN_159; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_163 = i == 10'h21c ? 1'h0 : i == 10'h21c | (i == 10'h21a | _GEN_160); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_164 = i == 10'h21e ? 1'h0 : _GEN_163; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_167 = i == 10'h220 ? 1'h0 : i == 10'h220 | (i == 10'h21e | _GEN_164); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_168 = i == 10'h222 ? 1'h0 : _GEN_167; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_171 = i == 10'h224 ? 1'h0 : i == 10'h224 | (i == 10'h222 | _GEN_168); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_172 = i == 10'h226 ? 1'h0 : _GEN_171; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_175 = i == 10'h228 ? 1'h0 : i == 10'h228 | (i == 10'h226 | _GEN_172); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_176 = i == 10'h22a ? 1'h0 : _GEN_175; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_179 = i == 10'h22c ? 1'h0 : i == 10'h22c | (i == 10'h22a | _GEN_176); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_180 = i == 10'h22e ? 1'h0 : _GEN_179; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_183 = i == 10'h230 ? 1'h0 : i == 10'h230 | (i == 10'h22e | _GEN_180); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_184 = i == 10'h232 ? 1'h0 : _GEN_183; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_187 = i == 10'h234 ? 1'h0 : i == 10'h234 | (i == 10'h232 | _GEN_184); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_188 = i == 10'h236 ? 1'h0 : _GEN_187; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_191 = i == 10'h238 ? 1'h0 : i == 10'h238 | (i == 10'h236 | _GEN_188); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_192 = i == 10'h23a ? 1'h0 : _GEN_191; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_195 = i == 10'h23c ? 1'h0 : i == 10'h23c | (i == 10'h23a | _GEN_192); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_196 = i == 10'h23e ? 1'h0 : _GEN_195; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_199 = i == 10'h240 ? 1'h0 : i == 10'h240 | (i == 10'h23e | _GEN_196); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_200 = i == 10'h242 ? 1'h0 : _GEN_199; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_203 = i == 10'h244 ? 1'h0 : i == 10'h244 | (i == 10'h242 | _GEN_200); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_204 = i == 10'h246 ? 1'h0 : _GEN_203; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_208 = i == 10'h0 ? 1'h0 : buffer_5; // @[lut_mem_online.scala 210:19 235:34 239:30]
  wire  _GEN_209 = i == 10'h1 ? 1'h0 : _GEN_208; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_210 = i == 10'h8 ? 1'h0 : _GEN_209; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_211 = i == 10'hf ? 1'h0 : _GEN_210; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_212 = i == 10'h11 ? 1'h0 : _GEN_211; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_213 = i == 10'h20 ? 1'h0 : _GEN_212; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_214 = i == 10'h48 ? 1'h0 : _GEN_213; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_215 = i == 10'h10b ? 1'h0 : _GEN_214; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_216 = i == 10'h124 ? 1'h0 : _GEN_215; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_217 = i == 10'h218 ? 1'h0 : _GEN_216; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_220 = i == 10'h219 ? 1'h0 : i == 10'h219 | (i == 10'h218 | _GEN_217); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_221 = i == 10'h21a ? 1'h0 : _GEN_220; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_224 = i == 10'h21b ? 1'h0 : i == 10'h21b | (i == 10'h21a | _GEN_221); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_225 = i == 10'h21c ? 1'h0 : _GEN_224; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_228 = i == 10'h21d ? 1'h0 : i == 10'h21d | (i == 10'h21c | _GEN_225); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_229 = i == 10'h21e ? 1'h0 : _GEN_228; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_232 = i == 10'h21f ? 1'h0 : i == 10'h21f | (i == 10'h21e | _GEN_229); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_233 = i == 10'h220 ? 1'h0 : _GEN_232; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_236 = i == 10'h221 ? 1'h0 : i == 10'h221 | (i == 10'h220 | _GEN_233); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_237 = i == 10'h222 ? 1'h0 : _GEN_236; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_240 = i == 10'h223 ? 1'h0 : i == 10'h223 | (i == 10'h222 | _GEN_237); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_241 = i == 10'h224 ? 1'h0 : _GEN_240; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_244 = i == 10'h225 ? 1'h0 : i == 10'h225 | (i == 10'h224 | _GEN_241); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_245 = i == 10'h226 ? 1'h0 : _GEN_244; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_248 = i == 10'h227 ? 1'h0 : i == 10'h227 | (i == 10'h226 | _GEN_245); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_249 = i == 10'h228 ? 1'h0 : _GEN_248; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_252 = i == 10'h229 ? 1'h0 : i == 10'h229 | (i == 10'h228 | _GEN_249); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_253 = i == 10'h22a ? 1'h0 : _GEN_252; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_256 = i == 10'h22b ? 1'h0 : i == 10'h22b | (i == 10'h22a | _GEN_253); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_257 = i == 10'h22c ? 1'h0 : _GEN_256; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_260 = i == 10'h22d ? 1'h0 : i == 10'h22d | (i == 10'h22c | _GEN_257); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_261 = i == 10'h22e ? 1'h0 : _GEN_260; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_264 = i == 10'h22f ? 1'h0 : i == 10'h22f | (i == 10'h22e | _GEN_261); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_265 = i == 10'h230 ? 1'h0 : _GEN_264; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_268 = i == 10'h231 ? 1'h0 : i == 10'h231 | (i == 10'h230 | _GEN_265); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_269 = i == 10'h232 ? 1'h0 : _GEN_268; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_272 = i == 10'h233 ? 1'h0 : i == 10'h233 | (i == 10'h232 | _GEN_269); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_273 = i == 10'h234 ? 1'h0 : _GEN_272; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_276 = i == 10'h235 ? 1'h0 : i == 10'h235 | (i == 10'h234 | _GEN_273); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_277 = i == 10'h236 ? 1'h0 : _GEN_276; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_280 = i == 10'h237 ? 1'h0 : i == 10'h237 | (i == 10'h236 | _GEN_277); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_281 = i == 10'h238 ? 1'h0 : _GEN_280; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_284 = i == 10'h239 ? 1'h0 : i == 10'h239 | (i == 10'h238 | _GEN_281); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_285 = i == 10'h23a ? 1'h0 : _GEN_284; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_288 = i == 10'h23b ? 1'h0 : i == 10'h23b | (i == 10'h23a | _GEN_285); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_289 = i == 10'h23c ? 1'h0 : _GEN_288; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_292 = i == 10'h23d ? 1'h0 : i == 10'h23d | (i == 10'h23c | _GEN_289); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_293 = i == 10'h23e ? 1'h0 : _GEN_292; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_296 = i == 10'h23f ? 1'h0 : i == 10'h23f | (i == 10'h23e | _GEN_293); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_297 = i == 10'h240 ? 1'h0 : _GEN_296; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_300 = i == 10'h241 ? 1'h0 : i == 10'h241 | (i == 10'h240 | _GEN_297); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_301 = i == 10'h242 ? 1'h0 : _GEN_300; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_304 = i == 10'h243 ? 1'h0 : i == 10'h243 | (i == 10'h242 | _GEN_301); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_305 = i == 10'h244 ? 1'h0 : _GEN_304; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_308 = i == 10'h245 ? 1'h0 : i == 10'h245 | (i == 10'h244 | _GEN_305); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_309 = i == 10'h246 ? 1'h0 : _GEN_308; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_312 = i == 10'h247 ? 1'h0 : i == 10'h247 | (i == 10'h246 | _GEN_309); // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_313 = i == 10'h248 ? 1'h0 : _GEN_312; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_317 = i == 10'h0 ? 1'h0 : buffer_6; // @[lut_mem_online.scala 210:19 235:34 239:30]
  wire  _GEN_318 = i == 10'h1 ? 1'h0 : _GEN_317; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_319 = i == 10'h8 ? 1'h0 : _GEN_318; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_320 = i == 10'hf ? 1'h0 : _GEN_319; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_321 = i == 10'h11 ? 1'h0 : _GEN_320; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_322 = i == 10'h20 ? 1'h0 : _GEN_321; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_323 = i == 10'h48 ? 1'h0 : _GEN_322; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_324 = i == 10'h10b ? 1'h0 : _GEN_323; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_325 = i == 10'h124 ? 1'h0 : _GEN_324; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_326 = i == 10'h218 ? 1'h0 : _GEN_325; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_328 = i == 10'h219 ? 1'h0 : i == 10'h218 | _GEN_326; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_330 = i == 10'h21a ? 1'h0 : i == 10'h219 | _GEN_328; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_332 = i == 10'h21b ? 1'h0 : i == 10'h21a | _GEN_330; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_334 = i == 10'h21c ? 1'h0 : i == 10'h21b | _GEN_332; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_336 = i == 10'h21d ? 1'h0 : i == 10'h21c | _GEN_334; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_338 = i == 10'h21e ? 1'h0 : i == 10'h21d | _GEN_336; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_340 = i == 10'h21f ? 1'h0 : i == 10'h21e | _GEN_338; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_342 = i == 10'h220 ? 1'h0 : i == 10'h21f | _GEN_340; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_344 = i == 10'h221 ? 1'h0 : i == 10'h220 | _GEN_342; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_346 = i == 10'h222 ? 1'h0 : i == 10'h221 | _GEN_344; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_348 = i == 10'h223 ? 1'h0 : i == 10'h222 | _GEN_346; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_350 = i == 10'h224 ? 1'h0 : i == 10'h223 | _GEN_348; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_352 = i == 10'h225 ? 1'h0 : i == 10'h224 | _GEN_350; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_354 = i == 10'h226 ? 1'h0 : i == 10'h225 | _GEN_352; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_356 = i == 10'h227 ? 1'h0 : i == 10'h226 | _GEN_354; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_358 = i == 10'h228 ? 1'h0 : i == 10'h227 | _GEN_356; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_360 = i == 10'h229 ? 1'h0 : i == 10'h228 | _GEN_358; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_362 = i == 10'h22a ? 1'h0 : i == 10'h229 | _GEN_360; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_364 = i == 10'h22b ? 1'h0 : i == 10'h22a | _GEN_362; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_366 = i == 10'h22c ? 1'h0 : i == 10'h22b | _GEN_364; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_368 = i == 10'h22d ? 1'h0 : i == 10'h22c | _GEN_366; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_370 = i == 10'h22e ? 1'h0 : i == 10'h22d | _GEN_368; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_372 = i == 10'h22f ? 1'h0 : i == 10'h22e | _GEN_370; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_374 = i == 10'h230 ? 1'h0 : i == 10'h22f | _GEN_372; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_376 = i == 10'h231 ? 1'h0 : i == 10'h230 | _GEN_374; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_378 = i == 10'h232 ? 1'h0 : i == 10'h231 | _GEN_376; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_380 = i == 10'h233 ? 1'h0 : i == 10'h232 | _GEN_378; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_382 = i == 10'h234 ? 1'h0 : i == 10'h233 | _GEN_380; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_384 = i == 10'h235 ? 1'h0 : i == 10'h234 | _GEN_382; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_386 = i == 10'h236 ? 1'h0 : i == 10'h235 | _GEN_384; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_388 = i == 10'h237 ? 1'h0 : i == 10'h236 | _GEN_386; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_390 = i == 10'h238 ? 1'h0 : i == 10'h237 | _GEN_388; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_392 = i == 10'h239 ? 1'h0 : i == 10'h238 | _GEN_390; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_394 = i == 10'h23a ? 1'h0 : i == 10'h239 | _GEN_392; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_396 = i == 10'h23b ? 1'h0 : i == 10'h23a | _GEN_394; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_398 = i == 10'h23c ? 1'h0 : i == 10'h23b | _GEN_396; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_400 = i == 10'h23d ? 1'h0 : i == 10'h23c | _GEN_398; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_402 = i == 10'h23e ? 1'h0 : i == 10'h23d | _GEN_400; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_404 = i == 10'h23f ? 1'h0 : i == 10'h23e | _GEN_402; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_406 = i == 10'h240 ? 1'h0 : i == 10'h23f | _GEN_404; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_408 = i == 10'h241 ? 1'h0 : i == 10'h240 | _GEN_406; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_410 = i == 10'h242 ? 1'h0 : i == 10'h241 | _GEN_408; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_412 = i == 10'h243 ? 1'h0 : i == 10'h242 | _GEN_410; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_414 = i == 10'h244 ? 1'h0 : i == 10'h243 | _GEN_412; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_416 = i == 10'h245 ? 1'h0 : i == 10'h244 | _GEN_414; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_418 = i == 10'h246 ? 1'h0 : i == 10'h245 | _GEN_416; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_420 = i == 10'h247 ? 1'h0 : i == 10'h246 | _GEN_418; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_422 = i == 10'h248 ? 1'h0 : i == 10'h247 | _GEN_420; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_424 = i == 10'h249 ? 1'h0 : i == 10'h248 | _GEN_422; // @[lut_mem_online.scala 235:34 239:30]
  wire  _GEN_425 = i == 10'h249 | _GEN_424; // @[lut_mem_online.scala 235:34 239:30]
  wire  _T_429 = counter < 5'h11; // @[lut_mem_online.scala 250:22]
  wire  _T_431 = counter >= 5'ha; // @[lut_mem_online.scala 258:30]
  wire [4:0] _outResult_T_1 = counter - 5'ha; // @[lut_mem_online.scala 260:41]
  wire  _GEN_434 = 4'h1 == _outResult_T_1[3:0] ? buffer_1 : buffer_0; // @[lut_mem_online.scala 260:{23,23}]
  wire  _GEN_435 = 4'h2 == _outResult_T_1[3:0] ? buffer_2 : _GEN_434; // @[lut_mem_online.scala 260:{23,23}]
  wire  _GEN_436 = 4'h3 == _outResult_T_1[3:0] ? buffer_3 : _GEN_435; // @[lut_mem_online.scala 260:{23,23}]
  wire  _GEN_437 = 4'h4 == _outResult_T_1[3:0] ? buffer_4 : _GEN_436; // @[lut_mem_online.scala 260:{23,23}]
  wire  _GEN_438 = 4'h5 == _outResult_T_1[3:0] ? buffer_5 : _GEN_437; // @[lut_mem_online.scala 260:{23,23}]
  wire  _GEN_439 = 4'h6 == _outResult_T_1[3:0] ? buffer_6 : _GEN_438; // @[lut_mem_online.scala 260:{23,23}]
  wire  _GEN_440 = 4'h7 == _outResult_T_1[3:0] ? 1'h0 : _GEN_439; // @[lut_mem_online.scala 260:{23,23}]
  wire  _GEN_441 = 4'h8 == _outResult_T_1[3:0] ? 1'h0 : _GEN_440; // @[lut_mem_online.scala 260:{23,23}]
  wire  _GEN_442 = 4'h9 == _outResult_T_1[3:0] ? 1'h0 : _GEN_441; // @[lut_mem_online.scala 260:{23,23}]
  wire  _T_435 = ~reset; // @[lut_mem_online.scala 263:21]
  wire  _GEN_444 = counter >= 5'ha ? _GEN_442 : outResult; // @[lut_mem_online.scala 258:42 260:23 215:26]
  wire  _GEN_446 = _T_2 ? 1'h0 : _GEN_444; // @[lut_mem_online.scala 255:35 257:23]
  wire  _T_436 = i < 10'h1ff; // @[lut_mem_online.scala 274:18]
  wire [11:0] _i_T = 2'h2 * i; // @[lut_mem_online.scala 284:24]
  wire [11:0] _i_T_2 = _i_T + 12'h1; // @[lut_mem_online.scala 284:28]
  wire [11:0] _i_T_5 = _i_T + 12'h2; // @[lut_mem_online.scala 286:28]
  wire [11:0] _GEN_447 = io_inputBit ? _i_T_5 : {{2'd0}, i}; // @[lut_mem_online.scala 285:45 286:17 206:18]
  wire [11:0] _GEN_448 = ~io_inputBit ? _i_T_2 : _GEN_447; // @[lut_mem_online.scala 283:39 284:17]
  wire  _T_441 = i < 10'h3ff; // @[lut_mem_online.scala 289:24]
  wire [9:0] _GEN_449 = i < 10'h3ff ? 10'h3ff : i; // @[lut_mem_online.scala 289:63 297:15 206:18]
  wire [11:0] _GEN_450 = i < 10'h1ff ? _GEN_448 : {{2'd0}, _GEN_449}; // @[lut_mem_online.scala 274:61]
  wire [4:0] _counter_T_1 = counter + 5'h1; // @[lut_mem_online.scala 300:30]
  wire  _GEN_452 = counter < 5'h11 & _GEN_446; // @[lut_mem_online.scala 250:52 304:21]
  wire [11:0] _GEN_453 = counter < 5'h11 ? _GEN_450 : {{2'd0}, i}; // @[lut_mem_online.scala 206:18 250:52]
  wire  _GEN_476 = io_start & _GEN_452; // @[lut_mem_online.scala 220:29 327:15]
  wire [11:0] _GEN_477 = io_start ? _GEN_453 : 12'h0; // @[lut_mem_online.scala 220:29 325:7]
  wire [11:0] _GEN_480 = reset ? 12'h0 : _GEN_477; // @[lut_mem_online.scala 206:{18,18}]
  wire  _GEN_481 = io_start & _T_429; // @[lut_mem_online.scala 263:21]
  assign io_outResult = outResult; // @[lut_mem_online.scala 334:16]
  always @(posedge clock) begin
    i <= _GEN_480[9:0]; // @[lut_mem_online.scala 206:{18,18}]
    if (io_start) begin // @[lut_mem_online.scala 220:29]
      if (counter < 5'ha) begin // @[lut_mem_online.scala 232:36]
        if (i == 10'h22a) begin // @[lut_mem_online.scala 235:34]
          buffer_0 <= 1'h0; // @[lut_mem_online.scala 239:30]
        end else begin
          buffer_0 <= i == 10'h22a | (i == 10'h114 | (i == 10'h89 | _GEN_6));
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 220:29]
      if (counter < 5'ha) begin // @[lut_mem_online.scala 232:36]
        if (i == 10'h23a) begin // @[lut_mem_online.scala 235:34]
          buffer_1 <= 1'h0; // @[lut_mem_online.scala 239:30]
        end else begin
          buffer_1 <= i == 10'h23a | (i == 10'h22a | _GEN_29);
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 220:29]
      if (counter < 5'ha) begin // @[lut_mem_online.scala 232:36]
        if (i == 10'h242) begin // @[lut_mem_online.scala 235:34]
          buffer_2 <= 1'h0; // @[lut_mem_online.scala 239:30]
        end else begin
          buffer_2 <= i == 10'h242 | (i == 10'h23a | _GEN_66);
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 220:29]
      if (counter < 5'ha) begin // @[lut_mem_online.scala 232:36]
        if (i == 10'h246) begin // @[lut_mem_online.scala 235:34]
          buffer_3 <= 1'h0; // @[lut_mem_online.scala 239:30]
        end else begin
          buffer_3 <= i == 10'h246 | (i == 10'h242 | _GEN_121);
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 220:29]
      if (counter < 5'ha) begin // @[lut_mem_online.scala 232:36]
        if (i == 10'h248) begin // @[lut_mem_online.scala 235:34]
          buffer_4 <= 1'h0; // @[lut_mem_online.scala 239:30]
        end else begin
          buffer_4 <= i == 10'h248 | (i == 10'h246 | _GEN_204);
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 220:29]
      if (counter < 5'ha) begin // @[lut_mem_online.scala 232:36]
        if (i == 10'h249) begin // @[lut_mem_online.scala 235:34]
          buffer_5 <= 1'h0; // @[lut_mem_online.scala 239:30]
        end else begin
          buffer_5 <= i == 10'h249 | (i == 10'h248 | _GEN_313);
        end
      end
    end
    if (io_start) begin // @[lut_mem_online.scala 220:29]
      if (counter < 5'ha) begin // @[lut_mem_online.scala 232:36]
        buffer_6 <= _GEN_425;
      end
    end
    if (reset) begin // @[lut_mem_online.scala 212:24]
      counter <= 5'h0; // @[lut_mem_online.scala 212:24]
    end else if (io_start) begin // @[lut_mem_online.scala 220:29]
      if (counter < 5'h11) begin // @[lut_mem_online.scala 250:52]
        counter <= _counter_T_1; // @[lut_mem_online.scala 300:19]
      end
    end else begin
      counter <= 5'h0; // @[lut_mem_online.scala 326:13]
    end
    if (reset) begin // @[lut_mem_online.scala 215:26]
      outResult <= 1'h0; // @[lut_mem_online.scala 215:26]
    end else begin
      outResult <= _GEN_476;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & _T_429 & ~_T_2 & _T_431 & ~reset) begin
          $fwrite(32'h80000002,"debug, set buffer to output buffer(%d), counter = %d\n",_outResult_T_1,counter); // @[lut_mem_online.scala 263:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_481 & _T_436 & _T_435) begin
          $fwrite(32'h80000002,"debug, state transition 1: %d\n",i); // @[lut_mem_online.scala 277:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_481 & ~_T_436 & _T_441 & _T_435) begin
          $fwrite(32'h80000002,"debug, state transition 2: %d\n",i); // @[lut_mem_online.scala 292:21]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
