`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 20:53:53
// Design Name: 
// Module Name: full_adder_df
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


module full_adder_df(input a,b,c ,output sum,carry);

assign sum=a^b^c;
assign carry=a&b | b&c | c&a;

endmodule
