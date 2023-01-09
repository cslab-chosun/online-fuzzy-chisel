circuit FuzzyController :
  module OnlineComparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<1>("h0"), state) @[online_comparator.scala 35:17]
    when _T : @[online_comparator.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator.scala 46:21]
      when _T_1 : @[online_comparator.scala 46:33]
        state <= UInt<1>("h1") @[online_comparator.scala 52:15]
    else :
      node _T_2 = eq(UInt<1>("h1"), state) @[online_comparator.scala 35:17]
      when _T_2 : @[online_comparator.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator.scala 57:30]
        when _T_3 : @[online_comparator.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator.scala 64:25]
          state <= UInt<1>("h0") @[online_comparator.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator.scala 68:33]
          when _T_6 : @[online_comparator.scala 68:52]
            earlyTerminate1 <= UInt<1>("h0") @[online_comparator.scala 82:27]
            earlyTerminate2 <= UInt<1>("h1") @[online_comparator.scala 83:27]
            maxMinOutput <= io.in2 @[online_comparator.scala 84:24]
            state <= UInt<1>("h0") @[online_comparator.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator.scala 94:33]
            when _T_9 : @[online_comparator.scala 94:52]
              earlyTerminate1 <= UInt<1>("h1") @[online_comparator.scala 106:27]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator.scala 107:27]
              maxMinOutput <= io.in1 @[online_comparator.scala 108:24]
              state <= UInt<1>("h0") @[online_comparator.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator.scala 126:25]
              state <= UInt<1>("h1") @[online_comparator.scala 128:15]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator.scala 140:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator.scala 141:22]
    io.maxMin <= maxMinOutput @[online_comparator.scala 143:13]

  module OnlineComparator_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator.scala 28:22]
    reg earlyTerminate1 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator.scala 31:32]
    reg earlyTerminate2 : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[online_comparator.scala 32:32]
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
    node _T = eq(UInt<1>("h0"), state) @[online_comparator.scala 35:17]
    when _T : @[online_comparator.scala 35:17]
      earlyTerminate1 <= UInt<1>("h0") @[online_comparator.scala 39:23]
      earlyTerminate2 <= UInt<1>("h0") @[online_comparator.scala 40:23]
      node _T_1 = eq(io.start, UInt<1>("h1")) @[online_comparator.scala 46:21]
      when _T_1 : @[online_comparator.scala 46:33]
        state <= UInt<1>("h1") @[online_comparator.scala 52:15]
    else :
      node _T_2 = eq(UInt<1>("h1"), state) @[online_comparator.scala 35:17]
      when _T_2 : @[online_comparator.scala 35:17]
        node _T_3 = eq(io.earlyTerminate, UInt<1>("h1")) @[online_comparator.scala 57:30]
        when _T_3 : @[online_comparator.scala 57:42]
          earlyTerminate1 <= UInt<1>("h1") @[online_comparator.scala 63:25]
          earlyTerminate2 <= UInt<1>("h1") @[online_comparator.scala 64:25]
          state <= UInt<1>("h0") @[online_comparator.scala 66:15]
        else :
          node _T_4 = eq(io.in1, UInt<1>("h1")) @[online_comparator.scala 68:25]
          node _T_5 = eq(io.in2, UInt<1>("h0")) @[online_comparator.scala 68:43]
          node _T_6 = and(_T_4, _T_5) @[online_comparator.scala 68:33]
          when _T_6 : @[online_comparator.scala 68:52]
            earlyTerminate1 <= UInt<1>("h1") @[online_comparator.scala 72:27]
            earlyTerminate2 <= UInt<1>("h0") @[online_comparator.scala 73:27]
            maxMinOutput <= io.in1 @[online_comparator.scala 74:24]
            state <= UInt<1>("h0") @[online_comparator.scala 92:15]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[online_comparator.scala 94:25]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[online_comparator.scala 94:43]
            node _T_9 = and(_T_7, _T_8) @[online_comparator.scala 94:33]
            when _T_9 : @[online_comparator.scala 94:52]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator.scala 97:27]
              earlyTerminate2 <= UInt<1>("h1") @[online_comparator.scala 98:27]
              maxMinOutput <= io.in2 @[online_comparator.scala 99:24]
              state <= UInt<1>("h0") @[online_comparator.scala 115:15]
            else :
              maxMinOutput <= io.in1 @[online_comparator.scala 123:22]
              earlyTerminate1 <= UInt<1>("h0") @[online_comparator.scala 125:25]
              earlyTerminate2 <= UInt<1>("h0") @[online_comparator.scala 126:25]
              state <= UInt<1>("h1") @[online_comparator.scala 128:15]
    io.earlyTerminate1 <= earlyTerminate1 @[online_comparator.scala 140:22]
    io.earlyTerminate2 <= earlyTerminate2 @[online_comparator.scala 141:22]
    io.maxMin <= maxMinOutput @[online_comparator.scala 143:13]

  module MinMaxSerialOnlineComparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<7>, flip in2 : UInt<7>, askForNewNumber : UInt<1>, outResultValid : UInt<1>, outResult : UInt<7>}

    reg askForNewNumber : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max_serial_online_comparator.scala 37:32]
    reg outResultValid : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max_serial_online_comparator.scala 38:31]
    reg outResult : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[min_max_serial_online_comparator.scala 39:26]
    reg regStorageVec : UInt<7>[8], clock with :
      reset => (UInt<1>("h0"), regStorageVec) @[min_max_serial_online_comparator.scala 41:26]
    reg regBitIndx : UInt<3>, clock with :
      reset => (reset, UInt<3>("h7")) @[min_max_serial_online_comparator.scala 43:27]
    reg regVecIndx : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[min_max_serial_online_comparator.scala 46:27]
    reg regMaxVecIndx : UInt<3>, clock with :
      reset => (reset, UInt<3>("h1")) @[min_max_serial_online_comparator.scala 49:30]
    node _compStartBit_T = not(askForNewNumber) @[min_max_serial_online_comparator.scala 53:33]
    node compStartBit = and(io.start, _compStartBit_T) @[min_max_serial_online_comparator.scala 53:31]
    reg regToEqualNums : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max_serial_online_comparator.scala 54:31]
    reg state : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[min_max_serial_online_comparator.scala 57:22]
    node _T = dshr(io.in1, regBitIndx) @[min_max_serial_online_comparator.scala 62:13]
    node _T_1 = bits(_T, 0, 0) @[min_max_serial_online_comparator.scala 62:13]
    node _T_2 = dshr(io.in2, regBitIndx) @[min_max_serial_online_comparator.scala 63:13]
    node _T_3 = bits(_T_2, 0, 0) @[min_max_serial_online_comparator.scala 63:13]
    inst comparatorModule of OnlineComparator @[online_comparator.scala 155:34]
    comparatorModule.clock <= clock
    comparatorModule.reset <= reset
    wire earlyTerminate1 : UInt<1> @[online_comparator.scala 157:31]
    wire earlyTerminate2 : UInt<1> @[online_comparator.scala 158:31]
    wire minOutput : UInt<1> @[online_comparator.scala 160:28]
    comparatorModule.io.in1 <= _T_1 @[online_comparator.scala 165:29]
    comparatorModule.io.in2 <= _T_3 @[online_comparator.scala 166:29]
    comparatorModule.io.earlyTerminate <= UInt<1>("h0") @[online_comparator.scala 168:40]
    comparatorModule.io.start <= compStartBit @[online_comparator.scala 169:31]
    earlyTerminate1 <= comparatorModule.io.earlyTerminate1 @[online_comparator.scala 174:21]
    earlyTerminate2 <= comparatorModule.io.earlyTerminate2 @[online_comparator.scala 175:21]
    minOutput <= comparatorModule.io.maxMin @[online_comparator.scala 188:18]
    node earlyTerminated = or(earlyTerminate1, earlyTerminate2) @[online_comparator.scala 190:43]
    node selectedInput = mux(earlyTerminate1, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator.scala 195:28]
    wire compStartBitMax : UInt<1>
    compStartBitMax <= UInt<1>("h0")
    reg input1Max : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max_serial_online_comparator.scala 69:26]
    reg input2Max : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[min_max_serial_online_comparator.scala 70:26]
    inst comparatorModule_1 of OnlineComparator_1 @[online_comparator.scala 155:34]
    comparatorModule_1.clock <= clock
    comparatorModule_1.reset <= reset
    wire earlyTerminate1_1 : UInt<1> @[online_comparator.scala 157:31]
    wire earlyTerminate2_1 : UInt<1> @[online_comparator.scala 158:31]
    wire minOutputMax : UInt<1> @[online_comparator.scala 160:28]
    comparatorModule_1.io.in1 <= input1Max @[online_comparator.scala 165:29]
    comparatorModule_1.io.in2 <= input2Max @[online_comparator.scala 166:29]
    comparatorModule_1.io.earlyTerminate <= UInt<1>("h0") @[online_comparator.scala 168:40]
    comparatorModule_1.io.start <= compStartBitMax @[online_comparator.scala 169:31]
    earlyTerminate1_1 <= comparatorModule_1.io.earlyTerminate1 @[online_comparator.scala 174:21]
    earlyTerminate2_1 <= comparatorModule_1.io.earlyTerminate2 @[online_comparator.scala 175:21]
    minOutputMax <= comparatorModule_1.io.maxMin @[online_comparator.scala 188:18]
    node earlyTerminatedMax = or(earlyTerminate1_1, earlyTerminate2_1) @[online_comparator.scala 190:43]
    node selectedInputMax = mux(earlyTerminate1_1, UInt<1>("h0"), UInt<1>("h1")) @[online_comparator.scala 195:28]
    node _T_4 = eq(UInt<2>("h0"), state) @[min_max_serial_online_comparator.scala 80:17]
    when _T_4 : @[min_max_serial_online_comparator.scala 80:17]
      state <= UInt<2>("h1") @[min_max_serial_online_comparator.scala 83:13]
    else :
      node _T_5 = eq(UInt<2>("h1"), state) @[min_max_serial_online_comparator.scala 80:17]
      when _T_5 : @[min_max_serial_online_comparator.scala 80:17]
        askForNewNumber <= UInt<1>("h0") @[min_max_serial_online_comparator.scala 96:23]
        node _T_6 = neq(earlyTerminated, UInt<1>("h1")) @[min_max_serial_online_comparator.scala 98:26]
        node _T_7 = eq(askForNewNumber, UInt<1>("h1")) @[min_max_serial_online_comparator.scala 98:56]
        node _T_8 = or(_T_6, _T_7) @[min_max_serial_online_comparator.scala 98:37]
        node _T_9 = neq(regToEqualNums, UInt<1>("h1")) @[min_max_serial_online_comparator.scala 98:86]
        node _T_10 = and(_T_8, _T_9) @[min_max_serial_online_comparator.scala 98:68]
        when _T_10 : @[min_max_serial_online_comparator.scala 99:9]
          node _regBitIndx_T = sub(regBitIndx, UInt<1>("h1")) @[min_max_serial_online_comparator.scala 100:34]
          node _regBitIndx_T_1 = tail(_regBitIndx_T, 1) @[min_max_serial_online_comparator.scala 100:34]
          regBitIndx <= _regBitIndx_T_1 @[min_max_serial_online_comparator.scala 100:20]
          node _T_11 = eq(regBitIndx, UInt<1>("h0")) @[min_max_serial_online_comparator.scala 105:25]
          when _T_11 : @[min_max_serial_online_comparator.scala 105:34]
            regToEqualNums <= UInt<1>("h1") @[min_max_serial_online_comparator.scala 106:26]
        else :
          regBitIndx <= UInt<3>("h7") @[min_max_serial_online_comparator.scala 126:20]
          regToEqualNums <= UInt<1>("h0") @[min_max_serial_online_comparator.scala 127:24]
          node _T_12 = eq(selectedInput, UInt<1>("h0")) @[min_max_serial_online_comparator.scala 129:28]
          when _T_12 : @[min_max_serial_online_comparator.scala 129:37]
            regStorageVec[regVecIndx] <= io.in1 @[min_max_serial_online_comparator.scala 130:37]
          else :
            regStorageVec[regVecIndx] <= io.in2 @[min_max_serial_online_comparator.scala 137:37]
          node _T_13 = eq(regVecIndx, UInt<3>("h7")) @[min_max_serial_online_comparator.scala 147:25]
          when _T_13 : @[min_max_serial_online_comparator.scala 147:49]
            state <= UInt<2>("h2") @[min_max_serial_online_comparator.scala 148:17]
            outResult <= regStorageVec[0] @[min_max_serial_online_comparator.scala 153:19]
            regBitIndx <= UInt<3>("h7") @[min_max_serial_online_comparator.scala 158:20]
            regToEqualNums <= UInt<1>("h0") @[min_max_serial_online_comparator.scala 159:24]
          node _regVecIndx_T = add(regVecIndx, UInt<1>("h1")) @[min_max_serial_online_comparator.scala 170:34]
          node _regVecIndx_T_1 = tail(_regVecIndx_T, 1) @[min_max_serial_online_comparator.scala 170:34]
          regVecIndx <= _regVecIndx_T_1 @[min_max_serial_online_comparator.scala 170:20]
          askForNewNumber <= UInt<1>("h1") @[min_max_serial_online_comparator.scala 171:25]
      else :
        node _T_14 = eq(UInt<2>("h2"), state) @[min_max_serial_online_comparator.scala 80:17]
        when _T_14 : @[min_max_serial_online_comparator.scala 80:17]
          compStartBitMax <= UInt<1>("h1") @[min_max_serial_online_comparator.scala 184:23]
          node _input1Max_T = dshr(outResult, regBitIndx) @[min_max_serial_online_comparator.scala 189:29]
          node _input1Max_T_1 = bits(_input1Max_T, 0, 0) @[min_max_serial_online_comparator.scala 189:29]
          input1Max <= _input1Max_T_1 @[min_max_serial_online_comparator.scala 189:17]
          node _input2Max_T = dshr(regStorageVec[regMaxVecIndx], regBitIndx) @[min_max_serial_online_comparator.scala 190:48]
          node _input2Max_T_1 = bits(_input2Max_T, 0, 0) @[min_max_serial_online_comparator.scala 190:48]
          input2Max <= _input2Max_T_1 @[min_max_serial_online_comparator.scala 190:17]
          node _T_15 = neq(earlyTerminatedMax, UInt<1>("h1")) @[min_max_serial_online_comparator.scala 195:31]
          node _T_16 = neq(regToEqualNums, UInt<1>("h1")) @[min_max_serial_online_comparator.scala 195:61]
          node _T_17 = and(_T_15, _T_16) @[min_max_serial_online_comparator.scala 195:43]
          when _T_17 : @[min_max_serial_online_comparator.scala 196:8]
            node _regBitIndx_T_2 = sub(regBitIndx, UInt<1>("h1")) @[min_max_serial_online_comparator.scala 198:34]
            node _regBitIndx_T_3 = tail(_regBitIndx_T_2, 1) @[min_max_serial_online_comparator.scala 198:34]
            regBitIndx <= _regBitIndx_T_3 @[min_max_serial_online_comparator.scala 198:20]
            node _T_18 = eq(regBitIndx, UInt<1>("h0")) @[min_max_serial_online_comparator.scala 203:25]
            when _T_18 : @[min_max_serial_online_comparator.scala 203:34]
              regToEqualNums <= UInt<1>("h1") @[min_max_serial_online_comparator.scala 204:26]
          else :
            regBitIndx <= UInt<3>("h7") @[min_max_serial_online_comparator.scala 224:20]
            regToEqualNums <= UInt<1>("h0") @[min_max_serial_online_comparator.scala 226:24]
            node _T_19 = neq(selectedInputMax, UInt<1>("h0")) @[min_max_serial_online_comparator.scala 231:31]
            when _T_19 : @[min_max_serial_online_comparator.scala 231:40]
              outResult <= regStorageVec[regMaxVecIndx] @[min_max_serial_online_comparator.scala 236:21]
            else :
              skip
            node _T_20 = eq(regMaxVecIndx, UInt<3>("h7")) @[min_max_serial_online_comparator.scala 249:28]
            when _T_20 : @[min_max_serial_online_comparator.scala 249:52]
              state <= UInt<2>("h3") @[min_max_serial_online_comparator.scala 250:17]
            node _regMaxVecIndx_T = add(regMaxVecIndx, UInt<1>("h1")) @[min_max_serial_online_comparator.scala 256:40]
            node _regMaxVecIndx_T_1 = tail(_regMaxVecIndx_T, 1) @[min_max_serial_online_comparator.scala 256:40]
            regMaxVecIndx <= _regMaxVecIndx_T_1 @[min_max_serial_online_comparator.scala 256:23]
        else :
          node _T_21 = eq(UInt<2>("h3"), state) @[min_max_serial_online_comparator.scala 80:17]
          when _T_21 : @[min_max_serial_online_comparator.scala 80:17]
            outResultValid <= UInt<1>("h1") @[min_max_serial_online_comparator.scala 268:22]
    io.outResult <= outResult @[min_max_serial_online_comparator.scala 275:16]
    io.askForNewNumber <= askForNewNumber @[min_max_serial_online_comparator.scala 276:22]
    io.outResultValid <= outResultValid @[min_max_serial_online_comparator.scala 277:21]

  module FuzzyController :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in1 : UInt<8>, flip in2 : UInt<8>, max : UInt<8>}

    inst minMaxTree of MinMaxSerialOnlineComparator @[min_max_serial_online_comparator.scala 288:28]
    minMaxTree.clock <= clock
    minMaxTree.reset <= reset
    wire outResult : UInt<8> @[min_max_serial_online_comparator.scala 289:25]
    wire askForNewNumber : UInt<1> @[min_max_serial_online_comparator.scala 290:31]
    wire outResultValid : UInt<1> @[min_max_serial_online_comparator.scala 291:30]
    minMaxTree.io.start <= UInt<1>("h1") @[min_max_serial_online_comparator.scala 293:25]
    minMaxTree.io.in1 <= io.in1 @[min_max_serial_online_comparator.scala 295:23]
    minMaxTree.io.in2 <= io.in2 @[min_max_serial_online_comparator.scala 296:23]
    outResult <= minMaxTree.io.outResult @[min_max_serial_online_comparator.scala 298:15]
    askForNewNumber <= minMaxTree.io.askForNewNumber @[min_max_serial_online_comparator.scala 300:21]
    outResultValid <= minMaxTree.io.outResultValid @[min_max_serial_online_comparator.scala 301:20]
    io.max <= outResult @[top.scala 21:10]

