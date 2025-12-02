`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2025 10:48:44 AM
// Design Name: 
// Module Name: Adder_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Adder_top(
   A_0,
    B_0,
    S_0);
  input [7:0]A_0;
  input [7:0]B_0;
  output [8:0]S_0;

  design_adder uut0
       (.A_0(A_0),
        .B_0(B_0),
        .S_0(S_0));
endmodule
