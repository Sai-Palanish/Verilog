`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 16:45:45
// Design Name: 
// Module Name: decoder3x8_tb
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


module decoder3x8_tb;

reg [2:0]in;
reg enable;
wire [7:0]out;

decoder_3x8 dut (out,in,enable);
integer i;
initial begin
for(i=0;i<16;i=i+1)
begin
{enable,in}=i;
#10;
end
$finish;
end

endmodule
