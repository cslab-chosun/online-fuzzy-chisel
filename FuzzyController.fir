circuit FuzzyController :
  module Comparator :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip earlyTerminate : UInt<1>, flip in1 : UInt<1>, flip in2 : UInt<1>, earlyTerminate1 : UInt<1>, earlyTerminate2 : UInt<1>, maxMin : UInt<1>}

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
    wire maxMinOutput : UInt<1>
    maxMinOutput <= UInt<1>("h0")
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
            earlyTerminate1 <= UInt<1>("h0") @[comparator.scala 62:57]
            earlyTerminate2 <= UInt<1>("h1") @[comparator.scala 63:57]
            maxMinOutput <= io.in2 @[comparator.scala 64:54]
            state <= UInt<1>("h0") @[comparator.scala 67:39]
          else :
            node _T_7 = eq(io.in1, UInt<1>("h0")) @[comparator.scala 69:45]
            node _T_8 = eq(io.in2, UInt<1>("h1")) @[comparator.scala 69:63]
            node _T_9 = and(_T_7, _T_8) @[comparator.scala 69:53]
            when _T_9 : @[comparator.scala 69:72]
              earlyTerminate1 <= UInt<1>("h1") @[comparator.scala 78:57]
              earlyTerminate2 <= UInt<1>("h0") @[comparator.scala 79:57]
              maxMinOutput <= io.in1 @[comparator.scala 80:54]
              state <= UInt<1>("h0") @[comparator.scala 83:39]
            else :
              maxMinOutput <= io.in1 @[comparator.scala 91:46]
              earlyTerminate1 <= UInt<1>("h0") @[comparator.scala 93:49]
              earlyTerminate1 <= UInt<1>("h0") @[comparator.scala 94:49]
              state <= UInt<1>("h1") @[comparator.scala 96:39]
    io.earlyTerminate1 <= earlyTerminate1 @[comparator.scala 104:28]
    io.earlyTerminate2 <= earlyTerminate2 @[comparator.scala 105:28]
    io.maxMin <= maxMinOutput @[comparator.scala 107:19]

  module MinMaxTree :
    input clock : Clock
    input reset : Reset
    output io : { flip start : UInt<1>, flip in1 : UInt<8>, flip in2 : UInt<8>, outResult : UInt<8>}

    reg regMinVec : UInt<8>[8], clock with :
      reset => (UInt<1>("h0"), regMinVec) @[min_max.scala 29:24]
    reg regBitIndx : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[min_max.scala 31:29]
    reg regVecIndx : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[min_max.scala 32:29]
    node _T = dshr(io.in1, regBitIndx) @[min_max.scala 34:76]
    node _T_1 = bits(_T, 0, 0) @[min_max.scala 34:76]
    node _T_2 = dshr(io.in2, regBitIndx) @[min_max.scala 34:96]
    node _T_3 = bits(_T_2, 0, 0) @[min_max.scala 34:96]
    inst comparatorModule of Comparator @[comparator.scala 114:34]
    comparatorModule.clock <= clock
    comparatorModule.reset <= reset
    wire earlyTerminate1 : UInt<1>
    earlyTerminate1 <= UInt<1>("h0")
    wire earlyTerminate2 : UInt<1>
    earlyTerminate2 <= UInt<1>("h0")
    wire maxMinOutput : UInt<1> @[comparator.scala 119:28]
    comparatorModule.io.in1 <= _T_1 @[comparator.scala 124:29]
    comparatorModule.io.in2 <= _T_3 @[comparator.scala 125:29]
    comparatorModule.io.earlyTerminate <= UInt<1>("h0") @[comparator.scala 127:40]
    comparatorModule.io.start <= UInt<1>("h1") @[comparator.scala 128:31]
    earlyTerminate1 <= comparatorModule.io.earlyTerminate1 @[comparator.scala 133:21]
    earlyTerminate2 <= comparatorModule.io.earlyTerminate2 @[comparator.scala 134:21]
    maxMinOutput <= comparatorModule.io.maxMin @[comparator.scala 137:18]
    node earlyTerminated = and(earlyTerminate1, earlyTerminate2) @[comparator.scala 139:43]
    node selectedInput = mux(earlyTerminate1, UInt<1>("h0"), UInt<1>("h1")) @[comparator.scala 144:28]
    node _T_4 = neq(earlyTerminated, UInt<1>("h1")) @[min_max.scala 36:27]
    when _T_4 : @[min_max.scala 36:39]
      node _regBitIndx_T = add(regBitIndx, UInt<1>("h1")) @[min_max.scala 37:34]
      node _regBitIndx_T_1 = tail(_regBitIndx_T, 1) @[min_max.scala 37:34]
      regBitIndx <= _regBitIndx_T_1 @[min_max.scala 37:20]
    else :
      regBitIndx <= UInt<1>("h0") @[min_max.scala 43:20]
      node _T_5 = eq(selectedInput, UInt<1>("h0")) @[min_max.scala 45:29]
      when _T_5 : @[min_max.scala 45:38]
        regMinVec[regVecIndx] <= io.in1 @[min_max.scala 46:39]
      else :
        regMinVec[regVecIndx] <= io.in2 @[min_max.scala 48:39]
        node _regVecIndx_T = add(regVecIndx, UInt<1>("h1")) @[min_max.scala 49:42]
        node _regVecIndx_T_1 = tail(_regVecIndx_T, 1) @[min_max.scala 49:42]
        regVecIndx <= _regVecIndx_T_1 @[min_max.scala 49:28]
      node _regVecIndx_T_2 = add(regVecIndx, UInt<1>("h1")) @[min_max.scala 55:34]
      node _regVecIndx_T_3 = tail(_regVecIndx_T_2, 1) @[min_max.scala 55:34]
      regVecIndx <= _regVecIndx_T_3 @[min_max.scala 55:20]
    node _io_outResult_T = add(regMinVec[0], regMinVec[7]) @[min_max.scala 61:34]
    node _io_outResult_T_1 = tail(_io_outResult_T, 1) @[min_max.scala 61:34]
    io.outResult <= _io_outResult_T_1 @[min_max.scala 61:18]

  module FuzzyController :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip in1 : UInt<8>, flip in2 : UInt<8>, max : UInt<8>}

    inst minMaxTree_minMaxTree of MinMaxTree @[min_max.scala 69:28]
    minMaxTree_minMaxTree.clock <= clock
    minMaxTree_minMaxTree.reset <= reset
    wire minMaxTree : UInt<8> @[min_max.scala 70:25]
    minMaxTree_minMaxTree.io.start <= UInt<1>("h1") @[min_max.scala 72:25]
    minMaxTree_minMaxTree.io.in1 <= io.in1 @[min_max.scala 74:23]
    minMaxTree_minMaxTree.io.in2 <= io.in2 @[min_max.scala 75:23]
    minMaxTree <= minMaxTree_minMaxTree.io.outResult @[min_max.scala 77:15]
    io.max <= minMaxTree @[top.scala 21:12]

