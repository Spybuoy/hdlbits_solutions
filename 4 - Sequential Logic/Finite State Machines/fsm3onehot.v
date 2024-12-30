module top_module(
    input in,
    input [3:0] state,
    output [3:0] next_state,
    output out); //

    parameter A=4'd0001, B=4'd0010, C=4'b0100, D=4'b1000;
    always@(*)
        begin
            next_state[0] = (state[0]&(~in)) | (state[2]&(~in));                // you get A when you give 0 to A & C
            next_state[1] = (state[0]&(in)) | (state[1]&(in))| (state[3]&(in)); // you get B when you give 1 to A,B & D 
            next_state[2] = (state[1]&(~in)) | (state[3]&(~in));                // you get C when you give 0 to B & D
            next_state[3] = (state[2]&(in));                                    // you get D when you give 1 to C
            out = state[3]; // out depends on D, which is the [3] of state
        end
endmodule
