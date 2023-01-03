module Comparator(
  input   clock,
  input   reset,
  input   io_in1,
  input   io_in2,
  output  io_max
);
  reg  state; // @[comparator.scala 28:30]
  wire  _GEN_3 = ~io_in1 & io_in2 ? io_in2 : io_in1; // @[comparator.scala 60:72 65:44 75:44]
  wire  _GEN_4 = ~io_in1 & io_in2 ? 1'h0 : 1'h1; // @[comparator.scala 60:72 67:39 77:39]
  wire  _GEN_7 = io_in1 & ~io_in2 ? io_in1 : _GEN_3; // @[comparator.scala 51:72 56:44]
  wire  _GEN_8 = io_in1 & ~io_in2 ? 1'h0 : _GEN_4; // @[comparator.scala 51:72 58:39]
  wire  _GEN_15 = state ? _GEN_8 : state; // @[comparator.scala 36:25 28:30]
  wire  _GEN_17 = ~state | _GEN_15; // @[comparator.scala 36:25]
  assign io_max = ~state ? 1'h0 : state & _GEN_7; // @[comparator.scala 36:25]
  always @(posedge clock) begin
    if (reset) begin // @[comparator.scala 28:30]
      state <= 1'h0; // @[comparator.scala 28:30]
    end else begin
      state <= _GEN_17;
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
  wire  comparator_max_comparator_module_clock; // @[comparator.scala 95:35]
  wire  comparator_max_comparator_module_reset; // @[comparator.scala 95:35]
  wire  comparator_max_comparator_module_io_in1; // @[comparator.scala 95:35]
  wire  comparator_max_comparator_module_io_in2; // @[comparator.scala 95:35]
  wire  comparator_max_comparator_module_io_max; // @[comparator.scala 95:35]
  Comparator comparator_max_comparator_module ( // @[comparator.scala 95:35]
    .clock(comparator_max_comparator_module_clock),
    .reset(comparator_max_comparator_module_reset),
    .io_in1(comparator_max_comparator_module_io_in1),
    .io_in2(comparator_max_comparator_module_io_in2),
    .io_max(comparator_max_comparator_module_io_max)
  );
  assign io_max = comparator_max_comparator_module_io_max; // @[comparator.scala 100:26 118:16]
  assign comparator_max_comparator_module_clock = clock;
  assign comparator_max_comparator_module_reset = reset;
  assign comparator_max_comparator_module_io_in1 = io_in1; // @[comparator.scala 105:30]
  assign comparator_max_comparator_module_io_in2 = io_in2; // @[comparator.scala 106:30]
endmodule
