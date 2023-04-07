circuit RegularFuzzification :
  module Comparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_24 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, maxMin : UInt<1>}

    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = geq(io.in1, io.in2) @[comparator.scala 34:15]
    when _T : @[comparator.scala 34:26]
      maxMinOutput <= UInt<1>("h1") @[comparator.scala 39:20]
    else :
      maxMinOutput <= UInt<1>("h0") @[comparator.scala 47:20]
    io.maxMin <= maxMinOutput @[comparator.scala 54:13]

  module Comparator_25 :
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

  module Comparator_26 :
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

  module Comparator_27 :
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
    output io : { flip start : UInt<1>, flip inputs : UInt<7>[4], result : UInt<7>}

    wire maxMinOutput : UInt<7>
    maxMinOutput <= UInt<7>("h0")
    reg regMinMaxResultVec : { minMaxResult : UInt<7>, minMaxIndex : UInt<0>}[4], clock with :
      reset => (UInt<1>("h0"), regMinMaxResultVec) @[multiple_comparator.scala 113:31]
    maxMinOutput <= regMinMaxResultVec[2].minMaxResult @[multiple_comparator.scala 121:18]
    when io.start : @[multiple_comparator.scala 130:18]
      inst regMinMaxResultVec_0_minMaxResult_comparatorModule of Comparator_25 @[comparator.scala 69:34]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_0_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_0_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_0_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.in1 <= io.inputs[0] @[comparator.scala 76:29]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.in2 <= io.inputs[1] @[comparator.scala 77:29]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_0_minMaxResult_maxMinOutput <= regMinMaxResultVec_0_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_0_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_0_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_0_minMaxResult_T = eq(regMinMaxResultVec_0_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_0_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_0_minMaxResult_result <= io.inputs[0] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_0_minMaxResult_result <= io.inputs[1] @[comparator.scala 103:14]
      regMinMaxResultVec[0].minMaxResult <= regMinMaxResultVec_0_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_1_minMaxResult_comparatorModule of Comparator_26 @[comparator.scala 69:34]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_1_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_1_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_1_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.in1 <= io.inputs[2] @[comparator.scala 76:29]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.in2 <= io.inputs[3] @[comparator.scala 77:29]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_1_minMaxResult_maxMinOutput <= regMinMaxResultVec_1_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_1_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_1_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_1_minMaxResult_T = eq(regMinMaxResultVec_1_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_1_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_1_minMaxResult_result <= io.inputs[2] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_1_minMaxResult_result <= io.inputs[3] @[comparator.scala 103:14]
      regMinMaxResultVec[1].minMaxResult <= regMinMaxResultVec_1_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_2_minMaxResult_comparatorModule of Comparator_27 @[comparator.scala 69:34]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_2_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_2_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_2_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.in1 <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 76:29]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.in2 <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 77:29]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_2_minMaxResult_maxMinOutput <= regMinMaxResultVec_2_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_2_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_2_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_2_minMaxResult_T = eq(regMinMaxResultVec_2_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_2_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_2_minMaxResult_result <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_2_minMaxResult_result <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 103:14]
      regMinMaxResultVec[2].minMaxResult <= regMinMaxResultVec_2_minMaxResult_result @[multiple_comparator.scala 225:48]
    else :
      skip
    io.result <= maxMinOutput @[multiple_comparator.scala 274:13]

  module Comparator_28 :
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

  module Comparator_29 :
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

  module Comparator_30 :
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

  module Comparator_31 :
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

  module Comparator_32 :
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

  module MultipleComparator_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip inputs : UInt<7>[6], result : UInt<7>}

    wire maxMinOutput : UInt<7>
    maxMinOutput <= UInt<7>("h0")
    reg regMinMaxResultVec : { minMaxResult : UInt<7>, minMaxIndex : UInt<0>}[6], clock with :
      reset => (UInt<1>("h0"), regMinMaxResultVec) @[multiple_comparator.scala 113:31]
    maxMinOutput <= regMinMaxResultVec[4].minMaxResult @[multiple_comparator.scala 121:18]
    when io.start : @[multiple_comparator.scala 130:18]
      inst regMinMaxResultVec_0_minMaxResult_comparatorModule of Comparator_28 @[comparator.scala 69:34]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_0_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_0_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_0_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.in1 <= io.inputs[0] @[comparator.scala 76:29]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.in2 <= io.inputs[1] @[comparator.scala 77:29]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_0_minMaxResult_maxMinOutput <= regMinMaxResultVec_0_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_0_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_0_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_0_minMaxResult_T = eq(regMinMaxResultVec_0_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_0_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_0_minMaxResult_result <= io.inputs[0] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_0_minMaxResult_result <= io.inputs[1] @[comparator.scala 103:14]
      regMinMaxResultVec[0].minMaxResult <= regMinMaxResultVec_0_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_1_minMaxResult_comparatorModule of Comparator_29 @[comparator.scala 69:34]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_1_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_1_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_1_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.in1 <= io.inputs[2] @[comparator.scala 76:29]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.in2 <= io.inputs[3] @[comparator.scala 77:29]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_1_minMaxResult_maxMinOutput <= regMinMaxResultVec_1_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_1_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_1_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_1_minMaxResult_T = eq(regMinMaxResultVec_1_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_1_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_1_minMaxResult_result <= io.inputs[2] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_1_minMaxResult_result <= io.inputs[3] @[comparator.scala 103:14]
      regMinMaxResultVec[1].minMaxResult <= regMinMaxResultVec_1_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_2_minMaxResult_comparatorModule of Comparator_30 @[comparator.scala 69:34]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_2_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_2_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_2_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.in1 <= io.inputs[4] @[comparator.scala 76:29]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.in2 <= io.inputs[5] @[comparator.scala 77:29]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_2_minMaxResult_maxMinOutput <= regMinMaxResultVec_2_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_2_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_2_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_2_minMaxResult_T = eq(regMinMaxResultVec_2_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_2_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_2_minMaxResult_result <= io.inputs[4] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_2_minMaxResult_result <= io.inputs[5] @[comparator.scala 103:14]
      regMinMaxResultVec[2].minMaxResult <= regMinMaxResultVec_2_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_3_minMaxResult_comparatorModule of Comparator_31 @[comparator.scala 69:34]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_3_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_3_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_3_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.io.in1 <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 76:29]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.io.in2 <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 77:29]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_3_minMaxResult_maxMinOutput <= regMinMaxResultVec_3_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_3_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_3_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_3_minMaxResult_T = eq(regMinMaxResultVec_3_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_3_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_3_minMaxResult_result <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_3_minMaxResult_result <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 103:14]
      regMinMaxResultVec[3].minMaxResult <= regMinMaxResultVec_3_minMaxResult_result @[multiple_comparator.scala 225:48]
      inst regMinMaxResultVec_4_minMaxResult_comparatorModule of Comparator_32 @[comparator.scala 69:34]
      regMinMaxResultVec_4_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_4_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_4_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_4_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_4_minMaxResult_comparatorModule.io.in1 <= regMinMaxResultVec[2].minMaxResult @[comparator.scala 76:29]
      regMinMaxResultVec_4_minMaxResult_comparatorModule.io.in2 <= regMinMaxResultVec[3].minMaxResult @[comparator.scala 77:29]
      regMinMaxResultVec_4_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_4_minMaxResult_maxMinOutput <= regMinMaxResultVec_4_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_4_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_4_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_4_minMaxResult_T = eq(regMinMaxResultVec_4_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_4_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_4_minMaxResult_result <= regMinMaxResultVec[2].minMaxResult @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_4_minMaxResult_result <= regMinMaxResultVec[3].minMaxResult @[comparator.scala 103:14]
      regMinMaxResultVec[4].minMaxResult <= regMinMaxResultVec_4_minMaxResult_result @[multiple_comparator.scala 225:48]
    else :
      skip
    io.result <= maxMinOutput @[multiple_comparator.scala 274:13]

  module Comparator_33 :
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

  module Comparator_34 :
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

  module Comparator_35 :
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

  module MultipleComparator_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip inputs : UInt<7>[4], result : UInt<7>}

    wire maxMinOutput : UInt<7>
    maxMinOutput <= UInt<7>("h0")
    reg regMinMaxResultVec : { minMaxResult : UInt<7>, minMaxIndex : UInt<0>}[4], clock with :
      reset => (UInt<1>("h0"), regMinMaxResultVec) @[multiple_comparator.scala 113:31]
    maxMinOutput <= regMinMaxResultVec[2].minMaxResult @[multiple_comparator.scala 121:18]
    when io.start : @[multiple_comparator.scala 130:18]
      inst regMinMaxResultVec_0_minMaxResult_comparatorModule of Comparator_33 @[comparator.scala 69:34]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_0_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_0_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_0_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.in1 <= io.inputs[0] @[comparator.scala 76:29]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.in2 <= io.inputs[1] @[comparator.scala 77:29]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_0_minMaxResult_maxMinOutput <= regMinMaxResultVec_0_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_0_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_0_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_0_minMaxResult_T = eq(regMinMaxResultVec_0_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_0_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_0_minMaxResult_result <= io.inputs[0] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_0_minMaxResult_result <= io.inputs[1] @[comparator.scala 103:14]
      regMinMaxResultVec[0].minMaxResult <= regMinMaxResultVec_0_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_1_minMaxResult_comparatorModule of Comparator_34 @[comparator.scala 69:34]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_1_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_1_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_1_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.in1 <= io.inputs[2] @[comparator.scala 76:29]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.in2 <= io.inputs[3] @[comparator.scala 77:29]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_1_minMaxResult_maxMinOutput <= regMinMaxResultVec_1_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_1_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_1_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_1_minMaxResult_T = eq(regMinMaxResultVec_1_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_1_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_1_minMaxResult_result <= io.inputs[2] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_1_minMaxResult_result <= io.inputs[3] @[comparator.scala 103:14]
      regMinMaxResultVec[1].minMaxResult <= regMinMaxResultVec_1_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_2_minMaxResult_comparatorModule of Comparator_35 @[comparator.scala 69:34]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_2_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_2_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_2_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.in1 <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 76:29]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.in2 <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 77:29]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_2_minMaxResult_maxMinOutput <= regMinMaxResultVec_2_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_2_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_2_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_2_minMaxResult_T = eq(regMinMaxResultVec_2_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_2_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_2_minMaxResult_result <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_2_minMaxResult_result <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 103:14]
      regMinMaxResultVec[2].minMaxResult <= regMinMaxResultVec_2_minMaxResult_result @[multiple_comparator.scala 225:48]
    else :
      skip
    io.result <= maxMinOutput @[multiple_comparator.scala 274:13]

  module Comparator_36 :
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

  module Comparator_37 :
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

  module Comparator_38 :
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

  module Comparator_39 :
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

  module Comparator_40 :
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

  module MultipleComparator_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip inputs : UInt<7>[6], result : UInt<7>}

    wire maxMinOutput : UInt<7>
    maxMinOutput <= UInt<7>("h0")
    reg regMinMaxResultVec : { minMaxResult : UInt<7>, minMaxIndex : UInt<0>}[6], clock with :
      reset => (UInt<1>("h0"), regMinMaxResultVec) @[multiple_comparator.scala 113:31]
    maxMinOutput <= regMinMaxResultVec[4].minMaxResult @[multiple_comparator.scala 121:18]
    when io.start : @[multiple_comparator.scala 130:18]
      inst regMinMaxResultVec_0_minMaxResult_comparatorModule of Comparator_36 @[comparator.scala 69:34]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_0_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_0_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_0_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.in1 <= io.inputs[0] @[comparator.scala 76:29]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.in2 <= io.inputs[1] @[comparator.scala 77:29]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_0_minMaxResult_maxMinOutput <= regMinMaxResultVec_0_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_0_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_0_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_0_minMaxResult_T = eq(regMinMaxResultVec_0_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_0_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_0_minMaxResult_result <= io.inputs[0] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_0_minMaxResult_result <= io.inputs[1] @[comparator.scala 103:14]
      regMinMaxResultVec[0].minMaxResult <= regMinMaxResultVec_0_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_1_minMaxResult_comparatorModule of Comparator_37 @[comparator.scala 69:34]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_1_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_1_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_1_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.in1 <= io.inputs[2] @[comparator.scala 76:29]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.in2 <= io.inputs[3] @[comparator.scala 77:29]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_1_minMaxResult_maxMinOutput <= regMinMaxResultVec_1_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_1_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_1_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_1_minMaxResult_T = eq(regMinMaxResultVec_1_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_1_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_1_minMaxResult_result <= io.inputs[2] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_1_minMaxResult_result <= io.inputs[3] @[comparator.scala 103:14]
      regMinMaxResultVec[1].minMaxResult <= regMinMaxResultVec_1_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_2_minMaxResult_comparatorModule of Comparator_38 @[comparator.scala 69:34]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_2_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_2_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_2_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.in1 <= io.inputs[4] @[comparator.scala 76:29]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.in2 <= io.inputs[5] @[comparator.scala 77:29]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_2_minMaxResult_maxMinOutput <= regMinMaxResultVec_2_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_2_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_2_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_2_minMaxResult_T = eq(regMinMaxResultVec_2_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_2_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_2_minMaxResult_result <= io.inputs[4] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_2_minMaxResult_result <= io.inputs[5] @[comparator.scala 103:14]
      regMinMaxResultVec[2].minMaxResult <= regMinMaxResultVec_2_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_3_minMaxResult_comparatorModule of Comparator_39 @[comparator.scala 69:34]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_3_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_3_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_3_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.io.in1 <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 76:29]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.io.in2 <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 77:29]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_3_minMaxResult_maxMinOutput <= regMinMaxResultVec_3_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_3_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_3_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_3_minMaxResult_T = eq(regMinMaxResultVec_3_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_3_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_3_minMaxResult_result <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_3_minMaxResult_result <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 103:14]
      regMinMaxResultVec[3].minMaxResult <= regMinMaxResultVec_3_minMaxResult_result @[multiple_comparator.scala 225:48]
      inst regMinMaxResultVec_4_minMaxResult_comparatorModule of Comparator_40 @[comparator.scala 69:34]
      regMinMaxResultVec_4_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_4_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_4_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_4_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_4_minMaxResult_comparatorModule.io.in1 <= regMinMaxResultVec[2].minMaxResult @[comparator.scala 76:29]
      regMinMaxResultVec_4_minMaxResult_comparatorModule.io.in2 <= regMinMaxResultVec[3].minMaxResult @[comparator.scala 77:29]
      regMinMaxResultVec_4_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_4_minMaxResult_maxMinOutput <= regMinMaxResultVec_4_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_4_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_4_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_4_minMaxResult_T = eq(regMinMaxResultVec_4_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_4_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_4_minMaxResult_result <= regMinMaxResultVec[2].minMaxResult @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_4_minMaxResult_result <= regMinMaxResultVec[3].minMaxResult @[comparator.scala 103:14]
      regMinMaxResultVec[4].minMaxResult <= regMinMaxResultVec_4_minMaxResult_result @[multiple_comparator.scala 225:48]
    else :
      skip
    io.result <= maxMinOutput @[multiple_comparator.scala 274:13]

  module Comparator_41 :
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

  module Comparator_42 :
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

  module Comparator_43 :
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

  module Comparator_44 :
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

  module MultipleComparator_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip inputs : UInt<7>[5], result : UInt<7>}

    wire maxMinOutput : UInt<7>
    maxMinOutput <= UInt<7>("h0")
    reg regMinMaxResultVec : { minMaxResult : UInt<7>, minMaxIndex : UInt<0>}[5], clock with :
      reset => (UInt<1>("h0"), regMinMaxResultVec) @[multiple_comparator.scala 113:31]
    maxMinOutput <= regMinMaxResultVec[3].minMaxResult @[multiple_comparator.scala 121:18]
    when io.start : @[multiple_comparator.scala 130:18]
      inst regMinMaxResultVec_0_minMaxResult_comparatorModule of Comparator_41 @[comparator.scala 69:34]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_0_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_0_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_0_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.in1 <= io.inputs[0] @[comparator.scala 76:29]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.in2 <= io.inputs[1] @[comparator.scala 77:29]
      regMinMaxResultVec_0_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_0_minMaxResult_maxMinOutput <= regMinMaxResultVec_0_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_0_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_0_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_0_minMaxResult_T = eq(regMinMaxResultVec_0_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_0_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_0_minMaxResult_result <= io.inputs[0] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_0_minMaxResult_result <= io.inputs[1] @[comparator.scala 103:14]
      regMinMaxResultVec[0].minMaxResult <= regMinMaxResultVec_0_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_1_minMaxResult_comparatorModule of Comparator_42 @[comparator.scala 69:34]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_1_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_1_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_1_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.in1 <= io.inputs[2] @[comparator.scala 76:29]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.in2 <= io.inputs[3] @[comparator.scala 77:29]
      regMinMaxResultVec_1_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_1_minMaxResult_maxMinOutput <= regMinMaxResultVec_1_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_1_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_1_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_1_minMaxResult_T = eq(regMinMaxResultVec_1_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_1_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_1_minMaxResult_result <= io.inputs[2] @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_1_minMaxResult_result <= io.inputs[3] @[comparator.scala 103:14]
      regMinMaxResultVec[1].minMaxResult <= regMinMaxResultVec_1_minMaxResult_result @[multiple_comparator.scala 147:46]
      inst regMinMaxResultVec_2_minMaxResult_comparatorModule of Comparator_43 @[comparator.scala 69:34]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_2_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_2_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_2_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.in1 <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 76:29]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.in2 <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 77:29]
      regMinMaxResultVec_2_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_2_minMaxResult_maxMinOutput <= regMinMaxResultVec_2_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_2_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_2_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_2_minMaxResult_T = eq(regMinMaxResultVec_2_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_2_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_2_minMaxResult_result <= regMinMaxResultVec[0].minMaxResult @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_2_minMaxResult_result <= regMinMaxResultVec[1].minMaxResult @[comparator.scala 103:14]
      regMinMaxResultVec[2].minMaxResult <= regMinMaxResultVec_2_minMaxResult_result @[multiple_comparator.scala 225:48]
      inst regMinMaxResultVec_3_minMaxResult_comparatorModule of Comparator_44 @[comparator.scala 69:34]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.clock <= clock
      regMinMaxResultVec_3_minMaxResult_comparatorModule.reset <= reset
      wire regMinMaxResultVec_3_minMaxResult_result : UInt<7> @[comparator.scala 70:22]
      wire regMinMaxResultVec_3_minMaxResult_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.io.in1 <= regMinMaxResultVec[2].minMaxResult @[comparator.scala 76:29]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.io.in2 <= io.inputs[4] @[comparator.scala 77:29]
      regMinMaxResultVec_3_minMaxResult_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinMaxResultVec_3_minMaxResult_maxMinOutput <= regMinMaxResultVec_3_minMaxResult_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinMaxResultVec_3_minMaxResult_selectedInput_0 = bits(regMinMaxResultVec_3_minMaxResult_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinMaxResultVec_3_minMaxResult_T = eq(regMinMaxResultVec_3_minMaxResult_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinMaxResultVec_3_minMaxResult_T : @[comparator.scala 100:40]
        regMinMaxResultVec_3_minMaxResult_result <= regMinMaxResultVec[2].minMaxResult @[comparator.scala 101:14]
      else :
        regMinMaxResultVec_3_minMaxResult_result <= io.inputs[4] @[comparator.scala 103:14]
      regMinMaxResultVec[3].minMaxResult <= regMinMaxResultVec_3_minMaxResult_result @[multiple_comparator.scala 190:52]
    else :
      skip
    io.result <= maxMinOutput @[multiple_comparator.scala 274:13]

  module Comparator_45 :
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

  module Comparator_46 :
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

  module Comparator_47 :
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

  module Comparator_48 :
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

  module MultipleComparator_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip inputs : UInt<7>[5], result : UInt<7>}

    wire maxMinOutput : UInt<7>
    maxMinOutput <= UInt<7>("h0")
    reg regMinMaxResultVec : { minMaxResult : UInt<7>, minMaxIndex : UInt<3>}[5], clock with :
      reset => (UInt<1>("h0"), regMinMaxResultVec) @[multiple_comparator.scala 113:31]
    maxMinOutput <= regMinMaxResultVec[3].minMaxIndex @[multiple_comparator.scala 123:18]
    when io.start : @[multiple_comparator.scala 130:18]
      inst comparatorModule of Comparator_45 @[comparator.scala 121:34]
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
      inst comparatorModule_1 of Comparator_46 @[comparator.scala 121:34]
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
      inst comparatorModule_2 of Comparator_47 @[comparator.scala 121:34]
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
      inst comparatorModule_3 of Comparator_48 @[comparator.scala 121:34]
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

  module RegularFuzzificationInput :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip inputs : UInt<10>[2], flip lutConnections : UInt<7>[10], outResultValid : UInt<1>, outResult : UInt<7>}

    reg regLutResultsVec : UInt<7>[10], clock with :
      reset => (UInt<1>("h0"), regLutResultsVec) @[regular_fuzzification.scala 132:29]
    wire outResultValid : UInt<1>
    outResultValid <= UInt<1>("h0")
    wire outResult : UInt<7>
    outResult <= UInt<7>("h0")
    reg regMinVec : UInt<7>[25], clock with :
      reset => (UInt<1>("h0"), regMinVec) @[regular_fuzzification.scala 151:22]
    reg regMaxVec : UInt<7>[5], clock with :
      reset => (UInt<1>("h0"), regMaxVec) @[regular_fuzzification.scala 166:22]
    regLutResultsVec <= io.lutConnections @[regular_fuzzification.scala 172:22]
    node _T = eq(io.start, UInt<1>("h1")) @[regular_fuzzification.scala 178:17]
    when _T : @[regular_fuzzification.scala 178:29]
      inst regMinVec_0_comparatorModule of Comparator @[comparator.scala 69:34]
      regMinVec_0_comparatorModule.clock <= clock
      regMinVec_0_comparatorModule.reset <= reset
      wire regMinVec_0_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_0_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_0_comparatorModule.io.in1 <= regLutResultsVec[0] @[comparator.scala 76:29]
      regMinVec_0_comparatorModule.io.in2 <= regLutResultsVec[5] @[comparator.scala 77:29]
      regMinVec_0_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_0_maxMinOutput <= regMinVec_0_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_0_selectedInput_0 = bits(regMinVec_0_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_0_T = eq(regMinVec_0_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_0_T : @[comparator.scala 100:40]
        regMinVec_0_result <= regLutResultsVec[0] @[comparator.scala 101:14]
      else :
        regMinVec_0_result <= regLutResultsVec[5] @[comparator.scala 103:14]
      regMinVec[0] <= regMinVec_0_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_1_comparatorModule of Comparator_1 @[comparator.scala 69:34]
      regMinVec_1_comparatorModule.clock <= clock
      regMinVec_1_comparatorModule.reset <= reset
      wire regMinVec_1_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_1_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_1_comparatorModule.io.in1 <= regLutResultsVec[0] @[comparator.scala 76:29]
      regMinVec_1_comparatorModule.io.in2 <= regLutResultsVec[6] @[comparator.scala 77:29]
      regMinVec_1_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_1_maxMinOutput <= regMinVec_1_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_1_selectedInput_0 = bits(regMinVec_1_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_1_T = eq(regMinVec_1_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_1_T : @[comparator.scala 100:40]
        regMinVec_1_result <= regLutResultsVec[0] @[comparator.scala 101:14]
      else :
        regMinVec_1_result <= regLutResultsVec[6] @[comparator.scala 103:14]
      regMinVec[1] <= regMinVec_1_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_2_comparatorModule of Comparator_2 @[comparator.scala 69:34]
      regMinVec_2_comparatorModule.clock <= clock
      regMinVec_2_comparatorModule.reset <= reset
      wire regMinVec_2_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_2_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_2_comparatorModule.io.in1 <= regLutResultsVec[0] @[comparator.scala 76:29]
      regMinVec_2_comparatorModule.io.in2 <= regLutResultsVec[7] @[comparator.scala 77:29]
      regMinVec_2_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_2_maxMinOutput <= regMinVec_2_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_2_selectedInput_0 = bits(regMinVec_2_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_2_T = eq(regMinVec_2_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_2_T : @[comparator.scala 100:40]
        regMinVec_2_result <= regLutResultsVec[0] @[comparator.scala 101:14]
      else :
        regMinVec_2_result <= regLutResultsVec[7] @[comparator.scala 103:14]
      regMinVec[2] <= regMinVec_2_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_3_comparatorModule of Comparator_3 @[comparator.scala 69:34]
      regMinVec_3_comparatorModule.clock <= clock
      regMinVec_3_comparatorModule.reset <= reset
      wire regMinVec_3_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_3_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_3_comparatorModule.io.in1 <= regLutResultsVec[0] @[comparator.scala 76:29]
      regMinVec_3_comparatorModule.io.in2 <= regLutResultsVec[8] @[comparator.scala 77:29]
      regMinVec_3_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_3_maxMinOutput <= regMinVec_3_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_3_selectedInput_0 = bits(regMinVec_3_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_3_T = eq(regMinVec_3_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_3_T : @[comparator.scala 100:40]
        regMinVec_3_result <= regLutResultsVec[0] @[comparator.scala 101:14]
      else :
        regMinVec_3_result <= regLutResultsVec[8] @[comparator.scala 103:14]
      regMinVec[3] <= regMinVec_3_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_4_comparatorModule of Comparator_4 @[comparator.scala 69:34]
      regMinVec_4_comparatorModule.clock <= clock
      regMinVec_4_comparatorModule.reset <= reset
      wire regMinVec_4_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_4_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_4_comparatorModule.io.in1 <= regLutResultsVec[0] @[comparator.scala 76:29]
      regMinVec_4_comparatorModule.io.in2 <= regLutResultsVec[9] @[comparator.scala 77:29]
      regMinVec_4_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_4_maxMinOutput <= regMinVec_4_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_4_selectedInput_0 = bits(regMinVec_4_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_4_T = eq(regMinVec_4_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_4_T : @[comparator.scala 100:40]
        regMinVec_4_result <= regLutResultsVec[0] @[comparator.scala 101:14]
      else :
        regMinVec_4_result <= regLutResultsVec[9] @[comparator.scala 103:14]
      regMinVec[4] <= regMinVec_4_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_5_comparatorModule of Comparator_5 @[comparator.scala 69:34]
      regMinVec_5_comparatorModule.clock <= clock
      regMinVec_5_comparatorModule.reset <= reset
      wire regMinVec_5_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_5_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_5_comparatorModule.io.in1 <= regLutResultsVec[1] @[comparator.scala 76:29]
      regMinVec_5_comparatorModule.io.in2 <= regLutResultsVec[5] @[comparator.scala 77:29]
      regMinVec_5_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_5_maxMinOutput <= regMinVec_5_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_5_selectedInput_0 = bits(regMinVec_5_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_5_T = eq(regMinVec_5_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_5_T : @[comparator.scala 100:40]
        regMinVec_5_result <= regLutResultsVec[1] @[comparator.scala 101:14]
      else :
        regMinVec_5_result <= regLutResultsVec[5] @[comparator.scala 103:14]
      regMinVec[5] <= regMinVec_5_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_6_comparatorModule of Comparator_6 @[comparator.scala 69:34]
      regMinVec_6_comparatorModule.clock <= clock
      regMinVec_6_comparatorModule.reset <= reset
      wire regMinVec_6_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_6_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_6_comparatorModule.io.in1 <= regLutResultsVec[1] @[comparator.scala 76:29]
      regMinVec_6_comparatorModule.io.in2 <= regLutResultsVec[6] @[comparator.scala 77:29]
      regMinVec_6_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_6_maxMinOutput <= regMinVec_6_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_6_selectedInput_0 = bits(regMinVec_6_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_6_T = eq(regMinVec_6_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_6_T : @[comparator.scala 100:40]
        regMinVec_6_result <= regLutResultsVec[1] @[comparator.scala 101:14]
      else :
        regMinVec_6_result <= regLutResultsVec[6] @[comparator.scala 103:14]
      regMinVec[6] <= regMinVec_6_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_7_comparatorModule of Comparator_7 @[comparator.scala 69:34]
      regMinVec_7_comparatorModule.clock <= clock
      regMinVec_7_comparatorModule.reset <= reset
      wire regMinVec_7_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_7_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_7_comparatorModule.io.in1 <= regLutResultsVec[1] @[comparator.scala 76:29]
      regMinVec_7_comparatorModule.io.in2 <= regLutResultsVec[7] @[comparator.scala 77:29]
      regMinVec_7_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_7_maxMinOutput <= regMinVec_7_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_7_selectedInput_0 = bits(regMinVec_7_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_7_T = eq(regMinVec_7_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_7_T : @[comparator.scala 100:40]
        regMinVec_7_result <= regLutResultsVec[1] @[comparator.scala 101:14]
      else :
        regMinVec_7_result <= regLutResultsVec[7] @[comparator.scala 103:14]
      regMinVec[7] <= regMinVec_7_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_8_comparatorModule of Comparator_8 @[comparator.scala 69:34]
      regMinVec_8_comparatorModule.clock <= clock
      regMinVec_8_comparatorModule.reset <= reset
      wire regMinVec_8_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_8_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_8_comparatorModule.io.in1 <= regLutResultsVec[1] @[comparator.scala 76:29]
      regMinVec_8_comparatorModule.io.in2 <= regLutResultsVec[8] @[comparator.scala 77:29]
      regMinVec_8_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_8_maxMinOutput <= regMinVec_8_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_8_selectedInput_0 = bits(regMinVec_8_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_8_T = eq(regMinVec_8_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_8_T : @[comparator.scala 100:40]
        regMinVec_8_result <= regLutResultsVec[1] @[comparator.scala 101:14]
      else :
        regMinVec_8_result <= regLutResultsVec[8] @[comparator.scala 103:14]
      regMinVec[8] <= regMinVec_8_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_9_comparatorModule of Comparator_9 @[comparator.scala 69:34]
      regMinVec_9_comparatorModule.clock <= clock
      regMinVec_9_comparatorModule.reset <= reset
      wire regMinVec_9_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_9_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_9_comparatorModule.io.in1 <= regLutResultsVec[1] @[comparator.scala 76:29]
      regMinVec_9_comparatorModule.io.in2 <= regLutResultsVec[9] @[comparator.scala 77:29]
      regMinVec_9_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_9_maxMinOutput <= regMinVec_9_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_9_selectedInput_0 = bits(regMinVec_9_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_9_T = eq(regMinVec_9_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_9_T : @[comparator.scala 100:40]
        regMinVec_9_result <= regLutResultsVec[1] @[comparator.scala 101:14]
      else :
        regMinVec_9_result <= regLutResultsVec[9] @[comparator.scala 103:14]
      regMinVec[9] <= regMinVec_9_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_10_comparatorModule of Comparator_10 @[comparator.scala 69:34]
      regMinVec_10_comparatorModule.clock <= clock
      regMinVec_10_comparatorModule.reset <= reset
      wire regMinVec_10_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_10_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_10_comparatorModule.io.in1 <= regLutResultsVec[2] @[comparator.scala 76:29]
      regMinVec_10_comparatorModule.io.in2 <= regLutResultsVec[5] @[comparator.scala 77:29]
      regMinVec_10_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_10_maxMinOutput <= regMinVec_10_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_10_selectedInput_0 = bits(regMinVec_10_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_10_T = eq(regMinVec_10_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_10_T : @[comparator.scala 100:40]
        regMinVec_10_result <= regLutResultsVec[2] @[comparator.scala 101:14]
      else :
        regMinVec_10_result <= regLutResultsVec[5] @[comparator.scala 103:14]
      regMinVec[10] <= regMinVec_10_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_11_comparatorModule of Comparator_11 @[comparator.scala 69:34]
      regMinVec_11_comparatorModule.clock <= clock
      regMinVec_11_comparatorModule.reset <= reset
      wire regMinVec_11_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_11_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_11_comparatorModule.io.in1 <= regLutResultsVec[2] @[comparator.scala 76:29]
      regMinVec_11_comparatorModule.io.in2 <= regLutResultsVec[6] @[comparator.scala 77:29]
      regMinVec_11_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_11_maxMinOutput <= regMinVec_11_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_11_selectedInput_0 = bits(regMinVec_11_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_11_T = eq(regMinVec_11_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_11_T : @[comparator.scala 100:40]
        regMinVec_11_result <= regLutResultsVec[2] @[comparator.scala 101:14]
      else :
        regMinVec_11_result <= regLutResultsVec[6] @[comparator.scala 103:14]
      regMinVec[11] <= regMinVec_11_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_12_comparatorModule of Comparator_12 @[comparator.scala 69:34]
      regMinVec_12_comparatorModule.clock <= clock
      regMinVec_12_comparatorModule.reset <= reset
      wire regMinVec_12_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_12_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_12_comparatorModule.io.in1 <= regLutResultsVec[2] @[comparator.scala 76:29]
      regMinVec_12_comparatorModule.io.in2 <= regLutResultsVec[7] @[comparator.scala 77:29]
      regMinVec_12_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_12_maxMinOutput <= regMinVec_12_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_12_selectedInput_0 = bits(regMinVec_12_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_12_T = eq(regMinVec_12_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_12_T : @[comparator.scala 100:40]
        regMinVec_12_result <= regLutResultsVec[2] @[comparator.scala 101:14]
      else :
        regMinVec_12_result <= regLutResultsVec[7] @[comparator.scala 103:14]
      regMinVec[12] <= regMinVec_12_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_13_comparatorModule of Comparator_13 @[comparator.scala 69:34]
      regMinVec_13_comparatorModule.clock <= clock
      regMinVec_13_comparatorModule.reset <= reset
      wire regMinVec_13_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_13_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_13_comparatorModule.io.in1 <= regLutResultsVec[2] @[comparator.scala 76:29]
      regMinVec_13_comparatorModule.io.in2 <= regLutResultsVec[8] @[comparator.scala 77:29]
      regMinVec_13_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_13_maxMinOutput <= regMinVec_13_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_13_selectedInput_0 = bits(regMinVec_13_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_13_T = eq(regMinVec_13_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_13_T : @[comparator.scala 100:40]
        regMinVec_13_result <= regLutResultsVec[2] @[comparator.scala 101:14]
      else :
        regMinVec_13_result <= regLutResultsVec[8] @[comparator.scala 103:14]
      regMinVec[13] <= regMinVec_13_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_14_comparatorModule of Comparator_14 @[comparator.scala 69:34]
      regMinVec_14_comparatorModule.clock <= clock
      regMinVec_14_comparatorModule.reset <= reset
      wire regMinVec_14_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_14_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_14_comparatorModule.io.in1 <= regLutResultsVec[2] @[comparator.scala 76:29]
      regMinVec_14_comparatorModule.io.in2 <= regLutResultsVec[9] @[comparator.scala 77:29]
      regMinVec_14_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_14_maxMinOutput <= regMinVec_14_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_14_selectedInput_0 = bits(regMinVec_14_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_14_T = eq(regMinVec_14_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_14_T : @[comparator.scala 100:40]
        regMinVec_14_result <= regLutResultsVec[2] @[comparator.scala 101:14]
      else :
        regMinVec_14_result <= regLutResultsVec[9] @[comparator.scala 103:14]
      regMinVec[14] <= regMinVec_14_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_15_comparatorModule of Comparator_15 @[comparator.scala 69:34]
      regMinVec_15_comparatorModule.clock <= clock
      regMinVec_15_comparatorModule.reset <= reset
      wire regMinVec_15_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_15_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_15_comparatorModule.io.in1 <= regLutResultsVec[3] @[comparator.scala 76:29]
      regMinVec_15_comparatorModule.io.in2 <= regLutResultsVec[5] @[comparator.scala 77:29]
      regMinVec_15_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_15_maxMinOutput <= regMinVec_15_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_15_selectedInput_0 = bits(regMinVec_15_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_15_T = eq(regMinVec_15_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_15_T : @[comparator.scala 100:40]
        regMinVec_15_result <= regLutResultsVec[3] @[comparator.scala 101:14]
      else :
        regMinVec_15_result <= regLutResultsVec[5] @[comparator.scala 103:14]
      regMinVec[15] <= regMinVec_15_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_16_comparatorModule of Comparator_16 @[comparator.scala 69:34]
      regMinVec_16_comparatorModule.clock <= clock
      regMinVec_16_comparatorModule.reset <= reset
      wire regMinVec_16_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_16_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_16_comparatorModule.io.in1 <= regLutResultsVec[3] @[comparator.scala 76:29]
      regMinVec_16_comparatorModule.io.in2 <= regLutResultsVec[6] @[comparator.scala 77:29]
      regMinVec_16_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_16_maxMinOutput <= regMinVec_16_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_16_selectedInput_0 = bits(regMinVec_16_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_16_T = eq(regMinVec_16_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_16_T : @[comparator.scala 100:40]
        regMinVec_16_result <= regLutResultsVec[3] @[comparator.scala 101:14]
      else :
        regMinVec_16_result <= regLutResultsVec[6] @[comparator.scala 103:14]
      regMinVec[16] <= regMinVec_16_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_17_comparatorModule of Comparator_17 @[comparator.scala 69:34]
      regMinVec_17_comparatorModule.clock <= clock
      regMinVec_17_comparatorModule.reset <= reset
      wire regMinVec_17_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_17_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_17_comparatorModule.io.in1 <= regLutResultsVec[3] @[comparator.scala 76:29]
      regMinVec_17_comparatorModule.io.in2 <= regLutResultsVec[7] @[comparator.scala 77:29]
      regMinVec_17_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_17_maxMinOutput <= regMinVec_17_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_17_selectedInput_0 = bits(regMinVec_17_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_17_T = eq(regMinVec_17_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_17_T : @[comparator.scala 100:40]
        regMinVec_17_result <= regLutResultsVec[3] @[comparator.scala 101:14]
      else :
        regMinVec_17_result <= regLutResultsVec[7] @[comparator.scala 103:14]
      regMinVec[17] <= regMinVec_17_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_18_comparatorModule of Comparator_18 @[comparator.scala 69:34]
      regMinVec_18_comparatorModule.clock <= clock
      regMinVec_18_comparatorModule.reset <= reset
      wire regMinVec_18_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_18_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_18_comparatorModule.io.in1 <= regLutResultsVec[3] @[comparator.scala 76:29]
      regMinVec_18_comparatorModule.io.in2 <= regLutResultsVec[8] @[comparator.scala 77:29]
      regMinVec_18_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_18_maxMinOutput <= regMinVec_18_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_18_selectedInput_0 = bits(regMinVec_18_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_18_T = eq(regMinVec_18_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_18_T : @[comparator.scala 100:40]
        regMinVec_18_result <= regLutResultsVec[3] @[comparator.scala 101:14]
      else :
        regMinVec_18_result <= regLutResultsVec[8] @[comparator.scala 103:14]
      regMinVec[18] <= regMinVec_18_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_19_comparatorModule of Comparator_19 @[comparator.scala 69:34]
      regMinVec_19_comparatorModule.clock <= clock
      regMinVec_19_comparatorModule.reset <= reset
      wire regMinVec_19_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_19_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_19_comparatorModule.io.in1 <= regLutResultsVec[3] @[comparator.scala 76:29]
      regMinVec_19_comparatorModule.io.in2 <= regLutResultsVec[9] @[comparator.scala 77:29]
      regMinVec_19_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_19_maxMinOutput <= regMinVec_19_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_19_selectedInput_0 = bits(regMinVec_19_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_19_T = eq(regMinVec_19_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_19_T : @[comparator.scala 100:40]
        regMinVec_19_result <= regLutResultsVec[3] @[comparator.scala 101:14]
      else :
        regMinVec_19_result <= regLutResultsVec[9] @[comparator.scala 103:14]
      regMinVec[19] <= regMinVec_19_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_20_comparatorModule of Comparator_20 @[comparator.scala 69:34]
      regMinVec_20_comparatorModule.clock <= clock
      regMinVec_20_comparatorModule.reset <= reset
      wire regMinVec_20_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_20_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_20_comparatorModule.io.in1 <= regLutResultsVec[4] @[comparator.scala 76:29]
      regMinVec_20_comparatorModule.io.in2 <= regLutResultsVec[5] @[comparator.scala 77:29]
      regMinVec_20_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_20_maxMinOutput <= regMinVec_20_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_20_selectedInput_0 = bits(regMinVec_20_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_20_T = eq(regMinVec_20_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_20_T : @[comparator.scala 100:40]
        regMinVec_20_result <= regLutResultsVec[4] @[comparator.scala 101:14]
      else :
        regMinVec_20_result <= regLutResultsVec[5] @[comparator.scala 103:14]
      regMinVec[20] <= regMinVec_20_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_21_comparatorModule of Comparator_21 @[comparator.scala 69:34]
      regMinVec_21_comparatorModule.clock <= clock
      regMinVec_21_comparatorModule.reset <= reset
      wire regMinVec_21_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_21_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_21_comparatorModule.io.in1 <= regLutResultsVec[4] @[comparator.scala 76:29]
      regMinVec_21_comparatorModule.io.in2 <= regLutResultsVec[6] @[comparator.scala 77:29]
      regMinVec_21_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_21_maxMinOutput <= regMinVec_21_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_21_selectedInput_0 = bits(regMinVec_21_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_21_T = eq(regMinVec_21_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_21_T : @[comparator.scala 100:40]
        regMinVec_21_result <= regLutResultsVec[4] @[comparator.scala 101:14]
      else :
        regMinVec_21_result <= regLutResultsVec[6] @[comparator.scala 103:14]
      regMinVec[21] <= regMinVec_21_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_22_comparatorModule of Comparator_22 @[comparator.scala 69:34]
      regMinVec_22_comparatorModule.clock <= clock
      regMinVec_22_comparatorModule.reset <= reset
      wire regMinVec_22_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_22_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_22_comparatorModule.io.in1 <= regLutResultsVec[4] @[comparator.scala 76:29]
      regMinVec_22_comparatorModule.io.in2 <= regLutResultsVec[7] @[comparator.scala 77:29]
      regMinVec_22_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_22_maxMinOutput <= regMinVec_22_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_22_selectedInput_0 = bits(regMinVec_22_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_22_T = eq(regMinVec_22_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_22_T : @[comparator.scala 100:40]
        regMinVec_22_result <= regLutResultsVec[4] @[comparator.scala 101:14]
      else :
        regMinVec_22_result <= regLutResultsVec[7] @[comparator.scala 103:14]
      regMinVec[22] <= regMinVec_22_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_23_comparatorModule of Comparator_23 @[comparator.scala 69:34]
      regMinVec_23_comparatorModule.clock <= clock
      regMinVec_23_comparatorModule.reset <= reset
      wire regMinVec_23_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_23_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_23_comparatorModule.io.in1 <= regLutResultsVec[4] @[comparator.scala 76:29]
      regMinVec_23_comparatorModule.io.in2 <= regLutResultsVec[8] @[comparator.scala 77:29]
      regMinVec_23_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_23_maxMinOutput <= regMinVec_23_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_23_selectedInput_0 = bits(regMinVec_23_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_23_T = eq(regMinVec_23_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_23_T : @[comparator.scala 100:40]
        regMinVec_23_result <= regLutResultsVec[4] @[comparator.scala 101:14]
      else :
        regMinVec_23_result <= regLutResultsVec[8] @[comparator.scala 103:14]
      regMinVec[23] <= regMinVec_23_result @[regular_fuzzification.scala 272:20]
      inst regMinVec_24_comparatorModule of Comparator_24 @[comparator.scala 69:34]
      regMinVec_24_comparatorModule.clock <= clock
      regMinVec_24_comparatorModule.reset <= reset
      wire regMinVec_24_result : UInt<7> @[comparator.scala 70:22]
      wire regMinVec_24_maxMinOutput : UInt<1> @[comparator.scala 71:28]
      regMinVec_24_comparatorModule.io.in1 <= regLutResultsVec[4] @[comparator.scala 76:29]
      regMinVec_24_comparatorModule.io.in2 <= regLutResultsVec[9] @[comparator.scala 77:29]
      regMinVec_24_comparatorModule.io.start <= io.start @[comparator.scala 79:31]
      regMinVec_24_maxMinOutput <= regMinVec_24_comparatorModule.io.maxMin @[comparator.scala 90:18]
      node regMinVec_24_selectedInput_0 = bits(regMinVec_24_maxMinOutput, 0, 0) @[comparator.scala 95:38]
      node _regMinVec_24_T = eq(regMinVec_24_selectedInput_0, UInt<1>("h0")) @[comparator.scala 100:27]
      when _regMinVec_24_T : @[comparator.scala 100:40]
        regMinVec_24_result <= regLutResultsVec[4] @[comparator.scala 101:14]
      else :
        regMinVec_24_result <= regLutResultsVec[9] @[comparator.scala 103:14]
      regMinVec[24] <= regMinVec_24_result @[regular_fuzzification.scala 272:20]
      wire finalConnVector : UInt<7>[4] @[regular_fuzzification.scala 323:15]
      finalConnVector[0] <= regMinVec[0] @[regular_fuzzification.scala 326:30]
      finalConnVector[1] <= regMinVec[1] @[regular_fuzzification.scala 326:30]
      finalConnVector[2] <= regMinVec[2] @[regular_fuzzification.scala 326:30]
      finalConnVector[3] <= regMinVec[5] @[regular_fuzzification.scala 326:30]
      inst regMaxVec_0_comparatorModule of MultipleComparator @[multiple_comparator.scala 293:34]
      regMaxVec_0_comparatorModule.clock <= clock
      regMaxVec_0_comparatorModule.reset <= reset
      wire regMaxVec_0_result : UInt<7> @[multiple_comparator.scala 304:22]
      regMaxVec_0_comparatorModule.io.start <= io.start @[multiple_comparator.scala 309:31]
      regMaxVec_0_comparatorModule.io.inputs[0] <= finalConnVector[0] @[multiple_comparator.scala 310:32]
      regMaxVec_0_comparatorModule.io.inputs[1] <= finalConnVector[1] @[multiple_comparator.scala 310:32]
      regMaxVec_0_comparatorModule.io.inputs[2] <= finalConnVector[2] @[multiple_comparator.scala 310:32]
      regMaxVec_0_comparatorModule.io.inputs[3] <= finalConnVector[3] @[multiple_comparator.scala 310:32]
      regMaxVec_0_result <= regMaxVec_0_comparatorModule.io.result @[multiple_comparator.scala 312:12]
      regMaxVec[0] <= regMaxVec_0_result @[regular_fuzzification.scala 329:39]
      wire finalConnVector_1 : UInt<7>[6] @[regular_fuzzification.scala 323:15]
      finalConnVector_1[0] <= regMinVec[3] @[regular_fuzzification.scala 326:30]
      finalConnVector_1[1] <= regMinVec[4] @[regular_fuzzification.scala 326:30]
      finalConnVector_1[2] <= regMinVec[6] @[regular_fuzzification.scala 326:30]
      finalConnVector_1[3] <= regMinVec[7] @[regular_fuzzification.scala 326:30]
      finalConnVector_1[4] <= regMinVec[8] @[regular_fuzzification.scala 326:30]
      finalConnVector_1[5] <= regMinVec[10] @[regular_fuzzification.scala 326:30]
      inst regMaxVec_1_comparatorModule of MultipleComparator_1 @[multiple_comparator.scala 293:34]
      regMaxVec_1_comparatorModule.clock <= clock
      regMaxVec_1_comparatorModule.reset <= reset
      wire regMaxVec_1_result : UInt<7> @[multiple_comparator.scala 304:22]
      regMaxVec_1_comparatorModule.io.start <= io.start @[multiple_comparator.scala 309:31]
      regMaxVec_1_comparatorModule.io.inputs[0] <= finalConnVector_1[0] @[multiple_comparator.scala 310:32]
      regMaxVec_1_comparatorModule.io.inputs[1] <= finalConnVector_1[1] @[multiple_comparator.scala 310:32]
      regMaxVec_1_comparatorModule.io.inputs[2] <= finalConnVector_1[2] @[multiple_comparator.scala 310:32]
      regMaxVec_1_comparatorModule.io.inputs[3] <= finalConnVector_1[3] @[multiple_comparator.scala 310:32]
      regMaxVec_1_comparatorModule.io.inputs[4] <= finalConnVector_1[4] @[multiple_comparator.scala 310:32]
      regMaxVec_1_comparatorModule.io.inputs[5] <= finalConnVector_1[5] @[multiple_comparator.scala 310:32]
      regMaxVec_1_result <= regMaxVec_1_comparatorModule.io.result @[multiple_comparator.scala 312:12]
      regMaxVec[1] <= regMaxVec_1_result @[regular_fuzzification.scala 329:39]
      wire finalConnVector_2 : UInt<7>[4] @[regular_fuzzification.scala 323:15]
      finalConnVector_2[0] <= regMinVec[9] @[regular_fuzzification.scala 326:30]
      finalConnVector_2[1] <= regMinVec[11] @[regular_fuzzification.scala 326:30]
      finalConnVector_2[2] <= regMinVec[12] @[regular_fuzzification.scala 326:30]
      finalConnVector_2[3] <= regMinVec[15] @[regular_fuzzification.scala 326:30]
      inst regMaxVec_2_comparatorModule of MultipleComparator_2 @[multiple_comparator.scala 293:34]
      regMaxVec_2_comparatorModule.clock <= clock
      regMaxVec_2_comparatorModule.reset <= reset
      wire regMaxVec_2_result : UInt<7> @[multiple_comparator.scala 304:22]
      regMaxVec_2_comparatorModule.io.start <= io.start @[multiple_comparator.scala 309:31]
      regMaxVec_2_comparatorModule.io.inputs[0] <= finalConnVector_2[0] @[multiple_comparator.scala 310:32]
      regMaxVec_2_comparatorModule.io.inputs[1] <= finalConnVector_2[1] @[multiple_comparator.scala 310:32]
      regMaxVec_2_comparatorModule.io.inputs[2] <= finalConnVector_2[2] @[multiple_comparator.scala 310:32]
      regMaxVec_2_comparatorModule.io.inputs[3] <= finalConnVector_2[3] @[multiple_comparator.scala 310:32]
      regMaxVec_2_result <= regMaxVec_2_comparatorModule.io.result @[multiple_comparator.scala 312:12]
      regMaxVec[2] <= regMaxVec_2_result @[regular_fuzzification.scala 329:39]
      wire finalConnVector_3 : UInt<7>[6] @[regular_fuzzification.scala 323:15]
      finalConnVector_3[0] <= regMinVec[13] @[regular_fuzzification.scala 326:30]
      finalConnVector_3[1] <= regMinVec[14] @[regular_fuzzification.scala 326:30]
      finalConnVector_3[2] <= regMinVec[16] @[regular_fuzzification.scala 326:30]
      finalConnVector_3[3] <= regMinVec[17] @[regular_fuzzification.scala 326:30]
      finalConnVector_3[4] <= regMinVec[20] @[regular_fuzzification.scala 326:30]
      finalConnVector_3[5] <= regMinVec[21] @[regular_fuzzification.scala 326:30]
      inst regMaxVec_3_comparatorModule of MultipleComparator_3 @[multiple_comparator.scala 293:34]
      regMaxVec_3_comparatorModule.clock <= clock
      regMaxVec_3_comparatorModule.reset <= reset
      wire regMaxVec_3_result : UInt<7> @[multiple_comparator.scala 304:22]
      regMaxVec_3_comparatorModule.io.start <= io.start @[multiple_comparator.scala 309:31]
      regMaxVec_3_comparatorModule.io.inputs[0] <= finalConnVector_3[0] @[multiple_comparator.scala 310:32]
      regMaxVec_3_comparatorModule.io.inputs[1] <= finalConnVector_3[1] @[multiple_comparator.scala 310:32]
      regMaxVec_3_comparatorModule.io.inputs[2] <= finalConnVector_3[2] @[multiple_comparator.scala 310:32]
      regMaxVec_3_comparatorModule.io.inputs[3] <= finalConnVector_3[3] @[multiple_comparator.scala 310:32]
      regMaxVec_3_comparatorModule.io.inputs[4] <= finalConnVector_3[4] @[multiple_comparator.scala 310:32]
      regMaxVec_3_comparatorModule.io.inputs[5] <= finalConnVector_3[5] @[multiple_comparator.scala 310:32]
      regMaxVec_3_result <= regMaxVec_3_comparatorModule.io.result @[multiple_comparator.scala 312:12]
      regMaxVec[3] <= regMaxVec_3_result @[regular_fuzzification.scala 329:39]
      wire finalConnVector_4 : UInt<7>[5] @[regular_fuzzification.scala 323:15]
      finalConnVector_4[0] <= regMinVec[18] @[regular_fuzzification.scala 326:30]
      finalConnVector_4[1] <= regMinVec[19] @[regular_fuzzification.scala 326:30]
      finalConnVector_4[2] <= regMinVec[22] @[regular_fuzzification.scala 326:30]
      finalConnVector_4[3] <= regMinVec[23] @[regular_fuzzification.scala 326:30]
      finalConnVector_4[4] <= regMinVec[24] @[regular_fuzzification.scala 326:30]
      inst regMaxVec_4_comparatorModule of MultipleComparator_4 @[multiple_comparator.scala 293:34]
      regMaxVec_4_comparatorModule.clock <= clock
      regMaxVec_4_comparatorModule.reset <= reset
      wire regMaxVec_4_result : UInt<7> @[multiple_comparator.scala 304:22]
      regMaxVec_4_comparatorModule.io.start <= io.start @[multiple_comparator.scala 309:31]
      regMaxVec_4_comparatorModule.io.inputs[0] <= finalConnVector_4[0] @[multiple_comparator.scala 310:32]
      regMaxVec_4_comparatorModule.io.inputs[1] <= finalConnVector_4[1] @[multiple_comparator.scala 310:32]
      regMaxVec_4_comparatorModule.io.inputs[2] <= finalConnVector_4[2] @[multiple_comparator.scala 310:32]
      regMaxVec_4_comparatorModule.io.inputs[3] <= finalConnVector_4[3] @[multiple_comparator.scala 310:32]
      regMaxVec_4_comparatorModule.io.inputs[4] <= finalConnVector_4[4] @[multiple_comparator.scala 310:32]
      regMaxVec_4_result <= regMaxVec_4_comparatorModule.io.result @[multiple_comparator.scala 312:12]
      regMaxVec[4] <= regMaxVec_4_result @[regular_fuzzification.scala 329:39]
      wire finalConnVectorForIdxBasedMax : UInt<7>[5] @[regular_fuzzification.scala 378:11]
      finalConnVectorForIdxBasedMax[0] <= regMaxVec[0] @[regular_fuzzification.scala 385:40]
      finalConnVectorForIdxBasedMax[1] <= regMaxVec[1] @[regular_fuzzification.scala 385:40]
      finalConnVectorForIdxBasedMax[2] <= regMaxVec[2] @[regular_fuzzification.scala 385:40]
      finalConnVectorForIdxBasedMax[3] <= regMaxVec[3] @[regular_fuzzification.scala 385:40]
      finalConnVectorForIdxBasedMax[4] <= regMaxVec[4] @[regular_fuzzification.scala 385:40]
      inst outResult_comparatorModule of MultipleComparator_5 @[multiple_comparator.scala 293:34]
      outResult_comparatorModule.clock <= clock
      outResult_comparatorModule.reset <= reset
      wire outResult_result : UInt<7> @[multiple_comparator.scala 304:22]
      outResult_comparatorModule.io.start <= io.start @[multiple_comparator.scala 309:31]
      outResult_comparatorModule.io.inputs[0] <= finalConnVectorForIdxBasedMax[0] @[multiple_comparator.scala 310:32]
      outResult_comparatorModule.io.inputs[1] <= finalConnVectorForIdxBasedMax[1] @[multiple_comparator.scala 310:32]
      outResult_comparatorModule.io.inputs[2] <= finalConnVectorForIdxBasedMax[2] @[multiple_comparator.scala 310:32]
      outResult_comparatorModule.io.inputs[3] <= finalConnVectorForIdxBasedMax[3] @[multiple_comparator.scala 310:32]
      outResult_comparatorModule.io.inputs[4] <= finalConnVectorForIdxBasedMax[4] @[multiple_comparator.scala 310:32]
      outResult_result <= outResult_comparatorModule.io.result @[multiple_comparator.scala 312:12]
      outResult <= outResult_result @[regular_fuzzification.scala 395:15]
    else :
      outResult <= UInt<1>("h0") @[regular_fuzzification.scala 420:15]
      outResultValid <= UInt<1>("h0") @[regular_fuzzification.scala 421:20]
    io.outResult <= outResult @[regular_fuzzification.scala 427:16]
    io.outResultValid <= outResultValid @[regular_fuzzification.scala 428:21]

  module RegularFuzzification :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip start : UInt<1>, flip inputs : UInt<1>[2], flip lutConnections : UInt<7>[10], outResultValid : UInt<1>, outResult : UInt<7>}

    wire _regInputBits_WIRE : UInt<10>[2] @[regular_fuzzy_controller_interface.scala 57:12]
    _regInputBits_WIRE[0] <= UInt<10>("h0") @[regular_fuzzy_controller_interface.scala 57:12]
    _regInputBits_WIRE[1] <= UInt<10>("h0") @[regular_fuzzy_controller_interface.scala 57:12]
    reg regInputBits : UInt<10>[2], clock with :
      reset => (reset, _regInputBits_WIRE) @[regular_fuzzy_controller_interface.scala 56:29]
    reg regIndex : UInt<10>, clock with :
      reset => (reset, UInt<10>("h9")) @[regular_fuzzy_controller_interface.scala 60:25]
    reg regStart : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[regular_fuzzy_controller_interface.scala 64:25]
    node _T = eq(io.start, UInt<1>("h1")) @[regular_fuzzy_controller_interface.scala 66:17]
    when _T : @[regular_fuzzy_controller_interface.scala 66:29]
      node _regInputBits_0_T = dshl(io.inputs[0], regIndex) @[regular_fuzzy_controller_interface.scala 70:58]
      node _regInputBits_0_T_1 = or(regInputBits[0], _regInputBits_0_T) @[regular_fuzzy_controller_interface.scala 70:42]
      regInputBits[0] <= _regInputBits_0_T_1 @[regular_fuzzy_controller_interface.scala 70:23]
      node _regInputBits_1_T = dshl(io.inputs[1], regIndex) @[regular_fuzzy_controller_interface.scala 70:58]
      node _regInputBits_1_T_1 = or(regInputBits[1], _regInputBits_1_T) @[regular_fuzzy_controller_interface.scala 70:42]
      regInputBits[1] <= _regInputBits_1_T_1 @[regular_fuzzy_controller_interface.scala 70:23]
      node _T_1 = neq(regIndex, UInt<1>("h0")) @[regular_fuzzy_controller_interface.scala 74:19]
      when _T_1 : @[regular_fuzzy_controller_interface.scala 74:28]
        node _regIndex_T = sub(regIndex, UInt<1>("h1")) @[regular_fuzzy_controller_interface.scala 75:28]
        node _regIndex_T_1 = tail(_regIndex_T, 1) @[regular_fuzzy_controller_interface.scala 75:28]
        regIndex <= _regIndex_T_1 @[regular_fuzzy_controller_interface.scala 75:16]
      else :
        regIndex <= UInt<4>("h9") @[regular_fuzzy_controller_interface.scala 77:16]
        regStart <= UInt<1>("h1") @[regular_fuzzy_controller_interface.scala 78:16]
    inst fuzzification of RegularFuzzificationInput @[regular_fuzzification.scala 454:31]
    fuzzification.clock <= clock
    fuzzification.reset <= reset
    wire outResult : UInt<7>
    outResult <= UInt<7>("h0")
    wire outResultValid : UInt<1>
    outResultValid <= UInt<1>("h0")
    fuzzification.io.start <= regStart @[regular_fuzzification.scala 473:28]
    fuzzification.io.lutConnections[0] <= io.lutConnections[0] @[regular_fuzzification.scala 478:37]
    fuzzification.io.lutConnections[1] <= io.lutConnections[1] @[regular_fuzzification.scala 478:37]
    fuzzification.io.lutConnections[2] <= io.lutConnections[2] @[regular_fuzzification.scala 478:37]
    fuzzification.io.lutConnections[3] <= io.lutConnections[3] @[regular_fuzzification.scala 478:37]
    fuzzification.io.lutConnections[4] <= io.lutConnections[4] @[regular_fuzzification.scala 478:37]
    fuzzification.io.lutConnections[5] <= io.lutConnections[5] @[regular_fuzzification.scala 478:37]
    fuzzification.io.lutConnections[6] <= io.lutConnections[6] @[regular_fuzzification.scala 478:37]
    fuzzification.io.lutConnections[7] <= io.lutConnections[7] @[regular_fuzzification.scala 478:37]
    fuzzification.io.lutConnections[8] <= io.lutConnections[8] @[regular_fuzzification.scala 478:37]
    fuzzification.io.lutConnections[9] <= io.lutConnections[9] @[regular_fuzzification.scala 478:37]
    fuzzification.io.inputs[0] <= regInputBits[0] @[regular_fuzzification.scala 483:29]
    fuzzification.io.inputs[1] <= regInputBits[1] @[regular_fuzzification.scala 483:29]
    outResult <= fuzzification.io.outResult @[regular_fuzzification.scala 488:15]
    outResultValid <= fuzzification.io.outResultValid @[regular_fuzzification.scala 489:20]
    io.outResult <= outResult @[regular_fuzzy_controller_interface.scala 100:16]
    io.outResultValid <= outResultValid @[regular_fuzzy_controller_interface.scala 101:21]

