circuit FuzzyController :
  module OnlineComparator2 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 97:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 98:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 99:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 100:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 101:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 97:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 98:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 99:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 100:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 101:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 97:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 98:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 99:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 100:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 101:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 97:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 98:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 99:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 100:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 101:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 97:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 98:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 99:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 100:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 101:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 97:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 98:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 99:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 100:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 101:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 97:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 98:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 99:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 100:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 101:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 77:35]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 78:29]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 79:29]
            earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 80:35]
            maxMinOutput <= io.in2 @[online_comparator2.scala 83:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 107:35]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 108:29]
              earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 109:35]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 110:29]
              maxMinOutput <= io.in1 @[online_comparator2.scala 111:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 77:35]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 78:29]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 79:29]
            earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 80:35]
            maxMinOutput <= io.in2 @[online_comparator2.scala 83:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 107:35]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 108:29]
              earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 109:35]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 110:29]
              maxMinOutput <= io.in1 @[online_comparator2.scala 111:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 77:35]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 78:29]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 79:29]
            earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 80:35]
            maxMinOutput <= io.in2 @[online_comparator2.scala 83:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 107:35]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 108:29]
              earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 109:35]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 110:29]
              maxMinOutput <= io.in1 @[online_comparator2.scala 111:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 77:35]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 78:29]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 79:29]
            earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 80:35]
            maxMinOutput <= io.in2 @[online_comparator2.scala 83:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 107:35]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 108:29]
              earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 109:35]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 110:29]
              maxMinOutput <= io.in1 @[online_comparator2.scala 111:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 77:35]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 78:29]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 79:29]
            earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 80:35]
            maxMinOutput <= io.in2 @[online_comparator2.scala 83:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 107:35]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 108:29]
              earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 109:35]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 110:29]
              maxMinOutput <= io.in1 @[online_comparator2.scala 111:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 77:35]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 78:29]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 79:29]
            earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 80:35]
            maxMinOutput <= io.in2 @[online_comparator2.scala 83:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 107:35]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 108:29]
              earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 109:35]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 110:29]
              maxMinOutput <= io.in1 @[online_comparator2.scala 111:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 77:35]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 78:29]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 79:29]
            earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 80:35]
            maxMinOutput <= io.in2 @[online_comparator2.scala 83:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 107:35]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 108:29]
              earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 109:35]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 110:29]
              maxMinOutput <= io.in1 @[online_comparator2.scala 111:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module OnlineComparator2_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 35:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    wire earlyTerminate1Shadow : UInt<1>
    earlyTerminate1Shadow <= UInt<1>("h0")
    wire earlyTerminate2Shadow : UInt<1>
    earlyTerminate2Shadow <= UInt<1>("h0")
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 42:17]
    when _T : @[online_comparator2.scala 42:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[online_comparator2.scala 44:19]
      when _T_1 : @[online_comparator2.scala 44:19]
        node _T_2 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 48:32]
        when _T_2 : @[online_comparator2.scala 48:44]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_3 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_4 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_5 = and(_T_3, _T_4) @[online_comparator2.scala 61:35]
          when _T_5 : @[online_comparator2.scala 61:54]
            earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 77:35]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 78:29]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 79:29]
            earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 80:35]
            maxMinOutput <= io.in2 @[online_comparator2.scala 83:26]
            state <= UInt<1>("h1") @[online_comparator2.scala 91:17]
          else :
            node _T_6 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 93:27]
            node _T_7 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 93:45]
            node _T_8 = and(_T_6, _T_7) @[online_comparator2.scala 93:35]
            when _T_8 : @[online_comparator2.scala 93:54]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 107:35]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 108:29]
              earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 109:35]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 110:29]
              maxMinOutput <= io.in1 @[online_comparator2.scala 111:26]
              state <= UInt<1>("h1") @[online_comparator2.scala 118:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 126:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 128:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 129:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 130:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 131:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 133:17]
      else :
        node _T_9 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_9 : @[online_comparator2.scala 44:19]
          node _T_10 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 142:31]
          when _T_10 : @[online_comparator2.scala 142:43]
            maxMinOutput <= io.in2 @[online_comparator2.scala 143:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 145:24]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 154:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 154:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 155:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 155:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 157:13]

  module MinMaxParallelOnlineComparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<1>[8], flip in2 : UInt<1>[8], outResultValid : UInt<1>, outResult : UInt<1>}

    reg outResultValid : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max_parallel_online_comparator.scala 46:31]
    reg regStorageVec : { selectedInput : UInt<1>, earlyTerminated : UInt<1>, minMaxOutput : UInt<1>, earlyTerminated1 : UInt<1>, earlyTerminated2 : UInt<1>}[15], clock with :
      reset => (UInt<1>("h0"), regStorageVec) @[min_max_parallel_online_comparator.scala 48:26]
    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max_parallel_online_comparator.scala 51:22]
    reg currentIteration : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[min_max_parallel_online_comparator.scala 53:33]
    node _T = eq(io.start, UInt<1>("h1")) @[min_max_parallel_online_comparator.scala 56:18]
    when _T : @[min_max_parallel_online_comparator.scala 56:30]
      node _T_1 = eq(UInt<1>("h0"), state) @[min_max_parallel_online_comparator.scala 58:19]
      when _T_1 : @[min_max_parallel_online_comparator.scala 58:19]
        node _currentIteration_T = add(currentIteration, UInt<1>("h1")) @[min_max_parallel_online_comparator.scala 62:46]
        node _currentIteration_T_1 = tail(_currentIteration_T, 1) @[min_max_parallel_online_comparator.scala 62:46]
        currentIteration <= _currentIteration_T_1 @[min_max_parallel_online_comparator.scala 62:26]
        node _T_2 = sub(UInt<4>("h8"), UInt<1>("h1")) @[min_max_parallel_online_comparator.scala 64:52]
        node _T_3 = tail(_T_2, 1) @[min_max_parallel_online_comparator.scala 64:52]
        node _T_4 = add(_T_3, UInt<2>("h3")) @[min_max_parallel_online_comparator.scala 64:58]
        node _T_5 = tail(_T_4, 1) @[min_max_parallel_online_comparator.scala 64:58]
        node _T_6 = neq(currentIteration, _T_5) @[min_max_parallel_online_comparator.scala 64:34]
        when _T_6 : @[min_max_parallel_online_comparator.scala 64:108]
          node _T_7 = eq(currentIteration, UInt<2>("h3")) @[min_max_parallel_online_comparator.scala 66:38]
          when _T_7 : @[min_max_parallel_online_comparator.scala 66:67]
            outResultValid <= UInt<1>("h1") @[min_max_parallel_online_comparator.scala 67:32]
          inst comparatorModule of OnlineComparator2 @[online_comparator2.scala 171:34]
          comparatorModule.clock <= clock
          comparatorModule.reset <= reset
          wire earlyTerminate1 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2 : UInt<1> @[online_comparator2.scala 174:31]
          wire maxOutput : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule.io.in1 <= regStorageVec[1].minMaxOutput @[online_comparator2.scala 181:29]
          comparatorModule.io.in2 <= regStorageVec[2].minMaxOutput @[online_comparator2.scala 182:29]
          comparatorModule.io.earlyTerminate <= regStorageVec[0].earlyTerminated2 @[online_comparator2.scala 184:40]
          comparatorModule.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1 <= comparatorModule.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2 <= comparatorModule.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          maxOutput <= comparatorModule.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput = mux(earlyTerminate1, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_1 = not(selectedInput) @[online_comparator2.scala 211:30]
          regStorageVec[0].selectedInput <= selectedInput_1 @[min_max_parallel_online_comparator.scala 81:54]
          regStorageVec[0].earlyTerminated1 <= earlyTerminate1 @[min_max_parallel_online_comparator.scala 82:57]
          regStorageVec[0].earlyTerminated2 <= earlyTerminate2 @[min_max_parallel_online_comparator.scala 83:57]
          regStorageVec[0].minMaxOutput <= maxOutput @[min_max_parallel_online_comparator.scala 84:53]
          inst comparatorModule_1 of OnlineComparator2_1 @[online_comparator2.scala 171:34]
          comparatorModule_1.clock <= clock
          comparatorModule_1.reset <= reset
          wire earlyTerminate1_1 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_1 : UInt<1> @[online_comparator2.scala 174:31]
          wire maxOutput_1 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_1.io.in1 <= regStorageVec[3].minMaxOutput @[online_comparator2.scala 181:29]
          comparatorModule_1.io.in2 <= regStorageVec[4].minMaxOutput @[online_comparator2.scala 182:29]
          comparatorModule_1.io.earlyTerminate <= regStorageVec[0].earlyTerminated1 @[online_comparator2.scala 184:40]
          comparatorModule_1.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_1 <= comparatorModule_1.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_1 <= comparatorModule_1.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          maxOutput_1 <= comparatorModule_1.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_2 = mux(earlyTerminate1_1, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_3 = not(selectedInput_2) @[online_comparator2.scala 211:30]
          regStorageVec[1].selectedInput <= selectedInput_3 @[min_max_parallel_online_comparator.scala 81:54]
          regStorageVec[1].earlyTerminated1 <= earlyTerminate1_1 @[min_max_parallel_online_comparator.scala 82:57]
          regStorageVec[1].earlyTerminated2 <= earlyTerminate2_1 @[min_max_parallel_online_comparator.scala 83:57]
          regStorageVec[1].minMaxOutput <= maxOutput_1 @[min_max_parallel_online_comparator.scala 84:53]
          inst comparatorModule_2 of OnlineComparator2_2 @[online_comparator2.scala 171:34]
          comparatorModule_2.clock <= clock
          comparatorModule_2.reset <= reset
          wire earlyTerminate1_2 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_2 : UInt<1> @[online_comparator2.scala 174:31]
          wire maxOutput_2 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_2.io.in1 <= regStorageVec[5].minMaxOutput @[online_comparator2.scala 181:29]
          comparatorModule_2.io.in2 <= regStorageVec[6].minMaxOutput @[online_comparator2.scala 182:29]
          comparatorModule_2.io.earlyTerminate <= regStorageVec[0].earlyTerminated2 @[online_comparator2.scala 184:40]
          comparatorModule_2.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_2 <= comparatorModule_2.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_2 <= comparatorModule_2.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          maxOutput_2 <= comparatorModule_2.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_4 = mux(earlyTerminate1_2, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_5 = not(selectedInput_4) @[online_comparator2.scala 211:30]
          regStorageVec[2].selectedInput <= selectedInput_5 @[min_max_parallel_online_comparator.scala 81:54]
          regStorageVec[2].earlyTerminated1 <= earlyTerminate1_2 @[min_max_parallel_online_comparator.scala 82:57]
          regStorageVec[2].earlyTerminated2 <= earlyTerminate2_2 @[min_max_parallel_online_comparator.scala 83:57]
          regStorageVec[2].minMaxOutput <= maxOutput_2 @[min_max_parallel_online_comparator.scala 84:53]
          inst comparatorModule_3 of OnlineComparator2_3 @[online_comparator2.scala 171:34]
          comparatorModule_3.clock <= clock
          comparatorModule_3.reset <= reset
          wire earlyTerminate1_3 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_3 : UInt<1> @[online_comparator2.scala 174:31]
          wire maxOutput_3 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_3.io.in1 <= regStorageVec[7].minMaxOutput @[online_comparator2.scala 181:29]
          comparatorModule_3.io.in2 <= regStorageVec[8].minMaxOutput @[online_comparator2.scala 182:29]
          comparatorModule_3.io.earlyTerminate <= regStorageVec[1].earlyTerminated1 @[online_comparator2.scala 184:40]
          comparatorModule_3.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_3 <= comparatorModule_3.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_3 <= comparatorModule_3.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          maxOutput_3 <= comparatorModule_3.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_6 = mux(earlyTerminate1_3, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_7 = not(selectedInput_6) @[online_comparator2.scala 211:30]
          regStorageVec[3].selectedInput <= selectedInput_7 @[min_max_parallel_online_comparator.scala 81:54]
          regStorageVec[3].earlyTerminated1 <= earlyTerminate1_3 @[min_max_parallel_online_comparator.scala 82:57]
          regStorageVec[3].earlyTerminated2 <= earlyTerminate2_3 @[min_max_parallel_online_comparator.scala 83:57]
          regStorageVec[3].minMaxOutput <= maxOutput_3 @[min_max_parallel_online_comparator.scala 84:53]
          inst comparatorModule_4 of OnlineComparator2_4 @[online_comparator2.scala 171:34]
          comparatorModule_4.clock <= clock
          comparatorModule_4.reset <= reset
          wire earlyTerminate1_4 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_4 : UInt<1> @[online_comparator2.scala 174:31]
          wire maxOutput_4 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_4.io.in1 <= regStorageVec[9].minMaxOutput @[online_comparator2.scala 181:29]
          comparatorModule_4.io.in2 <= regStorageVec[10].minMaxOutput @[online_comparator2.scala 182:29]
          comparatorModule_4.io.earlyTerminate <= regStorageVec[1].earlyTerminated2 @[online_comparator2.scala 184:40]
          comparatorModule_4.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_4 <= comparatorModule_4.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_4 <= comparatorModule_4.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          maxOutput_4 <= comparatorModule_4.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_8 = mux(earlyTerminate1_4, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_9 = not(selectedInput_8) @[online_comparator2.scala 211:30]
          regStorageVec[4].selectedInput <= selectedInput_9 @[min_max_parallel_online_comparator.scala 81:54]
          regStorageVec[4].earlyTerminated1 <= earlyTerminate1_4 @[min_max_parallel_online_comparator.scala 82:57]
          regStorageVec[4].earlyTerminated2 <= earlyTerminate2_4 @[min_max_parallel_online_comparator.scala 83:57]
          regStorageVec[4].minMaxOutput <= maxOutput_4 @[min_max_parallel_online_comparator.scala 84:53]
          inst comparatorModule_5 of OnlineComparator2_5 @[online_comparator2.scala 171:34]
          comparatorModule_5.clock <= clock
          comparatorModule_5.reset <= reset
          wire earlyTerminate1_5 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_5 : UInt<1> @[online_comparator2.scala 174:31]
          wire maxOutput_5 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_5.io.in1 <= regStorageVec[11].minMaxOutput @[online_comparator2.scala 181:29]
          comparatorModule_5.io.in2 <= regStorageVec[12].minMaxOutput @[online_comparator2.scala 182:29]
          comparatorModule_5.io.earlyTerminate <= regStorageVec[2].earlyTerminated1 @[online_comparator2.scala 184:40]
          comparatorModule_5.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_5 <= comparatorModule_5.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_5 <= comparatorModule_5.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          maxOutput_5 <= comparatorModule_5.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_10 = mux(earlyTerminate1_5, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_11 = not(selectedInput_10) @[online_comparator2.scala 211:30]
          regStorageVec[5].selectedInput <= selectedInput_11 @[min_max_parallel_online_comparator.scala 81:54]
          regStorageVec[5].earlyTerminated1 <= earlyTerminate1_5 @[min_max_parallel_online_comparator.scala 82:57]
          regStorageVec[5].earlyTerminated2 <= earlyTerminate2_5 @[min_max_parallel_online_comparator.scala 83:57]
          regStorageVec[5].minMaxOutput <= maxOutput_5 @[min_max_parallel_online_comparator.scala 84:53]
          inst comparatorModule_6 of OnlineComparator2_6 @[online_comparator2.scala 171:34]
          comparatorModule_6.clock <= clock
          comparatorModule_6.reset <= reset
          wire earlyTerminate1_6 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_6 : UInt<1> @[online_comparator2.scala 174:31]
          wire maxOutput_6 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_6.io.in1 <= regStorageVec[13].minMaxOutput @[online_comparator2.scala 181:29]
          comparatorModule_6.io.in2 <= regStorageVec[14].minMaxOutput @[online_comparator2.scala 182:29]
          comparatorModule_6.io.earlyTerminate <= regStorageVec[2].earlyTerminated2 @[online_comparator2.scala 184:40]
          comparatorModule_6.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_6 <= comparatorModule_6.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_6 <= comparatorModule_6.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          maxOutput_6 <= comparatorModule_6.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_12 = mux(earlyTerminate1_6, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_13 = not(selectedInput_12) @[online_comparator2.scala 211:30]
          regStorageVec[6].selectedInput <= selectedInput_13 @[min_max_parallel_online_comparator.scala 81:54]
          regStorageVec[6].earlyTerminated1 <= earlyTerminate1_6 @[min_max_parallel_online_comparator.scala 82:57]
          regStorageVec[6].earlyTerminated2 <= earlyTerminate2_6 @[min_max_parallel_online_comparator.scala 83:57]
          regStorageVec[6].minMaxOutput <= maxOutput_6 @[min_max_parallel_online_comparator.scala 84:53]
          inst comparatorModule_7 of OnlineComparator2_7 @[online_comparator2.scala 171:34]
          comparatorModule_7.clock <= clock
          comparatorModule_7.reset <= reset
          wire earlyTerminate1_7 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_7 : UInt<1> @[online_comparator2.scala 174:31]
          wire minOutput : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_7.io.in1 <= io.in1[0] @[online_comparator2.scala 181:29]
          comparatorModule_7.io.in2 <= io.in2[0] @[online_comparator2.scala 182:29]
          comparatorModule_7.io.earlyTerminate <= regStorageVec[3].earlyTerminated1 @[online_comparator2.scala 184:40]
          comparatorModule_7.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_7 <= comparatorModule_7.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_7 <= comparatorModule_7.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          minOutput <= comparatorModule_7.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_14 = mux(earlyTerminate1_7, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_15 = not(selectedInput_14) @[online_comparator2.scala 211:30]
          regStorageVec[7].selectedInput <= selectedInput_15 @[min_max_parallel_online_comparator.scala 106:54]
          regStorageVec[7].earlyTerminated1 <= earlyTerminate1_7 @[min_max_parallel_online_comparator.scala 107:57]
          regStorageVec[7].earlyTerminated2 <= earlyTerminate2_7 @[min_max_parallel_online_comparator.scala 108:57]
          regStorageVec[7].minMaxOutput <= minOutput @[min_max_parallel_online_comparator.scala 109:53]
          inst comparatorModule_8 of OnlineComparator2_8 @[online_comparator2.scala 171:34]
          comparatorModule_8.clock <= clock
          comparatorModule_8.reset <= reset
          wire earlyTerminate1_8 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_8 : UInt<1> @[online_comparator2.scala 174:31]
          wire minOutput_1 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_8.io.in1 <= io.in1[1] @[online_comparator2.scala 181:29]
          comparatorModule_8.io.in2 <= io.in2[1] @[online_comparator2.scala 182:29]
          comparatorModule_8.io.earlyTerminate <= regStorageVec[3].earlyTerminated2 @[online_comparator2.scala 184:40]
          comparatorModule_8.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_8 <= comparatorModule_8.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_8 <= comparatorModule_8.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          minOutput_1 <= comparatorModule_8.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_16 = mux(earlyTerminate1_8, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_17 = not(selectedInput_16) @[online_comparator2.scala 211:30]
          regStorageVec[8].selectedInput <= selectedInput_17 @[min_max_parallel_online_comparator.scala 106:54]
          regStorageVec[8].earlyTerminated1 <= earlyTerminate1_8 @[min_max_parallel_online_comparator.scala 107:57]
          regStorageVec[8].earlyTerminated2 <= earlyTerminate2_8 @[min_max_parallel_online_comparator.scala 108:57]
          regStorageVec[8].minMaxOutput <= minOutput_1 @[min_max_parallel_online_comparator.scala 109:53]
          inst comparatorModule_9 of OnlineComparator2_9 @[online_comparator2.scala 171:34]
          comparatorModule_9.clock <= clock
          comparatorModule_9.reset <= reset
          wire earlyTerminate1_9 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_9 : UInt<1> @[online_comparator2.scala 174:31]
          wire minOutput_2 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_9.io.in1 <= io.in1[2] @[online_comparator2.scala 181:29]
          comparatorModule_9.io.in2 <= io.in2[2] @[online_comparator2.scala 182:29]
          comparatorModule_9.io.earlyTerminate <= regStorageVec[4].earlyTerminated1 @[online_comparator2.scala 184:40]
          comparatorModule_9.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_9 <= comparatorModule_9.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_9 <= comparatorModule_9.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          minOutput_2 <= comparatorModule_9.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_18 = mux(earlyTerminate1_9, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_19 = not(selectedInput_18) @[online_comparator2.scala 211:30]
          regStorageVec[9].selectedInput <= selectedInput_19 @[min_max_parallel_online_comparator.scala 106:54]
          regStorageVec[9].earlyTerminated1 <= earlyTerminate1_9 @[min_max_parallel_online_comparator.scala 107:57]
          regStorageVec[9].earlyTerminated2 <= earlyTerminate2_9 @[min_max_parallel_online_comparator.scala 108:57]
          regStorageVec[9].minMaxOutput <= minOutput_2 @[min_max_parallel_online_comparator.scala 109:53]
          inst comparatorModule_10 of OnlineComparator2_10 @[online_comparator2.scala 171:34]
          comparatorModule_10.clock <= clock
          comparatorModule_10.reset <= reset
          wire earlyTerminate1_10 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_10 : UInt<1> @[online_comparator2.scala 174:31]
          wire minOutput_3 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_10.io.in1 <= io.in1[3] @[online_comparator2.scala 181:29]
          comparatorModule_10.io.in2 <= io.in2[3] @[online_comparator2.scala 182:29]
          comparatorModule_10.io.earlyTerminate <= regStorageVec[4].earlyTerminated2 @[online_comparator2.scala 184:40]
          comparatorModule_10.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_10 <= comparatorModule_10.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_10 <= comparatorModule_10.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          minOutput_3 <= comparatorModule_10.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_20 = mux(earlyTerminate1_10, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_21 = not(selectedInput_20) @[online_comparator2.scala 211:30]
          regStorageVec[10].selectedInput <= selectedInput_21 @[min_max_parallel_online_comparator.scala 106:54]
          regStorageVec[10].earlyTerminated1 <= earlyTerminate1_10 @[min_max_parallel_online_comparator.scala 107:57]
          regStorageVec[10].earlyTerminated2 <= earlyTerminate2_10 @[min_max_parallel_online_comparator.scala 108:57]
          regStorageVec[10].minMaxOutput <= minOutput_3 @[min_max_parallel_online_comparator.scala 109:53]
          inst comparatorModule_11 of OnlineComparator2_11 @[online_comparator2.scala 171:34]
          comparatorModule_11.clock <= clock
          comparatorModule_11.reset <= reset
          wire earlyTerminate1_11 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_11 : UInt<1> @[online_comparator2.scala 174:31]
          wire minOutput_4 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_11.io.in1 <= io.in1[4] @[online_comparator2.scala 181:29]
          comparatorModule_11.io.in2 <= io.in2[4] @[online_comparator2.scala 182:29]
          comparatorModule_11.io.earlyTerminate <= regStorageVec[5].earlyTerminated1 @[online_comparator2.scala 184:40]
          comparatorModule_11.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_11 <= comparatorModule_11.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_11 <= comparatorModule_11.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          minOutput_4 <= comparatorModule_11.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_22 = mux(earlyTerminate1_11, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_23 = not(selectedInput_22) @[online_comparator2.scala 211:30]
          regStorageVec[11].selectedInput <= selectedInput_23 @[min_max_parallel_online_comparator.scala 106:54]
          regStorageVec[11].earlyTerminated1 <= earlyTerminate1_11 @[min_max_parallel_online_comparator.scala 107:57]
          regStorageVec[11].earlyTerminated2 <= earlyTerminate2_11 @[min_max_parallel_online_comparator.scala 108:57]
          regStorageVec[11].minMaxOutput <= minOutput_4 @[min_max_parallel_online_comparator.scala 109:53]
          inst comparatorModule_12 of OnlineComparator2_12 @[online_comparator2.scala 171:34]
          comparatorModule_12.clock <= clock
          comparatorModule_12.reset <= reset
          wire earlyTerminate1_12 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_12 : UInt<1> @[online_comparator2.scala 174:31]
          wire minOutput_5 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_12.io.in1 <= io.in1[5] @[online_comparator2.scala 181:29]
          comparatorModule_12.io.in2 <= io.in2[5] @[online_comparator2.scala 182:29]
          comparatorModule_12.io.earlyTerminate <= regStorageVec[5].earlyTerminated2 @[online_comparator2.scala 184:40]
          comparatorModule_12.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_12 <= comparatorModule_12.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_12 <= comparatorModule_12.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          minOutput_5 <= comparatorModule_12.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_24 = mux(earlyTerminate1_12, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_25 = not(selectedInput_24) @[online_comparator2.scala 211:30]
          regStorageVec[12].selectedInput <= selectedInput_25 @[min_max_parallel_online_comparator.scala 106:54]
          regStorageVec[12].earlyTerminated1 <= earlyTerminate1_12 @[min_max_parallel_online_comparator.scala 107:57]
          regStorageVec[12].earlyTerminated2 <= earlyTerminate2_12 @[min_max_parallel_online_comparator.scala 108:57]
          regStorageVec[12].minMaxOutput <= minOutput_5 @[min_max_parallel_online_comparator.scala 109:53]
          inst comparatorModule_13 of OnlineComparator2_13 @[online_comparator2.scala 171:34]
          comparatorModule_13.clock <= clock
          comparatorModule_13.reset <= reset
          wire earlyTerminate1_13 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_13 : UInt<1> @[online_comparator2.scala 174:31]
          wire minOutput_6 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_13.io.in1 <= io.in1[6] @[online_comparator2.scala 181:29]
          comparatorModule_13.io.in2 <= io.in2[6] @[online_comparator2.scala 182:29]
          comparatorModule_13.io.earlyTerminate <= regStorageVec[6].earlyTerminated1 @[online_comparator2.scala 184:40]
          comparatorModule_13.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_13 <= comparatorModule_13.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_13 <= comparatorModule_13.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          minOutput_6 <= comparatorModule_13.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_26 = mux(earlyTerminate1_13, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_27 = not(selectedInput_26) @[online_comparator2.scala 211:30]
          regStorageVec[13].selectedInput <= selectedInput_27 @[min_max_parallel_online_comparator.scala 106:54]
          regStorageVec[13].earlyTerminated1 <= earlyTerminate1_13 @[min_max_parallel_online_comparator.scala 107:57]
          regStorageVec[13].earlyTerminated2 <= earlyTerminate2_13 @[min_max_parallel_online_comparator.scala 108:57]
          regStorageVec[13].minMaxOutput <= minOutput_6 @[min_max_parallel_online_comparator.scala 109:53]
          inst comparatorModule_14 of OnlineComparator2_14 @[online_comparator2.scala 171:34]
          comparatorModule_14.clock <= clock
          comparatorModule_14.reset <= reset
          wire earlyTerminate1_14 : UInt<1> @[online_comparator2.scala 173:31]
          wire earlyTerminate2_14 : UInt<1> @[online_comparator2.scala 174:31]
          wire minOutput_7 : UInt<1> @[online_comparator2.scala 176:28]
          comparatorModule_14.io.in1 <= io.in1[7] @[online_comparator2.scala 181:29]
          comparatorModule_14.io.in2 <= io.in2[7] @[online_comparator2.scala 182:29]
          comparatorModule_14.io.earlyTerminate <= regStorageVec[6].earlyTerminated2 @[online_comparator2.scala 184:40]
          comparatorModule_14.io.start <= io.start @[online_comparator2.scala 185:31]
          earlyTerminate1_14 <= comparatorModule_14.io.earlyTerminate1 @[online_comparator2.scala 190:21]
          earlyTerminate2_14 <= comparatorModule_14.io.earlyTerminate2 @[online_comparator2.scala 191:21]
          minOutput_7 <= comparatorModule_14.io.maxMin @[online_comparator2.scala 204:18]
          node selectedInput_28 = mux(earlyTerminate1_14, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 210:28]
          node selectedInput_29 = not(selectedInput_28) @[online_comparator2.scala 211:30]
          regStorageVec[14].selectedInput <= selectedInput_29 @[min_max_parallel_online_comparator.scala 106:54]
          regStorageVec[14].earlyTerminated1 <= earlyTerminate1_14 @[min_max_parallel_online_comparator.scala 107:57]
          regStorageVec[14].earlyTerminated2 <= earlyTerminate2_14 @[min_max_parallel_online_comparator.scala 108:57]
          regStorageVec[14].minMaxOutput <= minOutput_7 @[min_max_parallel_online_comparator.scala 109:53]
        else :
          state <= UInt<1>("h1") @[min_max_parallel_online_comparator.scala 124:19]
          outResultValid <= UInt<1>("h0") @[min_max_parallel_online_comparator.scala 125:28]
      else :
        node _T_8 = eq(UInt<1>("h1"), state) @[min_max_parallel_online_comparator.scala 58:19]
        when _T_8 : @[min_max_parallel_online_comparator.scala 58:19]
          outResultValid <= UInt<1>("h0") @[min_max_parallel_online_comparator.scala 133:24]
    io.outResult <= regStorageVec[0].minMaxOutput @[min_max_parallel_online_comparator.scala 141:16]
    io.outResultValid <= outResultValid @[min_max_parallel_online_comparator.scala 142:21]

  module FuzzyController :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip start : UInt<1>, flip in1 : UInt<1>[8], flip in2 : UInt<1>[8], outResultValid : UInt<1>, outResult : UInt<1>}

    inst minMaxTree of MinMaxParallelOnlineComparator @[min_max_parallel_online_comparator.scala 153:28]
    minMaxTree.clock <= clock
    minMaxTree.reset <= reset
    wire outResult : UInt<1> @[min_max_parallel_online_comparator.scala 154:25]
    wire outResultValid : UInt<1> @[min_max_parallel_online_comparator.scala 155:30]
    minMaxTree.io.start <= io.start @[min_max_parallel_online_comparator.scala 157:25]
    minMaxTree.io.in1[0] <= io.in1[0] @[min_max_parallel_online_comparator.scala 159:23]
    minMaxTree.io.in1[1] <= io.in1[1] @[min_max_parallel_online_comparator.scala 159:23]
    minMaxTree.io.in1[2] <= io.in1[2] @[min_max_parallel_online_comparator.scala 159:23]
    minMaxTree.io.in1[3] <= io.in1[3] @[min_max_parallel_online_comparator.scala 159:23]
    minMaxTree.io.in1[4] <= io.in1[4] @[min_max_parallel_online_comparator.scala 159:23]
    minMaxTree.io.in1[5] <= io.in1[5] @[min_max_parallel_online_comparator.scala 159:23]
    minMaxTree.io.in1[6] <= io.in1[6] @[min_max_parallel_online_comparator.scala 159:23]
    minMaxTree.io.in1[7] <= io.in1[7] @[min_max_parallel_online_comparator.scala 159:23]
    minMaxTree.io.in2[0] <= io.in2[0] @[min_max_parallel_online_comparator.scala 160:23]
    minMaxTree.io.in2[1] <= io.in2[1] @[min_max_parallel_online_comparator.scala 160:23]
    minMaxTree.io.in2[2] <= io.in2[2] @[min_max_parallel_online_comparator.scala 160:23]
    minMaxTree.io.in2[3] <= io.in2[3] @[min_max_parallel_online_comparator.scala 160:23]
    minMaxTree.io.in2[4] <= io.in2[4] @[min_max_parallel_online_comparator.scala 160:23]
    minMaxTree.io.in2[5] <= io.in2[5] @[min_max_parallel_online_comparator.scala 160:23]
    minMaxTree.io.in2[6] <= io.in2[6] @[min_max_parallel_online_comparator.scala 160:23]
    minMaxTree.io.in2[7] <= io.in2[7] @[min_max_parallel_online_comparator.scala 160:23]
    outResult <= minMaxTree.io.outResult @[min_max_parallel_online_comparator.scala 162:15]
    outResultValid <= minMaxTree.io.outResultValid @[min_max_parallel_online_comparator.scala 164:20]
    io.outResult <= outResult @[top.scala 39:16]
    io.outResultValid <= outResultValid @[top.scala 40:21]

