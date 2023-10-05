`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 21:47:02
// Design Name: 
// Module Name: gcd_tb
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


module gcd_tb(

    );
    reg [6:0]A;
    reg [6:0]B;
    
    wire [6:0]gcd;
    
    gcd uut(A,B,gcd);
    
    initial begin
    A=12;B=8;
    #10 A=35;B=42;
    #10 A=25;B=41;
    #10 A=7;B=36;
    #10 A=8;B=2;
    #10 A=79;B=64;
    #10 A=80;B=32;
    #10 A=54;B=66;
    end
    initial begin
    $monitor("A=%D | B=%D GCD=%D ",A,B,gcd);
    #100 $finish;
    end
    
endmodule
