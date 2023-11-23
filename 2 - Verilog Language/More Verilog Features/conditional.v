module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] w1, w2;
    always@(*)
        begin
            w1 = (a<b)?a:b;
            w2 = (c<d)?c:d;
            min = (w1<w2)?w1:w2;
        end
endmodule
