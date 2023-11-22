 module top_module ();
    
	reg clk, reset, t;
    wire q;
    
    tff inst1(.clk(clk), .reset(reset), .t(t), .q(q));
    
    initial begin
        clk = 1'b0;
        reset = 1'b0;
        t = 0;
        #5 reset = 1;
        #10 reset = 1'b0;
    end
    
    always #5 clk = ~clk;
    
    always@(posedge clk)
        begin
            if(reset)
                begin
                	t<=1'b0;
                end
            else
                begin
                    t<=1'b1;
                end
        end
        
endmodule
