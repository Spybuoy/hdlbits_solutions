module fibonacci(input clk, input reset, input n_th_number, output [19:0] fibonacci_number);

reg [19:0] curr_value, prev_value;
reg [7:0] internal_counter;
reg num_ready;

always@(posedge reset)
begin
    prev_value <= 'd0;
    curr_value <= 'd1;
    internal_counter <= 'd1;
end

always@(posedge clk)
begin
    // Updating Values
    internal_counter <= internal_counter + 1;
    curr_value <= curr_value + prev_value;
    prev_value <= curr_value;

    // Check for internal counter
    if(internal_counter == (n_th_number - 2)) num_ready <= 1;
    else num_ready <=0;
end

assign fibonacci_number = curr_value;

always@(num_ready)
begin
    if(num_ready) $display("For [ N = %d ] Fibonacci number is %d", n_th_number, fibonacci_number );
end

endmodule