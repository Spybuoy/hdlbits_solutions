module FA(input a, input b, input cin, output sum, output cout);
    assign {cout, sum} = a+b+cin;
endmodule

module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
	wire w, w2, w3, w4;
    FA inst1 (.a(x[0]), .b(y[0]), .cin(1'b0), .sum(sum[0]), .cout(w));
    FA inst2 (.a(x[1]), .b(y[1]), .cin(w), .sum(sum[1]), .cout(w2));
    FA inst3 (.a(x[2]), .b(y[2]), .cin(w2), .sum(sum[2]), .cout(w3));
    FA inst4 (.a(x[3]), .b(y[3]), .cin(w3), .sum(sum[3]), .cout(sum[4]));
    
endmodule
