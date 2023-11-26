module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    wire [31:0]state;
    wire [31:0]prev_d;
	integer i;
    always@(posedge clk)
        begin
            
            prev_d <= in;
            
            if(reset)
                begin
                    out<=0;
                end
            else
                begin
                    for(i=0;i<32;i++)
                        begin
                            if(state[i])
                                begin
                                    out[i] = 1'b1;
                                end
                        end
                end
            
        end
    
    assign state = prev_d & ~in;
    
    
endmodule
