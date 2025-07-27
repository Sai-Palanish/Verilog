`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 00:05:41
// Design Name: 
// Module Name: bibuf_tb
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


module bibuf_tb;

wire a, b;             // Bidirectional signals
reg ctrl;              // Direction control
reg temp1, temp2;      // Temporary drivers

integer i;

// Instantiate DUT
bi_buff dut (.a(a), .b(b), .ctrl(ctrl));

// Drive 'a' when ctrl=1, else high-Z; drive 'b' when ctrl=0
assign a = ctrl ? temp1 : 1'bz;
assign b = ctrl ? 1'bz : temp2;

initial begin
  $display("temp1 | temp2 | ctrl");
  $display("--------------------");

  for (i = 0; i < 8; i = i + 1) begin
    {temp1, temp2, ctrl} = i[2:0]; // Extract 3 bits

    #5; // Wait for signals to settle

    $display("  %b     |   %b    |  %b", a, b, ctrl);
  end

  $finish;
end

endmodule
