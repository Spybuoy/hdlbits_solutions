module top_module (
    input clk,
    input reset,        // Synchronous active-high reset
    output [3:0] q);
    always@(posedge clk)
        begin
            if(reset)
                begin
                	q<=4'd1;
                end
            else
                begin
                    if(q == 4'd10)
                        q<=4'd1;
                    else
                        begin
                            q<=q+1'b1;
                        end
                end
        end
endmodule