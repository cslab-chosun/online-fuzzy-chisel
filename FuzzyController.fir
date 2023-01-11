circuit FuzzyController :
  module OnlineComparator2 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 72:27]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 73:27]
            maxMinOutput <= io.in1 @[online_comparator2.scala 74:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:27]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 98:27]
              maxMinOutput <= io.in2 @[online_comparator2.scala 99:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 72:27]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 73:27]
            maxMinOutput <= io.in1 @[online_comparator2.scala 74:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:27]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 98:27]
              maxMinOutput <= io.in2 @[online_comparator2.scala 99:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 72:27]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 73:27]
            maxMinOutput <= io.in1 @[online_comparator2.scala 74:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:27]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 98:27]
              maxMinOutput <= io.in2 @[online_comparator2.scala 99:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 72:27]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 73:27]
            maxMinOutput <= io.in1 @[online_comparator2.scala 74:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:27]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 98:27]
              maxMinOutput <= io.in2 @[online_comparator2.scala 99:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 72:27]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 73:27]
            maxMinOutput <= io.in1 @[online_comparator2.scala 74:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:27]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 98:27]
              maxMinOutput <= io.in2 @[online_comparator2.scala 99:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 72:27]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 73:27]
            maxMinOutput <= io.in1 @[online_comparator2.scala 74:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:27]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 98:27]
              maxMinOutput <= io.in2 @[online_comparator2.scala 99:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 72:27]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 73:27]
            maxMinOutput <= io.in1 @[online_comparator2.scala 74:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 97:27]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 98:27]
              maxMinOutput <= io.in2 @[online_comparator2.scala 99:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 82:27]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 83:27]
            maxMinOutput <= io.in2 @[online_comparator2.scala 84:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 106:27]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 107:27]
              maxMinOutput <= io.in1 @[online_comparator2.scala 108:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 82:27]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 83:27]
            maxMinOutput <= io.in2 @[online_comparator2.scala 84:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 106:27]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 107:27]
              maxMinOutput <= io.in1 @[online_comparator2.scala 108:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 82:27]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 83:27]
            maxMinOutput <= io.in2 @[online_comparator2.scala 84:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 106:27]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 107:27]
              maxMinOutput <= io.in1 @[online_comparator2.scala 108:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 82:27]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 83:27]
            maxMinOutput <= io.in2 @[online_comparator2.scala 84:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 106:27]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 107:27]
              maxMinOutput <= io.in1 @[online_comparator2.scala 108:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 82:27]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 83:27]
            maxMinOutput <= io.in2 @[online_comparator2.scala 84:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 106:27]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 107:27]
              maxMinOutput <= io.in1 @[online_comparator2.scala 108:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 82:27]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 83:27]
            maxMinOutput <= io.in2 @[online_comparator2.scala 84:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 106:27]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 107:27]
              maxMinOutput <= io.in1 @[online_comparator2.scala 108:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 82:27]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 83:27]
            maxMinOutput <= io.in2 @[online_comparator2.scala 84:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 106:27]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 107:27]
              maxMinOutput <= io.in1 @[online_comparator2.scala 108:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module OnlineComparator2_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[online_comparator2.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator2.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<2>("h0"), state) @[online_comparator2.scala 35:17]
    when _T : @[online_comparator2.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator2.scala 46:21]
      when _T_1 : @[online_comparator2.scala 46:33]
        state <= UInt<2>("h1") @[online_comparator2.scala 52:15]
    else :
      node _T_2 = eq(UInt<2>("h1"), state) @[online_comparator2.scala 35:17]
      when _T_2 : @[online_comparator2.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator2.scala 57:30]
        when _T_3 : @[online_comparator2.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 64:25]
          state <= UInt<2>("h2") @[online_comparator2.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator2.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator2.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator2.scala 68:33]
          when _T_6 : @[online_comparator2.scala 68:52]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator2.scala 82:27]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 83:27]
            maxMinOutput <= io.in2 @[online_comparator2.scala 84:24]
            state <= UInt<2>("h2") @[online_comparator2.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator2.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator2.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator2.scala 94:33]
            when _T_9 : @[online_comparator2.scala 94:52]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 106:27]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator2.scala 107:27]
              maxMinOutput <= io.in1 @[online_comparator2.scala 108:24]
              state <= UInt<2>("h2") @[online_comparator2.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator2.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator2.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator2.scala 126:25]
              state <= UInt<2>("h1") @[online_comparator2.scala 128:15]
      else :
        node _T_10 = eq(UInt<2>("h2"), state) @[online_comparator2.scala 35:17]
        when _T_10 : @[online_comparator2.scala 35:17]
          node _T_11 = eq(earlyTerminate1, UInt<1>("h1")) @[online_comparator2.scala 137:29]
          when _T_11 : @[online_comparator2.scala 137:41]
            maxMinOutput <= io.in2 @[online_comparator2.scala 138:22]
          else :
            maxMinOutput <= io.in1 @[online_comparator2.scala 140:22]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator2.scala 148:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator2.scala 149:22]
    io.maxMin <= maxMinOutput @[online_comparator2.scala 151:13]

  module MinMaxParallelOnlineComparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<1>[8], flip in2 : UInt<1>[8], outResultValid : UInt<1>, outResult : UInt<1>}

    reg outResultValid : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max_parallel_online_comparator.scala 46:31]
    reg outResult : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max_parallel_online_comparator.scala 47:26]
    reg regStorageVec : { selectedInput : UInt<1>, earlyTerminated : UInt<1>, minMaxOutput : UInt<1>, earlyTerminated1 : UInt<1>, earlyTerminated2 : UInt<1>}[15], clock with :
      reset => (UInt<1>("h0"), regStorageVec) @[min_max_parallel_online_comparator.scala 49:26]
    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[min_max_parallel_online_comparator.scala 52:22]
    reg currentIteration : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[min_max_parallel_online_comparator.scala 54:33]
    node _T = eq(UInt<2>("h0"), state) @[min_max_parallel_online_comparator.scala 56:17]
    when _T : @[min_max_parallel_online_comparator.scala 56:17]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[min_max_parallel_online_comparator.scala 60:22]
      when _T_1 : @[min_max_parallel_online_comparator.scala 60:34]
        state <= UInt<2>("h1") @[min_max_parallel_online_comparator.scala 61:15]
        node _T_2 = asUInt(reset) @[min_max_parallel_online_comparator.scala 62:15]
        node _T_3 = eq(_T_2, UInt<1>("h0")) @[min_max_parallel_online_comparator.scala 62:15]
        when _T_3 : @[min_max_parallel_online_comparator.scala 62:15]
          printf(clock, UInt<1>("h1"), "=============================================maximum index : %d\n", UInt<4>("hf")) : printf @[min_max_parallel_online_comparator.scala 62:15]
    else :
      node _T_4 = eq(UInt<2>("h1"), state) @[min_max_parallel_online_comparator.scala 56:17]
      when _T_4 : @[min_max_parallel_online_comparator.scala 56:17]
        node _currentIteration_T = add(currentIteration, UInt<1>("h1")) @[min_max_parallel_online_comparator.scala 67:44]
        node _currentIteration_T_1 = tail(_currentIteration_T, 1) @[min_max_parallel_online_comparator.scala 67:44]
        currentIteration <= _currentIteration_T_1 @[min_max_parallel_online_comparator.scala 67:24]
        outResult <= regStorageVec[0].minMaxOutput @[min_max_parallel_online_comparator.scala 68:17]
        node _T_5 = sub(UInt<4>("h8"), UInt<1>("h1")) @[min_max_parallel_online_comparator.scala 70:38]
        node _T_6 = tail(_T_5, 1) @[min_max_parallel_online_comparator.scala 70:38]
        node _T_7 = add(_T_6, UInt<2>("h3")) @[min_max_parallel_online_comparator.scala 70:44]
        node _T_8 = tail(_T_7, 1) @[min_max_parallel_online_comparator.scala 70:44]
        node _T_9 = add(_T_8, UInt<1>("h1")) @[min_max_parallel_online_comparator.scala 70:83]
        node _T_10 = tail(_T_9, 1) @[min_max_parallel_online_comparator.scala 70:83]
        node _T_11 = neq(currentIteration, _T_10) @[min_max_parallel_online_comparator.scala 70:30]
        when _T_11 : @[min_max_parallel_online_comparator.scala 70:90]
          inst comparatorModule of OnlineComparator2 @[online_comparator2.scala 163:34]
          comparatorModule.clock <= clock
          comparatorModule.reset <= reset
          wire earlyTerminate1 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2 : UInt<1> @[online_comparator2.scala 166:31]
          wire maxOutput : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule.io.in1 <= regStorageVec[1].minMaxOutput @[online_comparator2.scala 173:29]
          comparatorModule.io.in2 <= regStorageVec[2].minMaxOutput @[online_comparator2.scala 174:29]
          comparatorModule.io.earlyTerminate <= regStorageVec[0].earlyTerminated2 @[online_comparator2.scala 176:40]
          comparatorModule.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1 <= comparatorModule.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2 <= comparatorModule.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          maxOutput <= comparatorModule.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput = mux(earlyTerminate1, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_1 = not(selectedInput) @[online_comparator2.scala 203:30]
          regStorageVec[0].selectedInput <= selectedInput_1 @[min_max_parallel_online_comparator.scala 82:48]
          regStorageVec[0].earlyTerminated1 <= earlyTerminate1 @[min_max_parallel_online_comparator.scala 83:51]
          regStorageVec[0].earlyTerminated2 <= earlyTerminate2 @[min_max_parallel_online_comparator.scala 84:51]
          regStorageVec[0].minMaxOutput <= maxOutput @[min_max_parallel_online_comparator.scala 85:47]
          inst comparatorModule_1 of OnlineComparator2_1 @[online_comparator2.scala 163:34]
          comparatorModule_1.clock <= clock
          comparatorModule_1.reset <= reset
          wire earlyTerminate1_1 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_1 : UInt<1> @[online_comparator2.scala 166:31]
          wire maxOutput_1 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_1.io.in1 <= regStorageVec[3].minMaxOutput @[online_comparator2.scala 173:29]
          comparatorModule_1.io.in2 <= regStorageVec[4].minMaxOutput @[online_comparator2.scala 174:29]
          comparatorModule_1.io.earlyTerminate <= regStorageVec[0].earlyTerminated1 @[online_comparator2.scala 176:40]
          comparatorModule_1.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_1 <= comparatorModule_1.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_1 <= comparatorModule_1.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          maxOutput_1 <= comparatorModule_1.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_2 = mux(earlyTerminate1_1, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_3 = not(selectedInput_2) @[online_comparator2.scala 203:30]
          regStorageVec[1].selectedInput <= selectedInput_3 @[min_max_parallel_online_comparator.scala 82:48]
          regStorageVec[1].earlyTerminated1 <= earlyTerminate1_1 @[min_max_parallel_online_comparator.scala 83:51]
          regStorageVec[1].earlyTerminated2 <= earlyTerminate2_1 @[min_max_parallel_online_comparator.scala 84:51]
          regStorageVec[1].minMaxOutput <= maxOutput_1 @[min_max_parallel_online_comparator.scala 85:47]
          inst comparatorModule_2 of OnlineComparator2_2 @[online_comparator2.scala 163:34]
          comparatorModule_2.clock <= clock
          comparatorModule_2.reset <= reset
          wire earlyTerminate1_2 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_2 : UInt<1> @[online_comparator2.scala 166:31]
          wire maxOutput_2 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_2.io.in1 <= regStorageVec[5].minMaxOutput @[online_comparator2.scala 173:29]
          comparatorModule_2.io.in2 <= regStorageVec[6].minMaxOutput @[online_comparator2.scala 174:29]
          comparatorModule_2.io.earlyTerminate <= regStorageVec[0].earlyTerminated2 @[online_comparator2.scala 176:40]
          comparatorModule_2.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_2 <= comparatorModule_2.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_2 <= comparatorModule_2.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          maxOutput_2 <= comparatorModule_2.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_4 = mux(earlyTerminate1_2, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_5 = not(selectedInput_4) @[online_comparator2.scala 203:30]
          regStorageVec[2].selectedInput <= selectedInput_5 @[min_max_parallel_online_comparator.scala 82:48]
          regStorageVec[2].earlyTerminated1 <= earlyTerminate1_2 @[min_max_parallel_online_comparator.scala 83:51]
          regStorageVec[2].earlyTerminated2 <= earlyTerminate2_2 @[min_max_parallel_online_comparator.scala 84:51]
          regStorageVec[2].minMaxOutput <= maxOutput_2 @[min_max_parallel_online_comparator.scala 85:47]
          inst comparatorModule_3 of OnlineComparator2_3 @[online_comparator2.scala 163:34]
          comparatorModule_3.clock <= clock
          comparatorModule_3.reset <= reset
          wire earlyTerminate1_3 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_3 : UInt<1> @[online_comparator2.scala 166:31]
          wire maxOutput_3 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_3.io.in1 <= regStorageVec[7].minMaxOutput @[online_comparator2.scala 173:29]
          comparatorModule_3.io.in2 <= regStorageVec[8].minMaxOutput @[online_comparator2.scala 174:29]
          comparatorModule_3.io.earlyTerminate <= regStorageVec[1].earlyTerminated1 @[online_comparator2.scala 176:40]
          comparatorModule_3.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_3 <= comparatorModule_3.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_3 <= comparatorModule_3.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          maxOutput_3 <= comparatorModule_3.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_6 = mux(earlyTerminate1_3, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_7 = not(selectedInput_6) @[online_comparator2.scala 203:30]
          regStorageVec[3].selectedInput <= selectedInput_7 @[min_max_parallel_online_comparator.scala 82:48]
          regStorageVec[3].earlyTerminated1 <= earlyTerminate1_3 @[min_max_parallel_online_comparator.scala 83:51]
          regStorageVec[3].earlyTerminated2 <= earlyTerminate2_3 @[min_max_parallel_online_comparator.scala 84:51]
          regStorageVec[3].minMaxOutput <= maxOutput_3 @[min_max_parallel_online_comparator.scala 85:47]
          inst comparatorModule_4 of OnlineComparator2_4 @[online_comparator2.scala 163:34]
          comparatorModule_4.clock <= clock
          comparatorModule_4.reset <= reset
          wire earlyTerminate1_4 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_4 : UInt<1> @[online_comparator2.scala 166:31]
          wire maxOutput_4 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_4.io.in1 <= regStorageVec[9].minMaxOutput @[online_comparator2.scala 173:29]
          comparatorModule_4.io.in2 <= regStorageVec[10].minMaxOutput @[online_comparator2.scala 174:29]
          comparatorModule_4.io.earlyTerminate <= regStorageVec[1].earlyTerminated2 @[online_comparator2.scala 176:40]
          comparatorModule_4.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_4 <= comparatorModule_4.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_4 <= comparatorModule_4.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          maxOutput_4 <= comparatorModule_4.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_8 = mux(earlyTerminate1_4, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_9 = not(selectedInput_8) @[online_comparator2.scala 203:30]
          regStorageVec[4].selectedInput <= selectedInput_9 @[min_max_parallel_online_comparator.scala 82:48]
          regStorageVec[4].earlyTerminated1 <= earlyTerminate1_4 @[min_max_parallel_online_comparator.scala 83:51]
          regStorageVec[4].earlyTerminated2 <= earlyTerminate2_4 @[min_max_parallel_online_comparator.scala 84:51]
          regStorageVec[4].minMaxOutput <= maxOutput_4 @[min_max_parallel_online_comparator.scala 85:47]
          inst comparatorModule_5 of OnlineComparator2_5 @[online_comparator2.scala 163:34]
          comparatorModule_5.clock <= clock
          comparatorModule_5.reset <= reset
          wire earlyTerminate1_5 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_5 : UInt<1> @[online_comparator2.scala 166:31]
          wire maxOutput_5 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_5.io.in1 <= regStorageVec[11].minMaxOutput @[online_comparator2.scala 173:29]
          comparatorModule_5.io.in2 <= regStorageVec[12].minMaxOutput @[online_comparator2.scala 174:29]
          comparatorModule_5.io.earlyTerminate <= regStorageVec[2].earlyTerminated1 @[online_comparator2.scala 176:40]
          comparatorModule_5.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_5 <= comparatorModule_5.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_5 <= comparatorModule_5.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          maxOutput_5 <= comparatorModule_5.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_10 = mux(earlyTerminate1_5, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_11 = not(selectedInput_10) @[online_comparator2.scala 203:30]
          regStorageVec[5].selectedInput <= selectedInput_11 @[min_max_parallel_online_comparator.scala 82:48]
          regStorageVec[5].earlyTerminated1 <= earlyTerminate1_5 @[min_max_parallel_online_comparator.scala 83:51]
          regStorageVec[5].earlyTerminated2 <= earlyTerminate2_5 @[min_max_parallel_online_comparator.scala 84:51]
          regStorageVec[5].minMaxOutput <= maxOutput_5 @[min_max_parallel_online_comparator.scala 85:47]
          inst comparatorModule_6 of OnlineComparator2_6 @[online_comparator2.scala 163:34]
          comparatorModule_6.clock <= clock
          comparatorModule_6.reset <= reset
          wire earlyTerminate1_6 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_6 : UInt<1> @[online_comparator2.scala 166:31]
          wire maxOutput_6 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_6.io.in1 <= regStorageVec[13].minMaxOutput @[online_comparator2.scala 173:29]
          comparatorModule_6.io.in2 <= regStorageVec[14].minMaxOutput @[online_comparator2.scala 174:29]
          comparatorModule_6.io.earlyTerminate <= regStorageVec[2].earlyTerminated2 @[online_comparator2.scala 176:40]
          comparatorModule_6.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_6 <= comparatorModule_6.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_6 <= comparatorModule_6.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          maxOutput_6 <= comparatorModule_6.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_12 = mux(earlyTerminate1_6, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_13 = not(selectedInput_12) @[online_comparator2.scala 203:30]
          regStorageVec[6].selectedInput <= selectedInput_13 @[min_max_parallel_online_comparator.scala 82:48]
          regStorageVec[6].earlyTerminated1 <= earlyTerminate1_6 @[min_max_parallel_online_comparator.scala 83:51]
          regStorageVec[6].earlyTerminated2 <= earlyTerminate2_6 @[min_max_parallel_online_comparator.scala 84:51]
          regStorageVec[6].minMaxOutput <= maxOutput_6 @[min_max_parallel_online_comparator.scala 85:47]
          inst comparatorModule_7 of OnlineComparator2_7 @[online_comparator2.scala 163:34]
          comparatorModule_7.clock <= clock
          comparatorModule_7.reset <= reset
          wire earlyTerminate1_7 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_7 : UInt<1> @[online_comparator2.scala 166:31]
          wire minOutput : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_7.io.in1 <= io.in1[0] @[online_comparator2.scala 173:29]
          comparatorModule_7.io.in2 <= io.in2[0] @[online_comparator2.scala 174:29]
          comparatorModule_7.io.earlyTerminate <= regStorageVec[3].earlyTerminated1 @[online_comparator2.scala 176:40]
          comparatorModule_7.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_7 <= comparatorModule_7.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_7 <= comparatorModule_7.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          minOutput <= comparatorModule_7.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_14 = mux(earlyTerminate1_7, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_15 = not(selectedInput_14) @[online_comparator2.scala 203:30]
          regStorageVec[7].selectedInput <= selectedInput_15 @[min_max_parallel_online_comparator.scala 97:48]
          regStorageVec[7].earlyTerminated1 <= earlyTerminate1_7 @[min_max_parallel_online_comparator.scala 98:51]
          regStorageVec[7].earlyTerminated2 <= earlyTerminate2_7 @[min_max_parallel_online_comparator.scala 99:51]
          regStorageVec[7].minMaxOutput <= minOutput @[min_max_parallel_online_comparator.scala 100:47]
          inst comparatorModule_8 of OnlineComparator2_8 @[online_comparator2.scala 163:34]
          comparatorModule_8.clock <= clock
          comparatorModule_8.reset <= reset
          wire earlyTerminate1_8 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_8 : UInt<1> @[online_comparator2.scala 166:31]
          wire minOutput_1 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_8.io.in1 <= io.in1[1] @[online_comparator2.scala 173:29]
          comparatorModule_8.io.in2 <= io.in2[1] @[online_comparator2.scala 174:29]
          comparatorModule_8.io.earlyTerminate <= regStorageVec[3].earlyTerminated2 @[online_comparator2.scala 176:40]
          comparatorModule_8.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_8 <= comparatorModule_8.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_8 <= comparatorModule_8.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          minOutput_1 <= comparatorModule_8.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_16 = mux(earlyTerminate1_8, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_17 = not(selectedInput_16) @[online_comparator2.scala 203:30]
          regStorageVec[8].selectedInput <= selectedInput_17 @[min_max_parallel_online_comparator.scala 97:48]
          regStorageVec[8].earlyTerminated1 <= earlyTerminate1_8 @[min_max_parallel_online_comparator.scala 98:51]
          regStorageVec[8].earlyTerminated2 <= earlyTerminate2_8 @[min_max_parallel_online_comparator.scala 99:51]
          regStorageVec[8].minMaxOutput <= minOutput_1 @[min_max_parallel_online_comparator.scala 100:47]
          inst comparatorModule_9 of OnlineComparator2_9 @[online_comparator2.scala 163:34]
          comparatorModule_9.clock <= clock
          comparatorModule_9.reset <= reset
          wire earlyTerminate1_9 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_9 : UInt<1> @[online_comparator2.scala 166:31]
          wire minOutput_2 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_9.io.in1 <= io.in1[2] @[online_comparator2.scala 173:29]
          comparatorModule_9.io.in2 <= io.in2[2] @[online_comparator2.scala 174:29]
          comparatorModule_9.io.earlyTerminate <= regStorageVec[4].earlyTerminated1 @[online_comparator2.scala 176:40]
          comparatorModule_9.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_9 <= comparatorModule_9.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_9 <= comparatorModule_9.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          minOutput_2 <= comparatorModule_9.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_18 = mux(earlyTerminate1_9, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_19 = not(selectedInput_18) @[online_comparator2.scala 203:30]
          regStorageVec[9].selectedInput <= selectedInput_19 @[min_max_parallel_online_comparator.scala 97:48]
          regStorageVec[9].earlyTerminated1 <= earlyTerminate1_9 @[min_max_parallel_online_comparator.scala 98:51]
          regStorageVec[9].earlyTerminated2 <= earlyTerminate2_9 @[min_max_parallel_online_comparator.scala 99:51]
          regStorageVec[9].minMaxOutput <= minOutput_2 @[min_max_parallel_online_comparator.scala 100:47]
          inst comparatorModule_10 of OnlineComparator2_10 @[online_comparator2.scala 163:34]
          comparatorModule_10.clock <= clock
          comparatorModule_10.reset <= reset
          wire earlyTerminate1_10 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_10 : UInt<1> @[online_comparator2.scala 166:31]
          wire minOutput_3 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_10.io.in1 <= io.in1[3] @[online_comparator2.scala 173:29]
          comparatorModule_10.io.in2 <= io.in2[3] @[online_comparator2.scala 174:29]
          comparatorModule_10.io.earlyTerminate <= regStorageVec[4].earlyTerminated2 @[online_comparator2.scala 176:40]
          comparatorModule_10.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_10 <= comparatorModule_10.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_10 <= comparatorModule_10.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          minOutput_3 <= comparatorModule_10.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_20 = mux(earlyTerminate1_10, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_21 = not(selectedInput_20) @[online_comparator2.scala 203:30]
          regStorageVec[10].selectedInput <= selectedInput_21 @[min_max_parallel_online_comparator.scala 97:48]
          regStorageVec[10].earlyTerminated1 <= earlyTerminate1_10 @[min_max_parallel_online_comparator.scala 98:51]
          regStorageVec[10].earlyTerminated2 <= earlyTerminate2_10 @[min_max_parallel_online_comparator.scala 99:51]
          regStorageVec[10].minMaxOutput <= minOutput_3 @[min_max_parallel_online_comparator.scala 100:47]
          inst comparatorModule_11 of OnlineComparator2_11 @[online_comparator2.scala 163:34]
          comparatorModule_11.clock <= clock
          comparatorModule_11.reset <= reset
          wire earlyTerminate1_11 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_11 : UInt<1> @[online_comparator2.scala 166:31]
          wire minOutput_4 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_11.io.in1 <= io.in1[4] @[online_comparator2.scala 173:29]
          comparatorModule_11.io.in2 <= io.in2[4] @[online_comparator2.scala 174:29]
          comparatorModule_11.io.earlyTerminate <= regStorageVec[5].earlyTerminated1 @[online_comparator2.scala 176:40]
          comparatorModule_11.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_11 <= comparatorModule_11.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_11 <= comparatorModule_11.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          minOutput_4 <= comparatorModule_11.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_22 = mux(earlyTerminate1_11, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_23 = not(selectedInput_22) @[online_comparator2.scala 203:30]
          regStorageVec[11].selectedInput <= selectedInput_23 @[min_max_parallel_online_comparator.scala 97:48]
          regStorageVec[11].earlyTerminated1 <= earlyTerminate1_11 @[min_max_parallel_online_comparator.scala 98:51]
          regStorageVec[11].earlyTerminated2 <= earlyTerminate2_11 @[min_max_parallel_online_comparator.scala 99:51]
          regStorageVec[11].minMaxOutput <= minOutput_4 @[min_max_parallel_online_comparator.scala 100:47]
          inst comparatorModule_12 of OnlineComparator2_12 @[online_comparator2.scala 163:34]
          comparatorModule_12.clock <= clock
          comparatorModule_12.reset <= reset
          wire earlyTerminate1_12 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_12 : UInt<1> @[online_comparator2.scala 166:31]
          wire minOutput_5 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_12.io.in1 <= io.in1[5] @[online_comparator2.scala 173:29]
          comparatorModule_12.io.in2 <= io.in2[5] @[online_comparator2.scala 174:29]
          comparatorModule_12.io.earlyTerminate <= regStorageVec[5].earlyTerminated2 @[online_comparator2.scala 176:40]
          comparatorModule_12.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_12 <= comparatorModule_12.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_12 <= comparatorModule_12.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          minOutput_5 <= comparatorModule_12.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_24 = mux(earlyTerminate1_12, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_25 = not(selectedInput_24) @[online_comparator2.scala 203:30]
          regStorageVec[12].selectedInput <= selectedInput_25 @[min_max_parallel_online_comparator.scala 97:48]
          regStorageVec[12].earlyTerminated1 <= earlyTerminate1_12 @[min_max_parallel_online_comparator.scala 98:51]
          regStorageVec[12].earlyTerminated2 <= earlyTerminate2_12 @[min_max_parallel_online_comparator.scala 99:51]
          regStorageVec[12].minMaxOutput <= minOutput_5 @[min_max_parallel_online_comparator.scala 100:47]
          inst comparatorModule_13 of OnlineComparator2_13 @[online_comparator2.scala 163:34]
          comparatorModule_13.clock <= clock
          comparatorModule_13.reset <= reset
          wire earlyTerminate1_13 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_13 : UInt<1> @[online_comparator2.scala 166:31]
          wire minOutput_6 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_13.io.in1 <= io.in1[6] @[online_comparator2.scala 173:29]
          comparatorModule_13.io.in2 <= io.in2[6] @[online_comparator2.scala 174:29]
          comparatorModule_13.io.earlyTerminate <= regStorageVec[6].earlyTerminated1 @[online_comparator2.scala 176:40]
          comparatorModule_13.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_13 <= comparatorModule_13.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_13 <= comparatorModule_13.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          minOutput_6 <= comparatorModule_13.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_26 = mux(earlyTerminate1_13, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_27 = not(selectedInput_26) @[online_comparator2.scala 203:30]
          regStorageVec[13].selectedInput <= selectedInput_27 @[min_max_parallel_online_comparator.scala 97:48]
          regStorageVec[13].earlyTerminated1 <= earlyTerminate1_13 @[min_max_parallel_online_comparator.scala 98:51]
          regStorageVec[13].earlyTerminated2 <= earlyTerminate2_13 @[min_max_parallel_online_comparator.scala 99:51]
          regStorageVec[13].minMaxOutput <= minOutput_6 @[min_max_parallel_online_comparator.scala 100:47]
          inst comparatorModule_14 of OnlineComparator2_14 @[online_comparator2.scala 163:34]
          comparatorModule_14.clock <= clock
          comparatorModule_14.reset <= reset
          wire earlyTerminate1_14 : UInt<1> @[online_comparator2.scala 165:31]
          wire earlyTerminate2_14 : UInt<1> @[online_comparator2.scala 166:31]
          wire minOutput_7 : UInt<1> @[online_comparator2.scala 168:28]
          comparatorModule_14.io.in1 <= io.in1[7] @[online_comparator2.scala 173:29]
          comparatorModule_14.io.in2 <= io.in2[7] @[online_comparator2.scala 174:29]
          comparatorModule_14.io.earlyTerminate <= regStorageVec[6].earlyTerminated2 @[online_comparator2.scala 176:40]
          comparatorModule_14.io.start <= io.start @[online_comparator2.scala 177:31]
          earlyTerminate1_14 <= comparatorModule_14.io.earlyTerminate1 @[online_comparator2.scala 182:21]
          earlyTerminate2_14 <= comparatorModule_14.io.earlyTerminate2 @[online_comparator2.scala 183:21]
          minOutput_7 <= comparatorModule_14.io.maxMin @[online_comparator2.scala 196:18]
          node selectedInput_28 = mux(earlyTerminate1_14, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator2.scala 202:28]
          node selectedInput_29 = not(selectedInput_28) @[online_comparator2.scala 203:30]
          regStorageVec[14].selectedInput <= selectedInput_29 @[min_max_parallel_online_comparator.scala 97:48]
          regStorageVec[14].earlyTerminated1 <= earlyTerminate1_14 @[min_max_parallel_online_comparator.scala 98:51]
          regStorageVec[14].earlyTerminated2 <= earlyTerminate2_14 @[min_max_parallel_online_comparator.scala 99:51]
          regStorageVec[14].minMaxOutput <= minOutput_7 @[min_max_parallel_online_comparator.scala 100:47]
        else :
          state <= UInt<2>("h2") @[min_max_parallel_online_comparator.scala 104:17]
      else :
        node _T_12 = eq(UInt<2>("h2"), state) @[min_max_parallel_online_comparator.scala 56:17]
        when _T_12 : @[min_max_parallel_online_comparator.scala 56:17]
          outResultValid <= UInt<1>("h1") @[min_max_parallel_online_comparator.scala 112:22]
    io.outResult <= outResult @[min_max_parallel_online_comparator.scala 119:16]
    io.outResultValid <= outResultValid @[min_max_parallel_online_comparator.scala 120:21]

  module FuzzyController :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip start : UInt<1>, flip in1 : UInt<1>[8], flip in2 : UInt<1>[8], outResultValid : UInt<1>, outResult : UInt<1>}

    inst minMaxTree of MinMaxParallelOnlineComparator @[min_max_parallel_online_comparator.scala 131:28]
    minMaxTree.clock <= clock
    minMaxTree.reset <= reset
    wire outResult : UInt<8> @[min_max_parallel_online_comparator.scala 132:25]
    wire outResultValid : UInt<1> @[min_max_parallel_online_comparator.scala 133:30]
    minMaxTree.io.start <= io.start @[min_max_parallel_online_comparator.scala 135:25]
    minMaxTree.io.in1[0] <= io.in1[0] @[min_max_parallel_online_comparator.scala 137:23]
    minMaxTree.io.in1[1] <= io.in1[1] @[min_max_parallel_online_comparator.scala 137:23]
    minMaxTree.io.in1[2] <= io.in1[2] @[min_max_parallel_online_comparator.scala 137:23]
    minMaxTree.io.in1[3] <= io.in1[3] @[min_max_parallel_online_comparator.scala 137:23]
    minMaxTree.io.in1[4] <= io.in1[4] @[min_max_parallel_online_comparator.scala 137:23]
    minMaxTree.io.in1[5] <= io.in1[5] @[min_max_parallel_online_comparator.scala 137:23]
    minMaxTree.io.in1[6] <= io.in1[6] @[min_max_parallel_online_comparator.scala 137:23]
    minMaxTree.io.in1[7] <= io.in1[7] @[min_max_parallel_online_comparator.scala 137:23]
    minMaxTree.io.in2[0] <= io.in2[0] @[min_max_parallel_online_comparator.scala 138:23]
    minMaxTree.io.in2[1] <= io.in2[1] @[min_max_parallel_online_comparator.scala 138:23]
    minMaxTree.io.in2[2] <= io.in2[2] @[min_max_parallel_online_comparator.scala 138:23]
    minMaxTree.io.in2[3] <= io.in2[3] @[min_max_parallel_online_comparator.scala 138:23]
    minMaxTree.io.in2[4] <= io.in2[4] @[min_max_parallel_online_comparator.scala 138:23]
    minMaxTree.io.in2[5] <= io.in2[5] @[min_max_parallel_online_comparator.scala 138:23]
    minMaxTree.io.in2[6] <= io.in2[6] @[min_max_parallel_online_comparator.scala 138:23]
    minMaxTree.io.in2[7] <= io.in2[7] @[min_max_parallel_online_comparator.scala 138:23]
    outResult <= minMaxTree.io.outResult @[min_max_parallel_online_comparator.scala 140:15]
    outResultValid <= minMaxTree.io.outResultValid @[min_max_parallel_online_comparator.scala 142:20]
    io.outResult <= outResult @[top.scala 37:16]
    io.outResultValid <= outResultValid @[top.scala 38:21]

