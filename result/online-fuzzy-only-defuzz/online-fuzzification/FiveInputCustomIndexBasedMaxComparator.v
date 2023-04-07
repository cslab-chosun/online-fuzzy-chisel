module FiveInputCustomIndexBasedMaxComparator(
  input        clock,
  input        reset,
  input        io_inputs_0,
  input        io_inputs_1,
  input        io_inputs_2,
  input        io_inputs_3,
  input        io_inputs_4,
  output [2:0] io_result,
  output       io_resultValid
);
  wire  comparatorModule_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_1_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_2_io_maxMin; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_clock; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_reset; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_earlyTerminate; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_in1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_in2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_earlyTerminate1; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_earlyTerminate2; // @[online_comparator2.scala 181:34]
  wire  comparatorModule_3_io_maxMin; // @[online_comparator2.scala 181:34]
  reg  regResultValid; // @[5_input_custom_index_based_max_comparator.scala 38:31]
  reg  regResultValidDelay; // @[5_input_custom_index_based_max_comparator.scala 39:36]
  reg [2:0] regIndexBasedMaxResultVec_0_selectedInput; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg  regIndexBasedMaxResultVec_0_maxOutput; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg [2:0] regIndexBasedMaxResultVec_1_selectedInput; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg  regIndexBasedMaxResultVec_1_maxOutput; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg [2:0] regIndexBasedMaxResultVec_2_selectedInput; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg  regIndexBasedMaxResultVec_2_earlyTerminate1; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg  regIndexBasedMaxResultVec_2_earlyTerminate2; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg  regIndexBasedMaxResultVec_2_maxOutput; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg [2:0] regIndexBasedMaxResultVec_3_selectedInput; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg  regIndexBasedMaxResultVec_3_earlyTerminate1; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg  regIndexBasedMaxResultVec_3_earlyTerminate2; // @[5_input_custom_index_based_max_comparator.scala 41:38]
  reg  delayFor5thInput; // @[5_input_custom_index_based_max_comparator.scala 48:33]
  reg  delayFor5thInput_2; // @[5_input_custom_index_based_max_comparator.scala 49:35]
  wire  earlyTerminate1_0 = comparatorModule_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  selectedInput = earlyTerminate1_0 ? 1'h0 : 1'h1; // @[online_comparator2.scala 219:28]
  wire  selectedInput_0 = ~selectedInput; // @[online_comparator2.scala 220:30]
  wire  _GEN_0 = ~selectedInput_0 ? 1'h0 : 1'h1; // @[5_input_custom_index_based_max_comparator.scala 63:39 64:50 66:50]
  wire  earlyTerminate1_1 = comparatorModule_1_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  selectedInput_1 = earlyTerminate1_1 ? 1'h0 : 1'h1; // @[online_comparator2.scala 219:28]
  wire  selectedInput_1_1 = ~selectedInput_1; // @[online_comparator2.scala 220:30]
  wire [1:0] _GEN_1 = ~selectedInput_1_1 ? 2'h2 : 2'h3; // @[5_input_custom_index_based_max_comparator.scala 82:39 83:50 85:50]
  wire  earlyTerminate1_2 = comparatorModule_2_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  selectedInput_2 = earlyTerminate1_2 ? 1'h0 : 1'h1; // @[online_comparator2.scala 219:28]
  wire  selectedInput_2_1 = ~selectedInput_2; // @[online_comparator2.scala 220:30]
  wire  earlyTerminate1_3 = comparatorModule_3_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
  wire  selectedInput_3 = earlyTerminate1_3 ? 1'h0 : 1'h1; // @[online_comparator2.scala 219:28]
  wire  selectedInput_3_1 = ~selectedInput_3; // @[online_comparator2.scala 220:30]
  wire  _T_14 = regIndexBasedMaxResultVec_3_earlyTerminate1 | regIndexBasedMaxResultVec_3_earlyTerminate2; // @[5_input_custom_index_based_max_comparator.scala 142:36]
  wire  _GEN_4 = _T_14 | regResultValid; // @[5_input_custom_index_based_max_comparator.scala 145:7 149:22 38:31]
  wire  earlyTerminate2_0 = comparatorModule_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  earlyTerminate2_1 = comparatorModule_1_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  earlyTerminate2_2 = comparatorModule_2_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  wire  earlyTerminate2_3 = comparatorModule_3_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
  OnlineComparator2 comparatorModule ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_clock),
    .reset(comparatorModule_reset),
    .io_earlyTerminate(comparatorModule_io_earlyTerminate),
    .io_in1(comparatorModule_io_in1),
    .io_in2(comparatorModule_io_in2),
    .io_earlyTerminate1(comparatorModule_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_io_earlyTerminate2),
    .io_maxMin(comparatorModule_io_maxMin)
  );
  OnlineComparator2 comparatorModule_1 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_1_clock),
    .reset(comparatorModule_1_reset),
    .io_earlyTerminate(comparatorModule_1_io_earlyTerminate),
    .io_in1(comparatorModule_1_io_in1),
    .io_in2(comparatorModule_1_io_in2),
    .io_earlyTerminate1(comparatorModule_1_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_1_io_earlyTerminate2),
    .io_maxMin(comparatorModule_1_io_maxMin)
  );
  OnlineComparator2 comparatorModule_2 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_2_clock),
    .reset(comparatorModule_2_reset),
    .io_earlyTerminate(comparatorModule_2_io_earlyTerminate),
    .io_in1(comparatorModule_2_io_in1),
    .io_in2(comparatorModule_2_io_in2),
    .io_earlyTerminate1(comparatorModule_2_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_2_io_earlyTerminate2),
    .io_maxMin(comparatorModule_2_io_maxMin)
  );
  OnlineComparator2 comparatorModule_3 ( // @[online_comparator2.scala 181:34]
    .clock(comparatorModule_3_clock),
    .reset(comparatorModule_3_reset),
    .io_earlyTerminate(comparatorModule_3_io_earlyTerminate),
    .io_in1(comparatorModule_3_io_in1),
    .io_in2(comparatorModule_3_io_in2),
    .io_earlyTerminate1(comparatorModule_3_io_earlyTerminate1),
    .io_earlyTerminate2(comparatorModule_3_io_earlyTerminate2),
    .io_maxMin(comparatorModule_3_io_maxMin)
  );
  assign io_result = regIndexBasedMaxResultVec_3_selectedInput; // @[5_input_custom_index_based_max_comparator.scala 164:13]
  assign io_resultValid = regResultValidDelay; // @[5_input_custom_index_based_max_comparator.scala 166:18]
  assign comparatorModule_clock = clock;
  assign comparatorModule_reset = reset;
  assign comparatorModule_io_earlyTerminate = regIndexBasedMaxResultVec_2_earlyTerminate1; // @[online_comparator2.scala 194:40]
  assign comparatorModule_io_in1 = io_inputs_0; // @[online_comparator2.scala 191:29]
  assign comparatorModule_io_in2 = io_inputs_1; // @[online_comparator2.scala 192:29]
  assign comparatorModule_1_clock = clock;
  assign comparatorModule_1_reset = reset;
  assign comparatorModule_1_io_earlyTerminate = regIndexBasedMaxResultVec_2_earlyTerminate2; // @[online_comparator2.scala 194:40]
  assign comparatorModule_1_io_in1 = io_inputs_2; // @[online_comparator2.scala 191:29]
  assign comparatorModule_1_io_in2 = io_inputs_3; // @[online_comparator2.scala 192:29]
  assign comparatorModule_2_clock = clock;
  assign comparatorModule_2_reset = reset;
  assign comparatorModule_2_io_earlyTerminate = regIndexBasedMaxResultVec_3_earlyTerminate1; // @[online_comparator2.scala 194:40]
  assign comparatorModule_2_io_in1 = regIndexBasedMaxResultVec_0_maxOutput; // @[online_comparator2.scala 191:29]
  assign comparatorModule_2_io_in2 = regIndexBasedMaxResultVec_1_maxOutput; // @[online_comparator2.scala 192:29]
  assign comparatorModule_3_clock = clock;
  assign comparatorModule_3_reset = reset;
  assign comparatorModule_3_io_earlyTerminate = 1'h0; // @[online_comparator2.scala 194:40]
  assign comparatorModule_3_io_in1 = regIndexBasedMaxResultVec_2_maxOutput; // @[online_comparator2.scala 191:29]
  assign comparatorModule_3_io_in2 = delayFor5thInput_2; // @[online_comparator2.scala 192:29]
  always @(posedge clock) begin
    if (reset) begin // @[5_input_custom_index_based_max_comparator.scala 38:31]
      regResultValid <= 1'h0; // @[5_input_custom_index_based_max_comparator.scala 38:31]
    end else begin
      regResultValid <= _GEN_4;
    end
    regResultValidDelay <= regResultValid; // @[5_input_custom_index_based_max_comparator.scala 39:36]
    regIndexBasedMaxResultVec_0_selectedInput <= {{2'd0}, _GEN_0}; // @[5_input_custom_index_based_max_comparator.scala 52:18 41:38]
    regIndexBasedMaxResultVec_0_maxOutput <= comparatorModule_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
    regIndexBasedMaxResultVec_1_selectedInput <= {{1'd0}, _GEN_1}; // @[5_input_custom_index_based_max_comparator.scala 52:18 41:38]
    regIndexBasedMaxResultVec_1_maxOutput <= comparatorModule_1_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
    if (~selectedInput_2_1) begin // @[5_input_custom_index_based_max_comparator.scala 101:39]
      regIndexBasedMaxResultVec_2_selectedInput <= regIndexBasedMaxResultVec_0_selectedInput; // @[5_input_custom_index_based_max_comparator.scala 102:50]
    end else begin
      regIndexBasedMaxResultVec_2_selectedInput <= regIndexBasedMaxResultVec_1_selectedInput; // @[5_input_custom_index_based_max_comparator.scala 106:50]
    end
    regIndexBasedMaxResultVec_2_earlyTerminate1 <= comparatorModule_2_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
    regIndexBasedMaxResultVec_2_earlyTerminate2 <= comparatorModule_2_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
    regIndexBasedMaxResultVec_2_maxOutput <= comparatorModule_2_io_maxMin; // @[online_comparator2.scala 186:28 214:18]
    if (~selectedInput_3_1) begin // @[5_input_custom_index_based_max_comparator.scala 124:39]
      regIndexBasedMaxResultVec_3_selectedInput <= regIndexBasedMaxResultVec_2_selectedInput; // @[5_input_custom_index_based_max_comparator.scala 125:50]
    end else begin
      regIndexBasedMaxResultVec_3_selectedInput <= 3'h4; // @[5_input_custom_index_based_max_comparator.scala 129:50]
    end
    regIndexBasedMaxResultVec_3_earlyTerminate1 <= comparatorModule_3_io_earlyTerminate1; // @[online_comparator2.scala 183:31 200:21]
    regIndexBasedMaxResultVec_3_earlyTerminate2 <= comparatorModule_3_io_earlyTerminate2; // @[online_comparator2.scala 184:31 201:21]
    if (reset) begin // @[5_input_custom_index_based_max_comparator.scala 48:33]
      delayFor5thInput <= 1'h0; // @[5_input_custom_index_based_max_comparator.scala 48:33]
    end else begin
      delayFor5thInput <= io_inputs_4; // @[5_input_custom_index_based_max_comparator.scala 50:20]
    end
    delayFor5thInput_2 <= delayFor5thInput; // @[5_input_custom_index_based_max_comparator.scala 49:35]
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,1'h1,io_inputs_0,io_inputs_1,earlyTerminate1_0,earlyTerminate2_0); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,1'h1,io_inputs_2,io_inputs_3,earlyTerminate1_1,earlyTerminate2_1); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,1'h1,regIndexBasedMaxResultVec_0_maxOutput,regIndexBasedMaxResultVec_1_maxOutput,earlyTerminate1_2,
            earlyTerminate2_2); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset) begin
          $fwrite(32'h80000002,
            "dbg, comparator method debug | start : %d | input1 : %d, input2 : %d | earlyTerminate1 : %d, earlyTerminate2 : %d\n"
            ,1'h1,regIndexBasedMaxResultVec_2_maxOutput,delayFor5thInput_2,earlyTerminate1_3,earlyTerminate2_3); // @[online_comparator2.scala 204:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
