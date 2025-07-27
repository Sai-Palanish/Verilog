`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 22:00:53
// Design Name: 
// Module Name: muxT_4x4
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


module muxT_4x4
(input [3:0]i,
 input[1:0]s,
 output y);
 
 wire [1:0]w;
 
 mux_2x1 m0 (i[0],i[1],s[0],w[0]);
 mux_2x1 m1 (i[2],i[3],s[0],w[1]);
 mux_2x1 m2 (w[0],w[1],s[1],y);
 
endmodule
