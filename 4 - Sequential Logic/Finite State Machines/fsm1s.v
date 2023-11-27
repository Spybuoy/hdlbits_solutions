// Note the Verilog-1995 module declaration syntax here:
module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;//  
    reg out;
	
    parameter A = 0, B = 1;
    reg state, next_state;
    
    always@(*)
        begin
            case(state)
                A: begin next_state = in?A:B; end
                B: begin next_state = in?B:A; end
            endcase
        end
    always@(posedge clk)
        begin
            if(reset)
                begin
                    state<=B;
                end
            else
                begin
                    state<=next_state;
                end
        end
    assign out = (state==B);
    


endmodule
