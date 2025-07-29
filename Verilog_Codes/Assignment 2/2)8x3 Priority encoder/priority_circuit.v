`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 19:50:08
// Design Name: 
// Module Name: priority_circuit
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


module priority_circuit(input [7:0]x,output [7:0]i );

assign i[0]=(~x[7])&(~x[6])&(~x[5])&(~x[4])&(~x[3])&(~x[2])&(~x[1])&x[0];
assign i[1]=(~x[7])&(~x[6])&(~x[5])&(~x[4])&(~x[3])&(~x[2])&x[1];
assign i[2]=(~x[7])&(~x[6])&(~x[5])&(~x[4])&(~x[3])&x[2];
assign i[3]=(~x[7])&(~x[6])&(~x[5])&(~x[4])&x[3];
assign i[4]=(~x[7])&(~x[6])&(~x[5])&x[4];
assign i[5]=(~x[7])&(~x[6])&x[5];
assign i[6]=(~x[7])&x[6];
assign i[7]=x[7];

endmodule
