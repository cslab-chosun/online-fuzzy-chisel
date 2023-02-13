module RegularFuzzification(
  input        clock,
  input        reset,
  input        io_start,
  input  [9:0] io_input_0,
  input  [9:0] io_input_1,
  output       io_outResultValid,
  output       io_outResult
);
  assign io_outResultValid = 1'h0; // @[regular_fuzzification.scala 351:21]
  assign io_outResult = 1'h0; // @[regular_fuzzification.scala 350:16]
  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h0,1'h0); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h0,1'h1); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h0,2'h2); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h0,2'h3); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h0,3'h4); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h1,3'h5); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h1,3'h6); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h1,3'h7); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h1,4'h8); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,1'h1,4'h9); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h2,4'ha); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h2,4'hb); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h2,4'hc); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h2,4'hd); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h2,4'he); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h3,4'hf); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h3,5'h10); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h3,5'h11); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h3,5'h12); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,2'h3,5'h13); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,3'h4,5'h14); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,3'h4,5'h15); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,3'h4,5'h16); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,3'h4,5'h17); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_start & ~reset) begin
          $fwrite(32'h80000002,"dbg, regular comparator without index | start : %d | input1 : %d, input2 : %d\n",
            io_start,3'h4,5'h18); // @[comparator.scala 82:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
