module top_module ( );
    reg clk;
    dut inst1(.clk(clk));
    initial clk = 1'b0;
    always #5 clk = ~clk;
endmodule
