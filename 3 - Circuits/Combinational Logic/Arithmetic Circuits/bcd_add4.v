module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire w1, w2, w3;
    bcd_fadd inst1(.a(a[3:0]), .b(b[3:0]),.cin(cin), .sum(sum[3:0]), .cout(w1));
    bcd_fadd inst2(.a(a[7:4]), .b(b[7:4]),.cin(w1), .sum(sum[7:4]), .cout(w2));
    bcd_fadd inst3(.a(a[11:8]), .b(b[11:8]),.cin(w2), .sum(sum[11:8]), .cout(w3));
    bcd_fadd inst4(.a(a[15:12]), .b(b[15:12]),.cin(w3), .sum(sum[15:12]), .cout(cout));
endmodule
