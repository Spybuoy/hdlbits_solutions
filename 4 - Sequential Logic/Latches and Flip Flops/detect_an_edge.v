module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    wire [7:0] temp_in;
    always@(posedge clk)
        begin
            temp_in <= in;
            pedge <= in & ~temp_in;
        end
endmodule
