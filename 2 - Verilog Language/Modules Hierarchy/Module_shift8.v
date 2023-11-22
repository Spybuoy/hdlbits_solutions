module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    wire [7:0] w1, w2, w3;
    my_dff8 inst1 (.clk(clk), .d(d), .q(w1));
    my_dff8 inst2 (.clk(clk), .d(w1), .q(w2));
    my_dff8 inst3 (.clk(clk), .d(w2), .q(w3));
    
    always@(*)
        begin
            case(sel)
                2'b00: begin q = d;end
                2'b01: begin q = w1;end
                2'b10: begin q = w2;end
                2'b11: begin q = w3;end
                
            endcase
        end
    
endmodule
