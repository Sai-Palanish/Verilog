`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 23:57:22
// Design Name: 
// Module Name: bi_buff
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


module bi_buff(inout a,b, input ctrl);

bufif1 (b,a,ctrl);
bufif0 (a,b,ctrl);

endmodule
