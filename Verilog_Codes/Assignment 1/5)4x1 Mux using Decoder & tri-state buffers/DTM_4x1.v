`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 23:22:42
// Design Name: 
// Module Name: DTM_4x1
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


module DTM_4x1(input [3:0]in,input[1:0]sel,output y);

wire [3:0]w;

decoder_2x4 dec_1 (sel,w);

bufif1(y,in[0],w[0]);
bufif1(y,in[1],w[1]);
bufif1(y,in[2],w[2]);
bufif1(y,in[3],w[3]);

endmodule
