module Comparator(
  input   clock,
  input   reset,
  input   io_in1,
  input   io_in2,
  output  io_max_min
);
  reg  state; // @[comparator.scala 28:30]
  wire  _GEN_3 = ~io_in1 & io_in2 ? io_in2 : io_in1; // @[comparator.scala 69:72 74:56 91:48]
  wire  _GEN_4 = ~io_in1 & io_in2 ? 1'h0 : 1'h1; // @[comparator.scala 69:72 83:39 96:39]
  wire  _GEN_7 = io_in1 & ~io_in2 ? io_in1 : _GEN_3; // @[comparator.scala 53:72 58:56]
  assign io_max_min = ~state ? 1'h0 : state & _GEN_7; // @[comparator.scala 36:25]
  always @(posedge clock) begin
    if (reset) begin // @[comparator.scala 28:30]
      state <= 1'h0; // @[comparator.scala 28:30]
    end else if (!(~state)) begin // @[comparator.scala 36:25]
      if (state) begin // @[comparator.scala 36:25]
        if (io_in1 & ~io_in2) begin // @[comparator.scala 53:72]
          state <= 1'h0; // @[comparator.scala 67:39]
        end else begin
          state <= _GEN_4;
        end
      end
    end
  end
endmodule
module FuzzyController(
  input   clock,
  input   reset,
  input   io_earlyTerminate,
  input   io_in1,
  input   io_in2,
  output  io_max
);
  wire  comparator_max_comparator_module_clock; // @[comparator.scala 114:35]
  wire  comparator_max_comparator_module_reset; // @[comparator.scala 114:35]
  wire  comparator_max_comparator_module_io_in1; // @[comparator.scala 114:35]
  wire  comparator_max_comparator_module_io_in2; // @[comparator.scala 114:35]
  wire  comparator_max_comparator_module_io_max_min; // @[comparator.scala 114:35]
  Comparator comparator_max_comparator_module ( // @[comparator.scala 114:35]
    .clock(comparator_max_comparator_module_clock),
    .reset(comparator_max_comparator_module_reset),
    .io_in1(comparator_max_comparator_module_io_in1),
    .io_in2(comparator_max_comparator_module_io_in2),
    .io_max_min(comparator_max_comparator_module_io_max_min)
  );
  assign io_max = comparator_max_comparator_module_io_max_min; // @[comparator.scala 119:30 137:20]
  assign comparator_max_comparator_module_clock = clock;
  assign comparator_max_comparator_module_reset = reset;
  assign comparator_max_comparator_module_io_in1 = io_in1; // @[comparator.scala 124:30]
  assign comparator_max_comparator_module_io_in2 = io_in2; // @[comparator.scala 125:30]
endmodule
