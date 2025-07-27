`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 21:42:07
// Design Name: 
// Module Name: addr_tb
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


module addr_tb;

reg [3:0]a,b;
wire [3:0]sum,carry;

ff_ff xxx (a,b,sum,carry);

initial begin
$monitor ("input1=%d | input2=%d | sum=%d",a,b,{carry[3],sum});

a<=4'd5;b<=4'd9;
#10;
a<=4'd4;b<=4'd3;
#10;
$finish;
end

endmodule
