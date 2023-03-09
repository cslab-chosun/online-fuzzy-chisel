circuit LutMembershipFunctionOnline2 :
  module LutMembershipFunctionOnline2 :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip start : UInt<1>, flip inputBit : UInt<1>, outResultValid : UInt<1>, outResult : UInt<1>}

    reg state : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[lut_mem_online2.scala 73:22]
    reg buffer : UInt<1>[5], clock with :
      reset => (UInt<1>("h0"), buffer) @[lut_mem_online2.scala 75:19]
    reg counter : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[lut_mem_online2.scala 77:24]
    reg outResultValid : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[lut_mem_online2.scala 79:31]
    reg outResult : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[lut_mem_online2.scala 80:26]
    node _T = eq(io.start, UInt<1>("h1")) @[lut_mem_online2.scala 85:17]
    when _T : @[lut_mem_online2.scala 85:29]
      node _T_1 = eq(UInt<1>("h0"), state) @[lut_mem_online2.scala 90:19]
      when _T_1 : @[lut_mem_online2.scala 90:19]
        skip
      else :
        node _T_2 = eq(UInt<1>("h1"), state) @[lut_mem_online2.scala 90:19]
        when _T_2 : @[lut_mem_online2.scala 90:19]
          state <= UInt<1>("h1") @[lut_mem_online2.scala 103:15]
    else :
      state <= UInt<1>("h0") @[lut_mem_online2.scala 112:11]
      counter <= UInt<1>("h0") @[lut_mem_online2.scala 113:13]
      outResult <= UInt<1>("h0") @[lut_mem_online2.scala 114:15]
      outResultValid <= UInt<1>("h0") @[lut_mem_online2.scala 115:20]
    io.outResult <= outResult @[lut_mem_online2.scala 121:16]
    io.outResultValid <= outResultValid @[lut_mem_online2.scala 122:21]

