`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:57:35
// Design Name: 
// Module Name: encoder_8x3
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


module encoder_8x3(input [7:0]i,output [2:0]y);

assign y[2]=i[7]|i[6]|i[5]|i[4];
assign y[1]=i[7]|i[6]|i[3]|i[2];
assign y[0]=i[7]|i[5]|i[3]|i[1];
endmodule
