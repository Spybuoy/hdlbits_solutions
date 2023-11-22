module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w;
    add16 inst1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(w), .sum(sum[15:0]));
    add16 inst2 (.a(a[31:16]), .b(b[31:16]), .cin(w), .cout(), .sum(sum[31:16]));
endmodule
