module clock_divider (input clk, output reg clk_out);

    parameter DIVISOR = 2'd2;
    reg [31:0] counter;

    always@(posedge clk)
        begin
            counter <= counter + 1'b1;
            if(counter>=(DIVISOR-1)) counter<=0;
            clk_out <= (counter < DIVISOR/2)? 1'b1: 1'b0;
        end

endmodule