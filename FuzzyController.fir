circuit FuzzyController :
  module Comparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[comparator.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[comparator.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[comparator.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<1>("h0"), state) @[comparator.scala 35:17]
    when _T : @[comparator.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[comparator.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[comparator.scala 40:23]
      node _T_1 = asUInt(reset) @[comparator.scala 43:15]
      node _T_2 = eq(_T_1, UInt<1>("h0")) @[comparator.scala 43:15]
      when _T_2 : @[comparator.scala 43:15]
        printf(clock, UInt<1>("h1"), "dbg, comparator debug: in idle state | start : %d\n", io.start) : printf @[comparator.scala 43:15]
      node _T_3 = eq(io.start, UInt<1>("h1")) @[comparator.scala 46:21]
      when _T_3 : @[comparator.scala 46:33]
        node _T_4 = asUInt(reset) @[comparator.scala 49:17]
        node _T_5 = eq(_T_4, UInt<1>("h0")) @[comparator.scala 49:17]
        when _T_5 : @[comparator.scala 49:17]
          printf(clock, UInt<1>("h1"), "dbg, comparator debug: module will go to init state\n") : printf_1 @[comparator.scala 49:17]
        state <= UInt<1>("h1") @[comparator.scala 52:15]
    else :
      node _T_6 = eq(UInt<1>("h1"), state) @[comparator.scala 35:17]
      when _T_6 : @[comparator.scala 35:17]
        node _T_7 = eq(io.earlyTerminate, UInt<1>("h1")) @[comparator.scala 57:30]
        when _T_7 : @[comparator.scala 57:42]
          node _T_8 = asUInt(reset) @[comparator.scala 60:17]
          node _T_9 = eq(_T_8, UInt<1>("h0")) @[comparator.scala 60:17]
          when _T_9 : @[comparator.scala 60:17]
            printf(clock, UInt<1>("h1"), "dbg, comparator debug: global earlyTerminate raised\n") : printf_2 @[comparator.scala 60:17]
          earlyTerminate1 <= UInt<1>("h1") @[comparator.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[comparator.scala 64:25]
          state <= UInt<1>("h0") @[comparator.scala 66:15]
        else :
          node _T_10 = eq(io.in1, UInt<1>("h1")) @[comparator.scala 68:25]
          node _T_11 = eq(io.in2, UInt<1>("h0")) @[comparator.scala 68:43]
          node _T_12 = and(_T_10, _T_11) @[comparator.scala 68:33]
          when _T_12 : @[comparator.scala 68:52]
            earlyTerminate1 <= UInt<1>("h0") @[comparator.scala 82:27]
            earlyTerminate2 <= UInt<1>("h1") @[comparator.scala 83:27]
            maxMinOutput <= io.in2 @[comparator.scala 84:24]
            node _T_13 = asUInt(reset) @[comparator.scala 87:19]
            node _T_14 = eq(_T_13, UInt<1>("h0")) @[comparator.scala 87:19]
            when _T_14 : @[comparator.scala 87:19]
              printf(clock, UInt<1>("h1"), "dbg, comparator debug: earlyTerminate2 => true\n") : printf_3 @[comparator.scala 87:19]
            state <= UInt<1>("h0") @[comparator.scala 92:15]
          else :
            node _T_15 = eq(io.in1, UInt<1>("h0")) @[comparator.scala 94:25]
            node _T_16 = eq(io.in2, UInt<1>("h1")) @[comparator.scala 94:43]
            node _T_17 = and(_T_15, _T_16) @[comparator.scala 94:33]
            when _T_17 : @[comparator.scala 94:52]
              earlyTerminate1 <= UInt<1>("h1") @[comparator.scala 106:27]
              earlyTerminate2 <= UInt<1>("h0") @[comparator.scala 107:27]
              maxMinOutput <= io.in1 @[comparator.scala 108:24]
              node _T_18 = asUInt(reset) @[comparator.scala 111:19]
              node _T_19 = eq(_T_18, UInt<1>("h0")) @[comparator.scala 111:19]
              when _T_19 : @[comparator.scala 111:19]
                printf(clock, UInt<1>("h1"), "dbg, comparator debug: earlyTerminate1 => true\n") : printf_4 @[comparator.scala 111:19]
              state <= UInt<1>("h0") @[comparator.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[comparator.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[comparator.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[comparator.scala 126:25]
              state <= UInt<1>("h1") @[comparator.scala 128:15]
              node _T_20 = asUInt(reset) @[comparator.scala 131:17]
              node _T_21 = eq(_T_20, UInt<1>("h0")) @[comparator.scala 131:17]
              when _T_21 : @[comparator.scala 131:17]
                printf(clock, UInt<1>("h1"), "dbg, comparator debug: both bits are equal\n") : printf_5 @[comparator.scala 131:17]
    io.earlyTerminate1 <= earlyTerminate1 @[comparator.scala 140:22]
    io.earlyTerminate2 <= earlyTerminate2 @[comparator.scala 141:22]
    io.maxMin <= maxMinOutput @[comparator.scala 143:13]

  module MinMaxTree :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<8>, flip in2 : UInt<8>, askForNewNumber : UInt<1>, outResult : UInt<8>}

    reg askForNewNumber : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max.scala 29:32]
    reg regMinVec : UInt<8>[8], clock with :
      reset => (UInt<1>("h0"), regMinVec) @[min_max.scala 31:22]
    reg regBitIndx : UInt<3>, clock with :
      reset => (reset, UInt<3>("h7")) @[min_max.scala 33:27]
    reg regVecIndx : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[min_max.scala 36:27]
    node _compStartBit_T = not(askForNewNumber) @[min_max.scala 37:33]
    node compStartBit = and(io.start, _compStartBit_T) @[min_max.scala 37:31]
    reg regToEqualNums : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max.scala 38:31]
    node _T = dshr(io.in1, regBitIndx) @[min_max.scala 42:11]
    node _T_1 = bits(_T, 0, 0) @[min_max.scala 42:11]
    node _T_2 = dshr(io.in2, regBitIndx) @[min_max.scala 43:11]
    node _T_3 = bits(_T_2, 0, 0) @[min_max.scala 43:11]
    inst comparatorModule of Comparator @[comparator.scala 155:34]
    comparatorModule.clock <= clock
    comparatorModule.reset <= reset
    wire earlyTerminate1 : UInt<1> @[comparator.scala 157:31]
    wire earlyTerminate2 : UInt<1> @[comparator.scala 158:31]
    wire maxMinOutput : UInt<1> @[comparator.scala 160:28]
    comparatorModule.io.in1 <= _T_1 @[comparator.scala 165:29]
    comparatorModule.io.in2 <= _T_3 @[comparator.scala 166:29]
    comparatorModule.io.earlyTerminate <= UInt<1>("h0") @[comparator.scala 168:40]
    comparatorModule.io.start <= compStartBit @[comparator.scala 169:31]
    earlyTerminate1 <= comparatorModule.io.earlyTerminate1 @[comparator.scala 174:21]
    earlyTerminate2 <= comparatorModule.io.earlyTerminate2 @[comparator.scala 175:21]
    node _T_4 = asUInt(reset) @[comparator.scala 178:13]
    node _T_5 = eq(_T_4, UInt<1>("h0")) @[comparator.scala 178:13]
    when _T_5 : @[comparator.scala 178:13]
      printf(clock, UInt<1>("h1"), "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n", compStartBit, _T_1, _T_3, earlyTerminate1, earlyTerminate2) : printf @[comparator.scala 178:13]
    maxMinOutput <= comparatorModule.io.maxMin @[comparator.scala 188:18]
    node earlyTerminated = or(earlyTerminate1, earlyTerminate2) @[comparator.scala 190:43]
    node selectedInput = mux(earlyTerminate1, UInt<1>("h0"), UInt<1>("h1")) @[comparator.scala 195:28]
    node _T_6 = eq(io.start, UInt<1>("h1")) @[min_max.scala 47:17]
    when _T_6 : @[min_max.scala 47:29]
      askForNewNumber <= UInt<1>("h0") @[min_max.scala 58:21]
      node _T_7 = neq(earlyTerminated, UInt<1>("h1")) @[min_max.scala 60:24]
      node _T_8 = eq(askForNewNumber, UInt<1>("h1")) @[min_max.scala 60:54]
      node _T_9 = or(_T_7, _T_8) @[min_max.scala 60:35]
      node _T_10 = neq(regToEqualNums, UInt<1>("h1")) @[min_max.scala 60:84]
      node _T_11 = and(_T_9, _T_10) @[min_max.scala 60:66]
      when _T_11 : @[min_max.scala 61:7]
        node _regBitIndx_T = sub(regBitIndx, UInt<1>("h1")) @[min_max.scala 62:32]
        node _regBitIndx_T_1 = tail(_regBitIndx_T, 1) @[min_max.scala 62:32]
        regBitIndx <= _regBitIndx_T_1 @[min_max.scala 62:18]
        node _T_12 = eq(regBitIndx, UInt<1>("h0")) @[min_max.scala 67:23]
        when _T_12 : @[min_max.scala 67:32]
          regToEqualNums <= UInt<1>("h1") @[min_max.scala 68:24]
      else :
        regBitIndx <= UInt<3>("h7") @[min_max.scala 88:18]
        regToEqualNums <= UInt<1>("h0") @[min_max.scala 89:22]
        node _T_13 = eq(selectedInput, UInt<1>("h0")) @[min_max.scala 91:26]
        when _T_13 : @[min_max.scala 91:35]
          regMinVec[regVecIndx] <= io.in1 @[min_max.scala 92:31]
        else :
          regMinVec[regVecIndx] <= io.in2 @[min_max.scala 99:31]
        node _regVecIndx_T = add(regVecIndx, UInt<1>("h1")) @[min_max.scala 109:32]
        node _regVecIndx_T_1 = tail(_regVecIndx_T, 1) @[min_max.scala 109:32]
        regVecIndx <= _regVecIndx_T_1 @[min_max.scala 109:18]
        askForNewNumber <= UInt<1>("h1") @[min_max.scala 110:23]
      node _T_14 = asUInt(reset) @[min_max.scala 113:11]
      node _T_15 = eq(_T_14, UInt<1>("h0")) @[min_max.scala 113:11]
      when _T_15 : @[min_max.scala 113:11]
        printf(clock, UInt<1>("h1"), "=======================================\n") : printf_1 @[min_max.scala 113:11]
    node _io_outResult_T = add(regMinVec[0], regMinVec[1]) @[min_max.scala 120:32]
    node _io_outResult_T_1 = tail(_io_outResult_T, 1) @[min_max.scala 120:32]
    node _io_outResult_T_2 = add(_io_outResult_T_1, regMinVec[2]) @[min_max.scala 120:47]
    node _io_outResult_T_3 = tail(_io_outResult_T_2, 1) @[min_max.scala 120:47]
    node _io_outResult_T_4 = add(_io_outResult_T_3, regMinVec[3]) @[min_max.scala 120:62]
    node _io_outResult_T_5 = tail(_io_outResult_T_4, 1) @[min_max.scala 120:62]
    node _io_outResult_T_6 = add(_io_outResult_T_5, regMinVec[4]) @[min_max.scala 122:5]
    node _io_outResult_T_7 = tail(_io_outResult_T_6, 1) @[min_max.scala 122:5]
    node _io_outResult_T_8 = add(_io_outResult_T_7, regMinVec[5]) @[min_max.scala 122:20]
    node _io_outResult_T_9 = tail(_io_outResult_T_8, 1) @[min_max.scala 122:20]
    node _io_outResult_T_10 = add(_io_outResult_T_9, regMinVec[6]) @[min_max.scala 122:35]
    node _io_outResult_T_11 = tail(_io_outResult_T_10, 1) @[min_max.scala 122:35]
    node _io_outResult_T_12 = add(_io_outResult_T_11, regMinVec[7]) @[min_max.scala 122:50]
    node _io_outResult_T_13 = tail(_io_outResult_T_12, 1) @[min_max.scala 122:50]
    io.outResult <= _io_outResult_T_13 @[min_max.scala 120:16]
    io.askForNewNumber <= askForNewNumber @[min_max.scala 125:22]

  module FuzzyController :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in1 : UInt<8>, flip in2 : UInt<8>, max : UInt<8>}

    inst minMaxTree_minMaxTree of MinMaxTree @[min_max.scala 136:28]
    minMaxTree_minMaxTree.clock <= clock
    minMaxTree_minMaxTree.reset <= reset
    wire minMaxTree : UInt<8> @[min_max.scala 137:25]
    minMaxTree_minMaxTree.io.start <= UInt<1>("h1") @[min_max.scala 139:25]
    minMaxTree_minMaxTree.io.in1 <= io.in1 @[min_max.scala 141:23]
    minMaxTree_minMaxTree.io.in2 <= io.in2 @[min_max.scala 142:23]
    minMaxTree <= minMaxTree_minMaxTree.io.outResult @[min_max.scala 144:15]
    io.max <= minMaxTree @[top.scala 21:10]

