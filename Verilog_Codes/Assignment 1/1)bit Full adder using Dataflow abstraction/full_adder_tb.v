`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 22:35:35
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;

wire sum,carry;
reg a,b,c;
integer i;

full_adder xxx (.a(a),.b(b),.c(c),.sum(sum),.carry(carry));

initial begin

$monitor("a=%b | b=%b | c=%b | sum=%b | carry=%b",a,b,c,sum,carry);

for(i=0;i<8;i=i+1)
begin
{a,b,c}=i;
#10;
end
$finish;
end

endmodule


