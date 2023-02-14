module MultipleComparator_5(
  input        clock,
  input        io_start,
  input  [2:0] io_inputs_0,
  input  [2:0] io_inputs_1,
  input  [2:0] io_inputs_2,
  input  [2:0] io_inputs_3,
  input  [2:0] io_inputs_4,
  output [2:0] io_result
);
  wire [2:0] comparatorModule_io_in1; // @[comparator.scala 121:34]
  wire [2:0] comparatorModule_io_in2; // @[comparator.scala 121:34]
  wire  comparatorModule_io_maxMin; // @[comparator.scala 121:34]
  wire [2:0] comparatorModule_1_io_in1; // @[comparator.scala 121:34]
  wire [2:0] comparatorModule_1_io_in2; // @[comparator.scala 121:34]
  wire  comparatorModule_1_io_maxMin; // @[comparator.scala 121:34]
  wire [2:0] comparatorModule_2_io_in1; // @[comparator.scala 121:34]
  wire [2:0] comparatorModule_2_io_in2; // @[comparator.scala 121:34]
  wire  comparatorModule_2_io_maxMin; // @[comparator.scala 121:34]
  wire [2:0] comparatorModule_3_io_in1; // @[comparator.scala 121:34]
  wire [2:0] comparatorModule_3_io_in2; // @[comparator.scala 121:34]
  wire  comparatorModule_3_io_maxMin; // @[comparator.scala 121:34]
  reg [2:0] regMinMaxResultVec_0_minMaxResult; // @[multiple_comparator.scala 113:31]
  reg [2:0] regMinMaxResultVec_0_minMaxIndex; // @[multiple_comparator.scala 113:31]
  reg [2:0] regMinMaxResultVec_1_minMaxResult; // @[multiple_comparator.scala 113:31]
  reg [2:0] regMinMaxResultVec_1_minMaxIndex; // @[multiple_comparator.scala 113:31]
  reg [2:0] regMinMaxResultVec_2_minMaxResult; // @[multiple_comparator.scala 113:31]
  reg [2:0] regMinMaxResultVec_2_minMaxIndex; // @[multiple_comparator.scala 113:31]
  reg [2:0] regMinMaxResultVec_3_minMaxIndex; // @[multiple_comparator.scala 113:31]
  wire  maxMinOutput_1 = comparatorModule_io_maxMin; // @[comparator.scala 126:28 145:18]
  wire  _GEN_1 = ~maxMinOutput_1 ? 1'h0 : 1'h1; // @[comparator.scala 155:40 157:19 160:19]
  wire  maxMinOutput_2 = comparatorModule_1_io_maxMin; // @[comparator.scala 126:28 145:18]
  wire [1:0] _GEN_3 = ~maxMinOutput_2 ? 2'h2 : 2'h3; // @[comparator.scala 155:40 157:19 160:19]
  wire  maxMinOutput_3 = comparatorModule_2_io_maxMin; // @[comparator.scala 126:28 145:18]
  wire  maxMinOutput_4 = comparatorModule_3_io_maxMin; // @[comparator.scala 126:28 145:18]
  wire [2:0] resultIndex = {{2'd0}, _GEN_1}; // @[comparator.scala 124:27]
  wire [2:0] resultIndex_1 = {{1'd0}, _GEN_3}; // @[comparator.scala 124:27]
  Comparator_25 comparatorModule ( // @[comparator.scala 121:34]
    .io_in1(comparatorModule_io_in1),
    .io_in2(comparatorModule_io_in2),
    .io_maxMin(comparatorModule_io_maxMin)
  );
  Comparator_25 comparatorModule_1 ( // @[comparator.scala 121:34]
    .io_in1(comparatorModule_1_io_in1),
    .io_in2(comparatorModule_1_io_in2),
    .io_maxMin(comparatorModule_1_io_maxMin)
  );
  Comparator_25 comparatorModule_2 ( // @[comparator.scala 121:34]
    .io_in1(comparatorModule_2_io_in1),
    .io_in2(comparatorModule_2_io_in2),
    .io_maxMin(comparatorModule_2_io_maxMin)
  );
  Comparator_25 comparatorModule_3 ( // @[comparator.scala 121:34]
    .io_in1(comparatorModule_3_io_in1),
    .io_in2(comparatorModule_3_io_in2),
    .io_maxMin(comparatorModule_3_io_maxMin)
  );
  assign io_result = regMinMaxResultVec_3_minMaxIndex; // @[multiple_comparator.scala 274:13]
  assign comparatorModule_io_in1 = io_inputs_0; // @[comparator.scala 131:29]
  assign comparatorModule_io_in2 = io_inputs_1; // @[comparator.scala 132:29]
  assign comparatorModule_1_io_in1 = io_inputs_2; // @[comparator.scala 131:29]
  assign comparatorModule_1_io_in2 = io_inputs_3; // @[comparator.scala 132:29]
  assign comparatorModule_2_io_in1 = regMinMaxResultVec_0_minMaxResult; // @[comparator.scala 131:29]
  assign comparatorModule_2_io_in2 = regMinMaxResultVec_1_minMaxResult; // @[comparator.scala 132:29]
  assign comparatorModule_3_io_in1 = regMinMaxResultVec_2_minMaxResult; // @[comparator.scala 131:29]
  assign comparatorModule_3_io_in2 = io_inputs_4; // @[comparator.scala 132:29]
  always @(posedge clock) begin
    if (io_start) begin // @[multiple_comparator.scala 130:18]
      if (~maxMinOutput_1) begin // @[comparator.scala 155:40]
        regMinMaxResultVec_0_minMaxResult <= io_inputs_0; // @[comparator.scala 156:14]
      end else begin
        regMinMaxResultVec_0_minMaxResult <= io_inputs_1; // @[comparator.scala 159:14]
      end
    end
    if (io_start) begin // @[multiple_comparator.scala 130:18]
      regMinMaxResultVec_0_minMaxIndex <= resultIndex; // @[multiple_comparator.scala 170:45]
    end
    if (io_start) begin // @[multiple_comparator.scala 130:18]
      if (~maxMinOutput_2) begin // @[comparator.scala 155:40]
        regMinMaxResultVec_1_minMaxResult <= io_inputs_2; // @[comparator.scala 156:14]
      end else begin
        regMinMaxResultVec_1_minMaxResult <= io_inputs_3; // @[comparator.scala 159:14]
      end
    end
    if (io_start) begin // @[multiple_comparator.scala 130:18]
      regMinMaxResultVec_1_minMaxIndex <= resultIndex_1; // @[multiple_comparator.scala 170:45]
    end
    if (io_start) begin // @[multiple_comparator.scala 130:18]
      if (~maxMinOutput_3) begin // @[comparator.scala 155:40]
        regMinMaxResultVec_2_minMaxResult <= regMinMaxResultVec_0_minMaxResult; // @[comparator.scala 156:14]
      end else begin
        regMinMaxResultVec_2_minMaxResult <= regMinMaxResultVec_1_minMaxResult; // @[comparator.scala 159:14]
      end
    end
    if (io_start) begin // @[multiple_comparator.scala 130:18]
      if (~maxMinOutput_3) begin // @[comparator.scala 155:40]
        regMinMaxResultVec_2_minMaxIndex <= regMinMaxResultVec_0_minMaxIndex; // @[comparator.scala 157:19]
      end else begin
        regMinMaxResultVec_2_minMaxIndex <= regMinMaxResultVec_1_minMaxIndex; // @[comparator.scala 160:19]
      end
    end
    if (io_start) begin // @[multiple_comparator.scala 130:18]
      if (~maxMinOutput_4) begin // @[comparator.scala 155:40]
        regMinMaxResultVec_3_minMaxIndex <= regMinMaxResultVec_2_minMaxIndex; // @[comparator.scala 157:19]
      end else begin
        regMinMaxResultVec_3_minMaxIndex <= 3'h4; // @[comparator.scala 160:19]
      end
    end
  end
endmodule
