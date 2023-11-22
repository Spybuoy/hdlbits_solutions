module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] w_out1, w_out2, w1, w2;
    wire c_sel;
    add16 inst1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(w_out1), .cout(c_sel));
    add16 inst2 (.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(w1), .cout());
    add16 inst3 (.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(w2), .cout());
    assign w_out2 = c_sel?w2:w1;
    assign sum = {w_out2, w_out1};
endmodule
