circuit FuzzyController :
  module Comparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, max : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[comparator.scala 28:30]
    reg startRisingEdge_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), startRisingEdge_REG) @[comparator.scala 29:52]
    startRisingEdge_REG <= io.start @[comparator.scala 29:52]
    node _startRisingEdge_T = eq(startRisingEdge_REG, UInt<1>("h0")) @[comparator.scala 29:44]
    node startRisingEdge = and(io.start, _startRisingEdge_T) @[comparator.scala 29:42]
    wire earlyTerminate1 : UInt<1>
    earlyTerminate1 <= UInt<1>("h0")
    wire earlyTerminate2 : UInt<1>
    earlyTerminate2 <= UInt<1>("h0")
    wire max_output : UInt<1>
    max_output <= UInt<1>("h0")
    node _T = eq(UInt<1>("h0"), state) @[comparator.scala 36:25]
    when _T : @[comparator.scala 36:25]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[comparator.scala 39:40]
      when _T_1 : @[comparator.scala 39:52]
        state <= UInt<1>("h1") @[comparator.scala 40:39]
    else :
      node _T_2 = eq(UInt<1>("h1"), state) @[comparator.scala 36:25]
      when _T_2 : @[comparator.scala 36:25]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[comparator.scala 44:49]
        when _T_3 : @[comparator.scala 44:61]
          earlyTerminate1 <= UInt<1>("h1") @[comparator.scala 46:49]
          earlyTerminate2 <= UInt<1>("h1") @[comparator.scala 47:49]
          state <= UInt<1>("h0") @[comparator.scala 49:39]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[comparator.scala 51:45]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[comparator.scala 51:63]
          node _T_6 = and(_T_4, _T_5) @[comparator.scala 51:53]
          when _T_6 : @[comparator.scala 51:72]
            earlyTerminate1 <= UInt<1>("h1") @[comparator.scala 53:49]
            earlyTerminate2 <= UInt<1>("h0") @[comparator.scala 54:49]
            max_output <= io.in1 @[comparator.scala 56:44]
            state <= UInt<1>("h0") @[comparator.scala 58:39]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[comparator.scala 60:45]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[comparator.scala 60:63]
            node _T_9 = and(_T_7, _T_8) @[comparator.scala 60:53]
            when _T_9 : @[comparator.scala 60:72]
              earlyTerminate1 <= UInt<1>("h0") @[comparator.scala 62:49]
              earlyTerminate2 <= UInt<1>("h1") @[comparator.scala 63:49]
              max_output <= io.in2 @[comparator.scala 65:44]
              state <= UInt<1>("h0") @[comparator.scala 67:39]
            else :
              max_output <= io.in1 @[comparator.scala 75:44]
              state <= UInt<1>("h1") @[comparator.scala 77:39]
    io.earlyTerminate1 <= earlyTerminate1 @[comparator.scala 85:28]
    io.earlyTerminate2 <= earlyTerminate2 @[comparator.scala 86:28]
    io.max <= max_output @[comparator.scala 88:16]

  module FuzzyController :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, max : UInt<1>}

    inst comparator_max_comparator_module of Comparator @[comparator.scala 95:35]
    comparator_max_comparator_module.clock <= clock
    comparator_max_comparator_module.reset <= reset
    wire comparator_max_earlyTerminate1 : UInt<1>
    comparator_max_earlyTerminate1 <= UInt<1>("h0")
    wire comparator_max_earlyTerminate2 : UInt<1>
    comparator_max_earlyTerminate2 <= UInt<1>("h0")
    wire comparator_max : UInt<1> @[comparator.scala 100:26]
    comparator_max_comparator_module.io.in1 <= io.in1 @[comparator.scala 105:30]
    comparator_max_comparator_module.io.in2 <= io.in2 @[comparator.scala 106:30]
    comparator_max_comparator_module.io.earlyTerminate <= UInt<1>("h0") @[comparator.scala 108:41]
    comparator_max_comparator_module.io.start <= UInt<1>("h1") @[comparator.scala 109:32]
    comparator_max_earlyTerminate1 <= comparator_max_comparator_module.io.earlyTerminate1 @[comparator.scala 114:21]
    comparator_max_earlyTerminate2 <= comparator_max_comparator_module.io.earlyTerminate2 @[comparator.scala 115:21]
    comparator_max <= comparator_max_comparator_module.io.max @[comparator.scala 118:16]
    io.max <= comparator_max @[top.scala 21:12]

