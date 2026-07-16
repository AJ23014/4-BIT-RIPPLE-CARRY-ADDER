// Lab 2: 4-bit Ripple Carry Adder
// combining everything in one file so vivado doesnt mess up paths

module internal_fa(
    input x, y, c_in,
    output s, c_out
);
    assign s = x ^ y ^ c_in;
    assign c_out = (x & y) | (y & c_in) | (c_in & x);
endmodule


module rca_4bit(
    input [3:0] num1,
    input [3:0] num2,
    input carry_in,
    output [3:0] sum_out,
    output carry_out
);

    wire w1, w2, w3; // mid-stage carries

    // positional mapping instead of named mapping (.a(a)) 
    internal_fa fa0 (num1[0], num2[0], carry_in, sum_out[0], w1);
    internal_fa fa1 (num1[1], num2[1], w1,       sum_out[1], w2);
    internal_fa fa2 (num1[2], num2[2], w2,       sum_out[2], w3);
    internal_fa fa3 (num1[3], num2[3], w3,       sum_out[3], carry_out);

endmodule
