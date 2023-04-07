circuit OnlineFuzzification :
  module OnlineComparator2 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 33:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 37:32]
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
          node _T_3 = asUInt(reset) @[online_comparator2.scala 51:19]
          node _T_4 = eq(_T_3, UInt<1>("h0")) @[online_comparator2.scala 51:19]
          when _T_4 : @[online_comparator2.scala 51:19]
            printf(clock, UInt<1>("h1"), "dbg, comparator debug: global earlyTerminate raised\n") : printf @[online_comparator2.scala 51:19]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_5 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_6 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_7 = and(_T_5, _T_6) @[online_comparator2.scala 61:35]
          when _T_7 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            node _T_8 = asUInt(reset) @[online_comparator2.scala 73:21]
            node _T_9 = eq(_T_8, UInt<1>("h0")) @[online_comparator2.scala 73:21]
            when _T_9 : @[online_comparator2.scala 73:21]
              printf(clock, UInt<1>("h1"), "dbg, comparator debug: earlyTerminate1 => true\n") : printf_1 @[online_comparator2.scala 73:21]
            state <= UInt<1>("h1") @[online_comparator2.scala 90:17]
          else :
            node _T_10 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 92:27]
            node _T_11 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 92:45]
            node _T_12 = and(_T_10, _T_11) @[online_comparator2.scala 92:35]
            when _T_12 : @[online_comparator2.scala 92:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 96:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 98:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 99:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 100:26]
              node _T_13 = asUInt(reset) @[online_comparator2.scala 103:21]
              node _T_14 = eq(_T_13, UInt<1>("h0")) @[online_comparator2.scala 103:21]
              when _T_14 : @[online_comparator2.scala 103:21]
                printf(clock, UInt<1>("h1"), "dbg, comparator debug: earlyTerminate2 => true\n") : printf_2 @[online_comparator2.scala 103:21]
              state <= UInt<1>("h1") @[online_comparator2.scala 117:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 125:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 127:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 128:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 129:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 130:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 132:17]
              node _T_15 = asUInt(reset) @[online_comparator2.scala 135:19]
              node _T_16 = eq(_T_15, UInt<1>("h0")) @[online_comparator2.scala 135:19]
              when _T_16 : @[online_comparator2.scala 135:19]
                printf(clock, UInt<1>("h1"), "dbg, comparator debug: both bits are equal\n") : printf_3 @[online_comparator2.scala 135:19]
      else :
        node _T_17 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_17 : @[online_comparator2.scala 44:19]
          node _T_18 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 141:30]
          when _T_18 : @[online_comparator2.scala 141:42]
            maxMinOutput <= io.in2 @[online_comparator2.scala 142:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 144:24]
    else :
      state <= UInt<1>("h0") @[online_comparator2.scala 150:11]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 151:21]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 152:21]
      earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 154:27]
      earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 155:27]
      maxMinOutput <= UInt<1>("h0") @[online_comparator2.scala 157:18]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 163:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 163:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 164:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 164:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 166:13]

  module OnlineComparator2_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 33:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 37:32]
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
          node _T_3 = asUInt(reset) @[online_comparator2.scala 51:19]
          node _T_4 = eq(_T_3, UInt<1>("h0")) @[online_comparator2.scala 51:19]
          when _T_4 : @[online_comparator2.scala 51:19]
            printf(clock, UInt<1>("h1"), "dbg, comparator debug: global earlyTerminate raised\n") : printf @[online_comparator2.scala 51:19]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_5 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_6 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_7 = and(_T_5, _T_6) @[online_comparator2.scala 61:35]
          when _T_7 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            node _T_8 = asUInt(reset) @[online_comparator2.scala 73:21]
            node _T_9 = eq(_T_8, UInt<1>("h0")) @[online_comparator2.scala 73:21]
            when _T_9 : @[online_comparator2.scala 73:21]
              printf(clock, UInt<1>("h1"), "dbg, comparator debug: earlyTerminate1 => true\n") : printf_1 @[online_comparator2.scala 73:21]
            state <= UInt<1>("h1") @[online_comparator2.scala 90:17]
          else :
            node _T_10 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 92:27]
            node _T_11 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 92:45]
            node _T_12 = and(_T_10, _T_11) @[online_comparator2.scala 92:35]
            when _T_12 : @[online_comparator2.scala 92:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 96:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 98:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 99:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 100:26]
              node _T_13 = asUInt(reset) @[online_comparator2.scala 103:21]
              node _T_14 = eq(_T_13, UInt<1>("h0")) @[online_comparator2.scala 103:21]
              when _T_14 : @[online_comparator2.scala 103:21]
                printf(clock, UInt<1>("h1"), "dbg, comparator debug: earlyTerminate2 => true\n") : printf_2 @[online_comparator2.scala 103:21]
              state <= UInt<1>("h1") @[online_comparator2.scala 117:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 125:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 127:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 128:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 129:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 130:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 132:17]
              node _T_15 = asUInt(reset) @[online_comparator2.scala 135:19]
              node _T_16 = eq(_T_15, UInt<1>("h0")) @[online_comparator2.scala 135:19]
              when _T_16 : @[online_comparator2.scala 135:19]
                printf(clock, UInt<1>("h1"), "dbg, comparator debug: both bits are equal\n") : printf_3 @[online_comparator2.scala 135:19]
      else :
        node _T_17 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_17 : @[online_comparator2.scala 44:19]
          node _T_18 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 141:30]
          when _T_18 : @[online_comparator2.scala 141:42]
            maxMinOutput <= io.in2 @[online_comparator2.scala 142:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 144:24]
    else :
      state <= UInt<1>("h0") @[online_comparator2.scala 150:11]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 151:21]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 152:21]
      earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 154:27]
      earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 155:27]
      maxMinOutput <= UInt<1>("h0") @[online_comparator2.scala 157:18]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 163:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 163:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 164:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 164:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 166:13]

  module OnlineComparator2_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 33:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 37:32]
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
          node _T_3 = asUInt(reset) @[online_comparator2.scala 51:19]
          node _T_4 = eq(_T_3, UInt<1>("h0")) @[online_comparator2.scala 51:19]
          when _T_4 : @[online_comparator2.scala 51:19]
            printf(clock, UInt<1>("h1"), "dbg, comparator debug: global earlyTerminate raised\n") : printf @[online_comparator2.scala 51:19]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_5 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_6 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_7 = and(_T_5, _T_6) @[online_comparator2.scala 61:35]
          when _T_7 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            node _T_8 = asUInt(reset) @[online_comparator2.scala 73:21]
            node _T_9 = eq(_T_8, UInt<1>("h0")) @[online_comparator2.scala 73:21]
            when _T_9 : @[online_comparator2.scala 73:21]
              printf(clock, UInt<1>("h1"), "dbg, comparator debug: earlyTerminate1 => true\n") : printf_1 @[online_comparator2.scala 73:21]
            state <= UInt<1>("h1") @[online_comparator2.scala 90:17]
          else :
            node _T_10 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 92:27]
            node _T_11 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 92:45]
            node _T_12 = and(_T_10, _T_11) @[online_comparator2.scala 92:35]
            when _T_12 : @[online_comparator2.scala 92:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 96:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 98:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 99:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 100:26]
              node _T_13 = asUInt(reset) @[online_comparator2.scala 103:21]
              node _T_14 = eq(_T_13, UInt<1>("h0")) @[online_comparator2.scala 103:21]
              when _T_14 : @[online_comparator2.scala 103:21]
                printf(clock, UInt<1>("h1"), "dbg, comparator debug: earlyTerminate2 => true\n") : printf_2 @[online_comparator2.scala 103:21]
              state <= UInt<1>("h1") @[online_comparator2.scala 117:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 125:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 127:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 128:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 129:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 130:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 132:17]
              node _T_15 = asUInt(reset) @[online_comparator2.scala 135:19]
              node _T_16 = eq(_T_15, UInt<1>("h0")) @[online_comparator2.scala 135:19]
              when _T_16 : @[online_comparator2.scala 135:19]
                printf(clock, UInt<1>("h1"), "dbg, comparator debug: both bits are equal\n") : printf_3 @[online_comparator2.scala 135:19]
      else :
        node _T_17 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_17 : @[online_comparator2.scala 44:19]
          node _T_18 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 141:30]
          when _T_18 : @[online_comparator2.scala 141:42]
            maxMinOutput <= io.in2 @[online_comparator2.scala 142:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 144:24]
    else :
      state <= UInt<1>("h0") @[online_comparator2.scala 150:11]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 151:21]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 152:21]
      earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 154:27]
      earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 155:27]
      maxMinOutput <= UInt<1>("h0") @[online_comparator2.scala 157:18]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 163:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 163:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 164:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 164:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 166:13]

  module OnlineComparator2_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 33:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 36:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 37:32]
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
          node _T_3 = asUInt(reset) @[online_comparator2.scala 51:19]
          node _T_4 = eq(_T_3, UInt<1>("h0")) @[online_comparator2.scala 51:19]
          when _T_4 : @[online_comparator2.scala 51:19]
            printf(clock, UInt<1>("h1"), "dbg, comparator debug: global earlyTerminate raised\n") : printf @[online_comparator2.scala 51:19]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 54:27]
          earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 55:33]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 56:27]
          earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 57:33]
          state <= UInt<1>("h1") @[online_comparator2.scala 59:17]
        else :
          node _T_5 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 61:27]
          node _T_6 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 61:45]
          node _T_7 = and(_T_5, _T_6) @[online_comparator2.scala 61:35]
          when _T_7 : @[online_comparator2.scala 61:54]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 65:29]
            earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 66:35]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 67:29]
            earlyTerminate2Shadow <= UInt<1>("h1") @[online_comparator2.scala 68:35]
            maxMinOutput <= io.in1 @[online_comparator2.scala 70:26]
            node _T_8 = asUInt(reset) @[online_comparator2.scala 73:21]
            node _T_9 = eq(_T_8, UInt<1>("h0")) @[online_comparator2.scala 73:21]
            when _T_9 : @[online_comparator2.scala 73:21]
              printf(clock, UInt<1>("h1"), "dbg, comparator debug: earlyTerminate1 => true\n") : printf_1 @[online_comparator2.scala 73:21]
            state <= UInt<1>("h1") @[online_comparator2.scala 90:17]
          else :
            node _T_10 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 92:27]
            node _T_11 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 92:45]
            node _T_12 = and(_T_10, _T_11) @[online_comparator2.scala 92:35]
            when _T_12 : @[online_comparator2.scala 92:54]
              earlyTerminate1Shadow <= UInt<1>("h1") @[online_comparator2.scala 96:35]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:29]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 98:35]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 99:29]
              maxMinOutput <= io.in2 @[online_comparator2.scala 100:26]
              node _T_13 = asUInt(reset) @[online_comparator2.scala 103:21]
              node _T_14 = eq(_T_13, UInt<1>("h0")) @[online_comparator2.scala 103:21]
              when _T_14 : @[online_comparator2.scala 103:21]
                printf(clock, UInt<1>("h1"), "dbg, comparator debug: earlyTerminate2 => true\n") : printf_2 @[online_comparator2.scala 103:21]
              state <= UInt<1>("h1") @[online_comparator2.scala 117:17]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 125:24]
              earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 127:33]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 128:27]
              earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 129:33]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 130:27]
              state <= UInt<1>("h0") @[online_comparator2.scala 132:17]
              node _T_15 = asUInt(reset) @[online_comparator2.scala 135:19]
              node _T_16 = eq(_T_15, UInt<1>("h0")) @[online_comparator2.scala 135:19]
              when _T_16 : @[online_comparator2.scala 135:19]
                printf(clock, UInt<1>("h1"), "dbg, comparator debug: both bits are equal\n") : printf_3 @[online_comparator2.scala 135:19]
      else :
        node _T_17 = eq(UInt<1>("h1"), state) @[online_comparator2.scala 44:19]
        when _T_17 : @[online_comparator2.scala 44:19]
          node _T_18 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 141:30]
          when _T_18 : @[online_comparator2.scala 141:42]
            maxMinOutput <= io.in2 @[online_comparator2.scala 142:24]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 144:24]
    else :
      state <= UInt<1>("h0") @[online_comparator2.scala 150:11]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 151:21]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 152:21]
      earlyTerminate1Shadow <= UInt<1>("h0") @[online_comparator2.scala 154:27]
      earlyTerminate2Shadow <= UInt<1>("h0") @[online_comparator2.scala 155:27]
      maxMinOutput <= UInt<1>("h0") @[online_comparator2.scala 157:18]
    node _io_earlyTerminate1_T = or(earlyTerminate1, earlyTerminate1Shadow) @[online_comparator2.scala 163:41]
    io.earlyTerminate1 <= _io_earlyTerminate1_T @[online_comparator2.scala 163:22]
    node _io_earlyTerminate2_T = or(earlyTerminate2, earlyTerminate2Shadow) @[online_comparator2.scala 164:41]
    io.earlyTerminate2 <= _io_earlyTerminate2_T @[online_comparator2.scala 164:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 166:13]

  module FiveInputCustomIndexBasedMaxComparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip inputs : UInt<1>[5], result : UInt<3>, resultValid : UInt<1>}

    reg regResult : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[5_input_custom_index_based_max_comparator.scala 37:26]
    reg regResultValid : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[5_input_custom_index_based_max_comparator.scala 38:31]
    reg regResultValidDelay : UInt<1>, clock with :
      reset => (UInt<1>("h0"), regResultValidDelay) @[5_input_custom_index_based_max_comparator.scala 39:36]
    regResultValidDelay <= regResultValid @[5_input_custom_index_based_max_comparator.scala 39:36]
    reg regIndexBasedMaxResultVec : { selectedInput : UInt<3>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxOutput : UInt<1>}[4], clock with :
      reset => (UInt<1>("h0"), regIndexBasedMaxResultVec) @[5_input_custom_index_based_max_comparator.scala 41:38]
    reg delayFor5thInput : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[5_input_custom_index_based_max_comparator.scala 48:33]
    reg delayFor5thInput_2 : UInt, clock with :
      reset => (UInt<1>("h0"), delayFor5thInput_2) @[5_input_custom_index_based_max_comparator.scala 49:35]
    delayFor5thInput_2 <= delayFor5thInput @[5_input_custom_index_based_max_comparator.scala 49:35]
    delayFor5thInput <= io.inputs[4] @[5_input_custom_index_based_max_comparator.scala 50:20]
    when io.start : @[5_input_custom_index_based_max_comparator.scala 52:18]
      inst comparatorModule of OnlineComparator2 @[online_comparator2.scala 181:34]
      comparatorModule.clock <= clock
      comparatorModule.reset <= reset
      wire earlyTerminate1_0 : UInt<1> @[online_comparator2.scala 183:31]
      wire earlyTerminate2_0 : UInt<1> @[online_comparator2.scala 184:31]
      wire maxOutput_0 : UInt<1> @[online_comparator2.scala 186:28]
      comparatorModule.io.in1 <= io.inputs[0] @[online_comparator2.scala 191:29]
      comparatorModule.io.in2 <= io.inputs[1] @[online_comparator2.scala 192:29]
      comparatorModule.io.earlyTerminate <= regIndexBasedMaxResultVec[2].earlyTerminate1 @[online_comparator2.scala 194:40]
      comparatorModule.io.start <= io.start @[online_comparator2.scala 195:31]
      earlyTerminate1_0 <= comparatorModule.io.earlyTerminate1 @[online_comparator2.scala 200:21]
      earlyTerminate2_0 <= comparatorModule.io.earlyTerminate2 @[online_comparator2.scala 201:21]
      node _T = asUInt(reset) @[online_comparator2.scala 204:13]
      node _T_1 = eq(_T, UInt<1>("h0")) @[online_comparator2.scala 204:13]
      when _T_1 : @[online_comparator2.scala 204:13]
        printf(clock, UInt<1>("h1"), "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n", io.start, io.inputs[0], io.inputs[1], earlyTerminate1_0, earlyTerminate2_0) : printf @[online_comparator2.scala 204:13]
      maxOutput_0 <= comparatorModule.io.maxMin @[online_comparator2.scala 214:18]
      node selectedInput = mux(earlyTerminate1_0, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 219:28]
      node selectedInput_0 = not(selectedInput) @[online_comparator2.scala 220:30]
      node _T_2 = eq(selectedInput_0, UInt<1>("h0")) @[5_input_custom_index_based_max_comparator.scala 63:26]
      when _T_2 : @[5_input_custom_index_based_max_comparator.scala 63:39]
        regIndexBasedMaxResultVec[0].selectedInput <= UInt<1>("h0") @[5_input_custom_index_based_max_comparator.scala 64:50]
      else :
        regIndexBasedMaxResultVec[0].selectedInput <= UInt<1>("h1") @[5_input_custom_index_based_max_comparator.scala 66:50]
      regIndexBasedMaxResultVec[0].earlyTerminate1 <= earlyTerminate1_0 @[5_input_custom_index_based_max_comparator.scala 69:50]
      regIndexBasedMaxResultVec[0].earlyTerminate2 <= earlyTerminate2_0 @[5_input_custom_index_based_max_comparator.scala 70:50]
      regIndexBasedMaxResultVec[0].maxOutput <= maxOutput_0 @[5_input_custom_index_based_max_comparator.scala 71:44]
      inst comparatorModule_1 of OnlineComparator2_1 @[online_comparator2.scala 181:34]
      comparatorModule_1.clock <= clock
      comparatorModule_1.reset <= reset
      wire earlyTerminate1_1 : UInt<1> @[online_comparator2.scala 183:31]
      wire earlyTerminate2_1 : UInt<1> @[online_comparator2.scala 184:31]
      wire maxOutput_1 : UInt<1> @[online_comparator2.scala 186:28]
      comparatorModule_1.io.in1 <= io.inputs[2] @[online_comparator2.scala 191:29]
      comparatorModule_1.io.in2 <= io.inputs[3] @[online_comparator2.scala 192:29]
      comparatorModule_1.io.earlyTerminate <= regIndexBasedMaxResultVec[2].earlyTerminate2 @[online_comparator2.scala 194:40]
      comparatorModule_1.io.start <= io.start @[online_comparator2.scala 195:31]
      earlyTerminate1_1 <= comparatorModule_1.io.earlyTerminate1 @[online_comparator2.scala 200:21]
      earlyTerminate2_1 <= comparatorModule_1.io.earlyTerminate2 @[online_comparator2.scala 201:21]
      node _T_3 = asUInt(reset) @[online_comparator2.scala 204:13]
      node _T_4 = eq(_T_3, UInt<1>("h0")) @[online_comparator2.scala 204:13]
      when _T_4 : @[online_comparator2.scala 204:13]
        printf(clock, UInt<1>("h1"), "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n", io.start, io.inputs[2], io.inputs[3], earlyTerminate1_1, earlyTerminate2_1) : printf_1 @[online_comparator2.scala 204:13]
      maxOutput_1 <= comparatorModule_1.io.maxMin @[online_comparator2.scala 214:18]
      node selectedInput_1 = mux(earlyTerminate1_1, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 219:28]
      node selectedInput_1_1 = not(selectedInput_1) @[online_comparator2.scala 220:30]
      node _T_5 = eq(selectedInput_1_1, UInt<1>("h0")) @[5_input_custom_index_based_max_comparator.scala 82:26]
      when _T_5 : @[5_input_custom_index_based_max_comparator.scala 82:39]
        regIndexBasedMaxResultVec[1].selectedInput <= UInt<2>("h2") @[5_input_custom_index_based_max_comparator.scala 83:50]
      else :
        regIndexBasedMaxResultVec[1].selectedInput <= UInt<2>("h3") @[5_input_custom_index_based_max_comparator.scala 85:50]
      regIndexBasedMaxResultVec[1].earlyTerminate1 <= earlyTerminate1_1 @[5_input_custom_index_based_max_comparator.scala 88:50]
      regIndexBasedMaxResultVec[1].earlyTerminate2 <= earlyTerminate2_1 @[5_input_custom_index_based_max_comparator.scala 89:50]
      regIndexBasedMaxResultVec[1].maxOutput <= maxOutput_1 @[5_input_custom_index_based_max_comparator.scala 90:44]
      inst comparatorModule_2 of OnlineComparator2_2 @[online_comparator2.scala 181:34]
      comparatorModule_2.clock <= clock
      comparatorModule_2.reset <= reset
      wire earlyTerminate1_2 : UInt<1> @[online_comparator2.scala 183:31]
      wire earlyTerminate2_2 : UInt<1> @[online_comparator2.scala 184:31]
      wire maxOutput_2 : UInt<1> @[online_comparator2.scala 186:28]
      comparatorModule_2.io.in1 <= regIndexBasedMaxResultVec[0].maxOutput @[online_comparator2.scala 191:29]
      comparatorModule_2.io.in2 <= regIndexBasedMaxResultVec[1].maxOutput @[online_comparator2.scala 192:29]
      comparatorModule_2.io.earlyTerminate <= regIndexBasedMaxResultVec[3].earlyTerminate1 @[online_comparator2.scala 194:40]
      comparatorModule_2.io.start <= io.start @[online_comparator2.scala 195:31]
      earlyTerminate1_2 <= comparatorModule_2.io.earlyTerminate1 @[online_comparator2.scala 200:21]
      earlyTerminate2_2 <= comparatorModule_2.io.earlyTerminate2 @[online_comparator2.scala 201:21]
      node _T_6 = asUInt(reset) @[online_comparator2.scala 204:13]
      node _T_7 = eq(_T_6, UInt<1>("h0")) @[online_comparator2.scala 204:13]
      when _T_7 : @[online_comparator2.scala 204:13]
        printf(clock, UInt<1>("h1"), "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n", io.start, regIndexBasedMaxResultVec[0].maxOutput, regIndexBasedMaxResultVec[1].maxOutput, earlyTerminate1_2, earlyTerminate2_2) : printf_2 @[online_comparator2.scala 204:13]
      maxOutput_2 <= comparatorModule_2.io.maxMin @[online_comparator2.scala 214:18]
      node selectedInput_2 = mux(earlyTerminate1_2, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 219:28]
      node selectedInput_2_1 = not(selectedInput_2) @[online_comparator2.scala 220:30]
      node _T_8 = eq(selectedInput_2_1, UInt<1>("h0")) @[5_input_custom_index_based_max_comparator.scala 101:26]
      when _T_8 : @[5_input_custom_index_based_max_comparator.scala 101:39]
        regIndexBasedMaxResultVec[2].selectedInput <= regIndexBasedMaxResultVec[0].selectedInput @[5_input_custom_index_based_max_comparator.scala 102:50]
      else :
        regIndexBasedMaxResultVec[2].selectedInput <= regIndexBasedMaxResultVec[1].selectedInput @[5_input_custom_index_based_max_comparator.scala 106:50]
      regIndexBasedMaxResultVec[2].earlyTerminate1 <= earlyTerminate1_2 @[5_input_custom_index_based_max_comparator.scala 111:50]
      regIndexBasedMaxResultVec[2].earlyTerminate2 <= earlyTerminate2_2 @[5_input_custom_index_based_max_comparator.scala 112:50]
      regIndexBasedMaxResultVec[2].maxOutput <= maxOutput_2 @[5_input_custom_index_based_max_comparator.scala 113:44]
      inst comparatorModule_3 of OnlineComparator2_3 @[online_comparator2.scala 181:34]
      comparatorModule_3.clock <= clock
      comparatorModule_3.reset <= reset
      wire earlyTerminate1_3 : UInt<1> @[online_comparator2.scala 183:31]
      wire earlyTerminate2_3 : UInt<1> @[online_comparator2.scala 184:31]
      wire maxOutput_3 : UInt<1> @[online_comparator2.scala 186:28]
      comparatorModule_3.io.in1 <= regIndexBasedMaxResultVec[2].maxOutput @[online_comparator2.scala 191:29]
      comparatorModule_3.io.in2 <= delayFor5thInput_2 @[online_comparator2.scala 192:29]
      comparatorModule_3.io.earlyTerminate <= UInt<1>("h0") @[online_comparator2.scala 194:40]
      comparatorModule_3.io.start <= io.start @[online_comparator2.scala 195:31]
      earlyTerminate1_3 <= comparatorModule_3.io.earlyTerminate1 @[online_comparator2.scala 200:21]
      earlyTerminate2_3 <= comparatorModule_3.io.earlyTerminate2 @[online_comparator2.scala 201:21]
      node _T_9 = asUInt(reset) @[online_comparator2.scala 204:13]
      node _T_10 = eq(_T_9, UInt<1>("h0")) @[online_comparator2.scala 204:13]
      when _T_10 : @[online_comparator2.scala 204:13]
        printf(clock, UInt<1>("h1"), "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n", io.start, regIndexBasedMaxResultVec[2].maxOutput, delayFor5thInput_2, earlyTerminate1_3, earlyTerminate2_3) : printf_3 @[online_comparator2.scala 204:13]
      maxOutput_3 <= comparatorModule_3.io.maxMin @[online_comparator2.scala 214:18]
      node selectedInput_3 = mux(earlyTerminate1_3, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 219:28]
      node selectedInput_3_1 = not(selectedInput_3) @[online_comparator2.scala 220:30]
      node _T_11 = eq(selectedInput_3_1, UInt<1>("h0")) @[5_input_custom_index_based_max_comparator.scala 124:26]
      when _T_11 : @[5_input_custom_index_based_max_comparator.scala 124:39]
        regIndexBasedMaxResultVec[3].selectedInput <= regIndexBasedMaxResultVec[2].selectedInput @[5_input_custom_index_based_max_comparator.scala 125:50]
      else :
        regIndexBasedMaxResultVec[3].selectedInput <= UInt<3>("h4") @[5_input_custom_index_based_max_comparator.scala 129:50]
      regIndexBasedMaxResultVec[3].earlyTerminate1 <= earlyTerminate1_3 @[5_input_custom_index_based_max_comparator.scala 132:50]
      regIndexBasedMaxResultVec[3].earlyTerminate2 <= earlyTerminate2_3 @[5_input_custom_index_based_max_comparator.scala 133:50]
      regIndexBasedMaxResultVec[3].maxOutput <= maxOutput_3 @[5_input_custom_index_based_max_comparator.scala 134:44]
      node _T_12 = eq(regIndexBasedMaxResultVec[3].earlyTerminate1, UInt<1>("h1")) @[5_input_custom_index_based_max_comparator.scala 142:25]
      node _T_13 = eq(regIndexBasedMaxResultVec[3].earlyTerminate2, UInt<1>("h1")) @[5_input_custom_index_based_max_comparator.scala 144:25]
      node _T_14 = or(_T_12, _T_13) @[5_input_custom_index_based_max_comparator.scala 142:36]
      when _T_14 : @[5_input_custom_index_based_max_comparator.scala 145:7]
        regResultValid <= UInt<1>("h1") @[5_input_custom_index_based_max_comparator.scala 149:22]
    else :
      skip
    io.result <= regIndexBasedMaxResultVec[3].selectedInput @[5_input_custom_index_based_max_comparator.scala 164:13]
    io.resultValid <= regResultValidDelay @[5_input_custom_index_based_max_comparator.scala 166:18]

  module OnlineFuzzification :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip start : UInt<1>, flip inputs : UInt<1>[5], outResultValid : UInt<1>, outResult : UInt<3>}

    node _T = eq(io.start, UInt<1>("h1")) @[online_fuzzification.scala 52:17]
    when _T : @[online_fuzzification.scala 52:29]
      inst comparatorModule of FiveInputCustomIndexBasedMaxComparator @[5_input_custom_index_based_max_comparator.scala 180:34]
      comparatorModule.clock <= clock
      comparatorModule.reset <= reset
      wire result : UInt<3> @[5_input_custom_index_based_max_comparator.scala 184:22]
      wire resultValid : UInt<1> @[5_input_custom_index_based_max_comparator.scala 185:27]
      comparatorModule.io.start <= UInt<1>("h1") @[5_input_custom_index_based_max_comparator.scala 190:31]
      comparatorModule.io.inputs[0] <= io.inputs[0] @[5_input_custom_index_based_max_comparator.scala 191:32]
      comparatorModule.io.inputs[1] <= io.inputs[1] @[5_input_custom_index_based_max_comparator.scala 191:32]
      comparatorModule.io.inputs[2] <= io.inputs[2] @[5_input_custom_index_based_max_comparator.scala 191:32]
      comparatorModule.io.inputs[3] <= io.inputs[3] @[5_input_custom_index_based_max_comparator.scala 191:32]
      comparatorModule.io.inputs[4] <= io.inputs[4] @[5_input_custom_index_based_max_comparator.scala 191:32]
      result <= comparatorModule.io.result @[5_input_custom_index_based_max_comparator.scala 193:12]
      resultValid <= comparatorModule.io.resultValid @[5_input_custom_index_based_max_comparator.scala 194:17]
      io.outResult <= result @[online_fuzzification.scala 63:18]
      io.outResultValid <= resultValid @[online_fuzzification.scala 64:23]
    else :
      io.outResult <= UInt<1>("h0") @[online_fuzzification.scala 69:18]
      io.outResultValid <= UInt<1>("h0") @[online_fuzzification.scala 70:23]

