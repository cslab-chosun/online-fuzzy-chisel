circuit FuzzyController :
  module Comparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, max_min : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[comparator.scala 28:30]
    reg startRisingEdge_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), startRisingEdge_REG) @[comparator.scala 29:52]
    startRisingEdge_REG <= io.start @[comparator.scala 29:52]
    node _startRisingEdge_T = eq(startRisingEdge_REG, UInt<1>("h0")) @[comparator.scala 29:44]
    node startRisingEdge = and(io.start, _startRisingEdge_T) @[comparator.scala 29:42]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[comparator.scala 31:40]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[comparator.scala 32:36]
    wire max_min_output : UInt<1>
    max_min_output <= UInt<1>("h0")
    node _T = eq(UInt<1>("h0"), state) @[comparator.scala 36:25]
    when _T : @[comparator.scala 36:25]
      node _T_1 = eq(startRisingEdge, UInt<1>("h1")) @[comparator.scala 40:47]
      when _T_1 : @[comparator.scala 40:59]
        state <= UInt<1>("h1") @[comparator.scala 41:39]
    else :
      node _T_2 = eq(UInt<1>("h1"), state) @[comparator.scala 36:25]
      when _T_2 : @[comparator.scala 36:25]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[comparator.scala 46:49]
        when _T_3 : @[comparator.scala 46:61]
          earlyTerminate1 <= UInt<1>("h1") @[comparator.scala 48:49]
          earlyTerminate2 <= UInt<1>("h1") @[comparator.scala 49:49]
          state <= UInt<1>("h0") @[comparator.scala 51:39]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[comparator.scala 53:45]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[comparator.scala 53:63]
          node _T_6 = and(_T_4, _T_5) @[comparator.scala 53:53]
          when _T_6 : @[comparator.scala 53:72]
            earlyTerminate1 <= UInt<1>("h1") @[comparator.scala 56:57]
            earlyTerminate2 <= UInt<1>("h0") @[comparator.scala 57:57]
            max_min_output <= io.in1 @[comparator.scala 58:56]
            state <= UInt<1>("h0") @[comparator.scala 67:39]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[comparator.scala 69:45]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[comparator.scala 69:63]
            node _T_9 = and(_T_7, _T_8) @[comparator.scala 69:53]
            when _T_9 : @[comparator.scala 69:72]
              earlyTerminate1 <= UInt<1>("h0") @[comparator.scala 72:57]
              earlyTerminate2 <= UInt<1>("h1") @[comparator.scala 73:57]
              max_min_output <= io.in2 @[comparator.scala 74:56]
              state <= UInt<1>("h0") @[comparator.scala 83:39]
            else :
              max_min_output <= io.in1 @[comparator.scala 91:48]
              earlyTerminate1 <= UInt<1>("h0") @[comparator.scala 93:49]
              earlyTerminate1 <= UInt<1>("h0") @[comparator.scala 94:49]
              state <= UInt<1>("h1") @[comparator.scala 96:39]
    io.earlyTerminate1 <= earlyTerminate1 @[comparator.scala 104:28]
    io.earlyTerminate2 <= earlyTerminate2 @[comparator.scala 105:28]
    io.max_min <= max_min_output @[comparator.scala 107:20]

  module FuzzyController :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, max : UInt<1>}

    inst comparator_max_comparator_module of Comparator @[comparator.scala 114:35]
    comparator_max_comparator_module.clock <= clock
    comparator_max_comparator_module.reset <= reset
    wire comparator_max_earlyTerminate1 : UInt<1>
    comparator_max_earlyTerminate1 <= UInt<1>("h0")
    wire comparator_max_earlyTerminate2 : UInt<1>
    comparator_max_earlyTerminate2 <= UInt<1>("h0")
    wire comparator_max : UInt<1> @[comparator.scala 119:30]
    comparator_max_comparator_module.io.in1 <= io.in1 @[comparator.scala 124:30]
    comparator_max_comparator_module.io.in2 <= io.in2 @[comparator.scala 125:30]
    comparator_max_comparator_module.io.earlyTerminate <= UInt<1>("h0") @[comparator.scala 127:41]
    comparator_max_comparator_module.io.start <= UInt<1>("h1") @[comparator.scala 128:32]
    comparator_max_earlyTerminate1 <= comparator_max_comparator_module.io.earlyTerminate1 @[comparator.scala 133:21]
    comparator_max_earlyTerminate2 <= comparator_max_comparator_module.io.earlyTerminate2 @[comparator.scala 134:21]
    comparator_max <= comparator_max_comparator_module.io.max_min @[comparator.scala 137:20]
    io.max <= comparator_max @[top.scala 21:12]

