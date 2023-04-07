circuit RegularFuzzification :
  module Comparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 37:20]
    else :
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 45:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 37:20]
    else :
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 45:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 37:20]
    else :
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 45:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 37:20]
    else :
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 45:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module MultipleComparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip inputs : UInt<7>[5], result : UInt<7>}

    wire maxMinOutput : UInt<7>
    maxMinOutput <= UInt<7>("h0")
    reg regMinMaxResultVec : { minMaxResult : UInt<7>, minMaxIndex : UInt<3>}[5], clock with :
      reset => (UInt<1>("h0"), regMinMaxResultVec) @[multiple_comparator.scala 113:31]
    maxMinOutput <= regMinMaxResultVec[3].minMaxIndex @[multiple_comparator.scala 123:18]
    when io.start : @[multiple_comparator.scala 130:18]
      inst comparatorModule of Comparator @[comparator.scala 121:34]
      comparatorModule.clock <= clock
      comparatorModule.reset <= reset
      wire result : UInt<7> @[comparator.scala 123:22]
      wire resultIndex : UInt<7> @[comparator.scala 124:27]
      wire maxMinOutput_1 : UInt<1> @[comparator.scala 126:28]
      comparatorModule.io.in1 <= io.inputs[0] @[comparator.scala 131:29]
      comparatorModule.io.in2 <= io.inputs[1] @[comparator.scala 132:29]
      comparatorModule.io.start <= io.start @[comparator.scala 134:31]
      maxMinOutput_1 <= comparatorModule.io.maxMin @[comparator.scala 145:18]
      node selectedInput_0 = bits(maxMinOutput_1, 0, 0) @[comparator.scala 150:38]
      node _T = eq(selectedInput_0, UInt<1>("h0")) @[comparator.scala 155:27]
      when _T : @[comparator.scala 155:40]
        result <= io.inputs[0] @[comparator.scala 156:14]
        resultIndex <= UInt<1>("h0") @[comparator.scala 157:19]
      else :
        result <= io.inputs[1] @[comparator.scala 159:14]
        resultIndex <= UInt<1>("h1") @[comparator.scala 160:19]
      regMinMaxResultVec[0].minMaxResult <= result @[multiple_comparator.scala 169:46]
      regMinMaxResultVec[0].minMaxIndex <= resultIndex @[multiple_comparator.scala 170:45]
      inst comparatorModule_1 of Comparator_1 @[comparator.scala 121:34]
      comparatorModule_1.clock <= clock
      comparatorModule_1.reset <= reset
      wire result_1 : UInt<7> @[comparator.scala 123:22]
      wire resultIndex_1 : UInt<7> @[comparator.scala 124:27]
      wire maxMinOutput_2 : UInt<1> @[comparator.scala 126:28]
      comparatorModule_1.io.in1 <= io.inputs[2] @[comparator.scala 131:29]
      comparatorModule_1.io.in2 <= io.inputs[3] @[comparator.scala 132:29]
      comparatorModule_1.io.start <= io.start @[comparator.scala 134:31]
      maxMinOutput_2 <= comparatorModule_1.io.maxMin @[comparator.scala 145:18]
      node selectedInput_0_1 = bits(maxMinOutput_2, 0, 0) @[comparator.scala 150:38]
      node _T_1 = eq(selectedInput_0_1, UInt<1>("h0")) @[comparator.scala 155:27]
      when _T_1 : @[comparator.scala 155:40]
        result_1 <= io.inputs[2] @[comparator.scala 156:14]
        resultIndex_1 <= UInt<2>("h2") @[comparator.scala 157:19]
      else :
        result_1 <= io.inputs[3] @[comparator.scala 159:14]
        resultIndex_1 <= UInt<2>("h3") @[comparator.scala 160:19]
      regMinMaxResultVec[1].minMaxResult <= result_1 @[multiple_comparator.scala 169:46]
      regMinMaxResultVec[1].minMaxIndex <= resultIndex_1 @[multiple_comparator.scala 170:45]
      inst comparatorModule_2 of Comparator_2 @[comparator.scala 121:34]
      comparatorModule_2.clock <= clock
      comparatorModule_2.reset <= reset
      wire result_2 : UInt<7> @[comparator.scala 123:22]
      wire resultIndex_2 : UInt<7> @[comparator.scala 124:27]
      wire maxMinOutput_3 : UInt<1> @[comparator.scala 126:28]
      comparatorModule_2.io.in1 <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 131:29]
      comparatorModule_2.io.in2 <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 132:29]
      comparatorModule_2.io.start <= io.start @[comparator.scala 134:31]
      maxMinOutput_3 <= comparatorModule_2.io.maxMin @[comparator.scala 145:18]
      node selectedInput_0_2 = bits(maxMinOutput_3, 0, 0) @[comparator.scala 150:38]
      node _T_2 = eq(selectedInput_0_2, UInt<1>("h0")) @[comparator.scala 155:27]
      when _T_2 : @[comparator.scala 155:40]
        result_2 <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 156:14]
        resultIndex_2 <= regMinMaxResultVec[0].minMaxIndex @[comparator.scala 157:19]
      else :
        result_2 <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 159:14]
        resultIndex_2 <= regMinMaxResultVec[1].minMaxIndex @[comparator.scala 160:19]
      regMinMaxResultVec[2].minMaxResult <= result_2 @[multiple_comparator.scala 248:48]
      regMinMaxResultVec[2].minMaxIndex <= resultIndex_2 @[multiple_comparator.scala 249:47]
      inst comparatorModule_3 of Comparator_3 @[comparator.scala 121:34]
      comparatorModule_3.clock <= clock
      comparatorModule_3.reset <= reset
      wire result_3 : UInt<7> @[comparator.scala 123:22]
      wire resultIndex_3 : UInt<7> @[comparator.scala 124:27]
      wire maxMinOutput_4 : UInt<1> @[comparator.scala 126:28]
      comparatorModule_3.io.in1 <= regMinMaxResultVec[2].minMaxResult @[comparator.scala 131:29]
      comparatorModule_3.io.in2 <= io.inputs[4] @[comparator.scala 132:29]
      comparatorModule_3.io.start <= io.start @[comparator.scala 134:31]
      maxMinOutput_4 <= comparatorModule_3.io.maxMin @[comparator.scala 145:18]
      node selectedInput_0_3 = bits(maxMinOutput_4, 0, 0) @[comparator.scala 150:38]
      node _T_3 = eq(selectedInput_0_3, UInt<1>("h0")) @[comparator.scala 155:27]
      when _T_3 : @[comparator.scala 155:40]
        result_3 <= regMinMaxResultVec[2].minMaxResult @[comparator.scala 156:14]
        resultIndex_3 <= regMinMaxResultVec[2].minMaxIndex @[comparator.scala 157:19]
      else :
        result_3 <= io.inputs[4] @[comparator.scala 159:14]
        resultIndex_3 <= UInt<3>("h4") @[comparator.scala 160:19]
      regMinMaxResultVec[3].minMaxResult <= result_3 @[multiple_comparator.scala 213:52]
      regMinMaxResultVec[3].minMaxIndex <= resultIndex_3 @[multiple_comparator.scala 214:51]
    else :
      skip
    io.result <= maxMinOutput @[multiple_comparator.scala 274:13]

  module RegularFuzzification :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip start : UInt<1>, flip regMaxVec : UInt<7>[5], outResultValid : UInt<1>, outResult : UInt<7>}

    when io.start : @[regular_fuzzification.scala 102:18]
      wire finalConnVectorForIdxBasedMax : UInt<7>[5] @[regular_fuzzification.scala 109:11]
      finalConnVectorForIdxBasedMax[0] <= io.regMaxVec[0] @[regular_fuzzification.scala 116:40]
      finalConnVectorForIdxBasedMax[1] <= io.regMaxVec[1] @[regular_fuzzification.scala 116:40]
      finalConnVectorForIdxBasedMax[2] <= io.regMaxVec[2] @[regular_fuzzification.scala 116:40]
      finalConnVectorForIdxBasedMax[3] <= io.regMaxVec[3] @[regular_fuzzification.scala 116:40]
      finalConnVectorForIdxBasedMax[4] <= io.regMaxVec[4] @[regular_fuzzification.scala 116:40]
      inst io_outResult_comparatorModule of MultipleComparator @[multiple_comparator.scala 293:34]
      io_outResult_comparatorModule.clock <= clock
      io_outResult_comparatorModule.reset <= reset
      wire io_outResult_result : UInt<7> @[multiple_comparator.scala 304:22]
      io_outResult_comparatorModule.io.start <= io.start @[multiple_comparator.scala 309:31]
      io_outResult_comparatorModule.io.inputs[0] <= finalConnVectorForIdxBasedMax[0] @[multiple_comparator.scala 310:32]
      io_outResult_comparatorModule.io.inputs[1] <= finalConnVectorForIdxBasedMax[1] @[multiple_comparator.scala 310:32]
      io_outResult_comparatorModule.io.inputs[2] <= finalConnVectorForIdxBasedMax[2] @[multiple_comparator.scala 310:32]
      io_outResult_comparatorModule.io.inputs[3] <= finalConnVectorForIdxBasedMax[3] @[multiple_comparator.scala 310:32]
      io_outResult_comparatorModule.io.inputs[4] <= finalConnVectorForIdxBasedMax[4] @[multiple_comparator.scala 310:32]
      io_outResult_result <= io_outResult_comparatorModule.io.result @[multiple_comparator.scala 312:12]
      io.outResult <= io_outResult_result @[regular_fuzzification.scala 119:18]
      io.outResultValid <= UInt<1>("h0") @[regular_fuzzification.scala 138:23]
    else :
      io.outResult <= UInt<1>("h0") @[regular_fuzzification.scala 145:18]
      io.outResultValid <= UInt<1>("h0") @[regular_fuzzification.scala 146:23]

