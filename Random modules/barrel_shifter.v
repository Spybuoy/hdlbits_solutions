module barrel_shifter();
	
	input [7:0] x;
	input [2:0] amt; 
	output[7:0] y;

	logic [7:0] s1, s0;

	always@(*)
		begin
			s0 = amt[0] ? {x[0], x[7:1]} : x; 
			s1 = amt[1] ? {s0[1:0], s0[7:2]} : s0;
			y  = amt[2] ? {s1[3:0], s1[7:4]} : s1;
		end


endmodule