module dff(input clk, input d, output reg q);
    always@(posedge clk)
        begin
            q<=d;
        end
endmodule
module top_module (
    input clk,
    input x,
    output z
); 
    wire w1, w2, w3;

            dff inst1 (.clk(clk), .d(x^w1), .q(w1));
            dff inst2 (.clk(clk), .d(x&~w2), .q(w2));
            dff inst3 (.clk(clk), .d(x|~w3), .q(w3));
            assign z = ~(w1|w2|w3);

endmodule
