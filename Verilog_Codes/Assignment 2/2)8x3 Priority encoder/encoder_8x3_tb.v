`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 20:12:49
// Design Name: 
// Module Name: encoder_8x4_tb
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


module encoder_8x4_tb;

reg [7:0]i;
wire [2:0]y;

top dut (i,y);

task xyz([7:0]x);
begin
i<=x;
end
endtask

initial
begin
xyz(8'd8);
#10;
xyz(8'd9);
#10;
$finish;
end



endmodule
