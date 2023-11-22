module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire w;
    wire [31:0] b_ip;
    assign b_ip = b^{32{sub}};

    add16 inst1 (.a(a[15:0]), .b(b_ip[15:0]), .cin(sub), .sum(sum[15:0]), .cout(w));
    add16 inst2 (.a(a[31:16]), .b(b_ip[31:16]), .cin(w), .sum(sum[31:16]), .cout());

endmodule
