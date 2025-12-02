`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2025 11:30:24 AM
// Design Name: 
// Module Name: ripple_carry_tb
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


`timescale 1ns / 1ps


module ripple_carry_tb;
    reg  [7:0] A, B;
    wire [8:0] S;

    RippleCarryAdder8 uut (.A(A), .B(B), .S(S));

    initial begin
        $dumpfile("RippleCarryAdder8.vcd");
        $dumpvars(0, RippleCarryAdder8_tb);

        A = 8'd5;   B = 8'd7;    #10;
        A = 8'd25;  B = 8'd75;   #10;
        A = 8'd100; B = 8'd200;  #10;
        A = 8'd255; B = 8'd1;    #10;
        $finish;
    end

    initial $monitor("Time=%0t | A=%d | B=%d | Sum=%d", $time, A, B, S);
endmodule