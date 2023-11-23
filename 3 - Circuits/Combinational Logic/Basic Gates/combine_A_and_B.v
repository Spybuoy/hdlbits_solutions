module A (input x, input y, output z);
    assign z = (x^y)&x;
endmodule

module B ( input x, input y, output z );
    assign z = ~(x^y);
endmodule


module top_module (input x, input y, output z);
    wire w1, w2;
    wire op_1, op_2;
    A inst1(x, y, w1);
    B inst2(x, y, w2);
    assign op_1 = w1|w2;
    assign op_2 = w1&w2;
    assign z = op_1^op_2;
endmodule
