module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0] cout_temp;
    generate
    genvar i;
        bcd_fadd isnt1(.a(a[3:0]),.b(b[3:0]),.cin(cin),.sum(sum[3:0]),.cout(cout_temp[0]));
        for(i=4; i<400;i = i+4)
            begin: genloop
                bcd_fadd inst2(a[i+3:i], b[i+3:i],cout_temp[i/4-1], cout_temp[i/4], sum[i+3:i]);
            end
        assign cout = cout_temp[99];
endgenerate
endmodule
