circuit OnlineFuzzification :
  module OnlineFuzzification :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip start : UInt<1>, flip inputs : UInt<1>[2], outResultValid : UInt<1>, outResult : UInt<1>}

    io.outResultValid <= UInt<1>("h1") @[online_fuzzification.scala 56:21]
    io.outResult <= UInt<1>("h1") @[online_fuzzification.scala 57:16]

