`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:16:54
// Design Name: 
// Module Name: decoder_2x4_tb
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


module decoder_2x4_tb;

reg [1:0]I;
wire [3:0]Y;
integer i;

decoder_2x4 dut (I,Y);

initial
begin
$monitor("input=%b | output=%b ",I,Y);
for(i=0;i<4;i=i+1)
begin
I=i;
#10;
end
$finish;
end
endmodule
