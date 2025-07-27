`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 22:09:18
// Design Name: 
// Module Name: mux4x1_tb
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


module mux4x1_tb;

reg [3:0]i_d;
reg [1:0]s;
wire y;

integer i,j;

muxT_4x4 dut (i_d,s,y);

initial begin
$monitor("Inputs=%b | sel=%b | y=%b",i_d,s,y);
for (i=0;i<4;i=i+1)
    begin
        for(j=0;j<16;j=j+1)
            begin
                s<=i&2'b11;
                i_d<=j&4'b1111;
                #10;
            end
    end
$finish;
end
                 
endmodule
