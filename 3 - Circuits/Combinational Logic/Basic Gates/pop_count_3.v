module top_module( 
    input [2:0] in,
    output [1:0] out );

    integer i;
    always@(*)begin 
        out = 2'd0;
    for(i=0;i<3;i=i+1)
        begin
            if(in[i])
                begin
                    out = out + 2'd1;
                end
        end
    end
endmodule
