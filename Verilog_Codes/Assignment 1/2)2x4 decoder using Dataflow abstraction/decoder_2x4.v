`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:10:17
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(I,Y);

input [1:0]I;
output [3:0]Y;

assign Y[0]=(~I[0])&(~I[1]);
assign Y[1]=I[0]&(~I[1]);
assign Y[2]=(~I[0])&I[1];
assign Y[3]=I[0]&I[1];

endmodule
