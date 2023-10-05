`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2023 21:41:00
// Design Name: 
// Module Name: gcd
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


module gcd(
    input [6:0] A,
    input [6:0] B,
    output reg [6:0] gcd
    );
    reg [6:0]Ain,Bin;
    integer i;
    always@(*)
    begin
    Ain=A;
    Bin=B;
    /*while(Ain!=Bin)
    begin
    if(Ain<Bin)
    Bin=Bin-Ain;
    else
    Ain=Ain-Bin;
    end 
    gcd=Ain;
    end*/
    for (i=1;i<=3;i=i+1)
    begin
    if(Ain<Bin & Ain !=Bin)
    Bin=Bin-Ain;
    else if(Ain!=Bin)
    Ain=Ain-Bin;
    end
    gcd=Ain;
    end
endmodule
