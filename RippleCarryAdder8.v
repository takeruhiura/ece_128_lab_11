`timescale 1ns / 1ps
//==================================================
// 8-bit Ripple Carry Adder
// Inputs : A[7:0], B[7:0]
// Output : S[8:0]  (S[8] = Carry Out)
//==================================================

module RippleCarryAdder8(
    input  [7:0] A,
    input  [7:0] B,
    output [8:0] S
);
    wire [7:0] carry;  // internal carries

    // Instantiate 8 full adders
    FullAdder fa0 (.a(A[0]), .b(B[0]), .cin(1'b0),      .sum(S[0]), .cout(carry[0]));
    FullAdder fa1 (.a(A[1]), .b(B[1]), .cin(carry[0]),  .sum(S[1]), .cout(carry[1]));
    FullAdder fa2 (.a(A[2]), .b(B[2]), .cin(carry[1]),  .sum(S[2]), .cout(carry[2]));
    FullAdder fa3 (.a(A[3]), .b(B[3]), .cin(carry[2]),  .sum(S[3]), .cout(carry[3]));
    FullAdder fa4 (.a(A[4]), .b(B[4]), .cin(carry[3]),  .sum(S[4]), .cout(carry[4]));
    FullAdder fa5 (.a(A[5]), .b(B[5]), .cin(carry[4]),  .sum(S[5]), .cout(carry[5]));
    FullAdder fa6 (.a(A[6]), .b(B[6]), .cin(carry[5]),  .sum(S[6]), .cout(carry[6]));
    FullAdder fa7 (.a(A[7]), .b(B[7]), .cin(carry[6]),  .sum(S[7]), .cout(carry[7]));

    assign S[8] = carry[7]; // final carry-out
endmodule

module FullAdder(
    input  a,
    input  b,
    input  cin,
    output sum,
    output cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (a & cin);
endmodule
//------------------------------------


