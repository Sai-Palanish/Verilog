`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 21:15:57
// Design Name: 
// Module Name: ff_ff
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


module ff_ff(input [3:0]a,[3:0]b,[3:0]sum,[3:0]carry);
full_adder_df fa0 (a[0],b[0],1'b0,sum[0],carry[0]);
full_adder_df fa1 (a[1],b[1],carry[0],sum[1],carry[1]);
full_adder_df fa2 (a[2],b[2],carry[1],sum[2],carry[2]);
full_adder_df fa3 (a[3],b[3],carry[2],sum[3],carry[3]);
endmodule
