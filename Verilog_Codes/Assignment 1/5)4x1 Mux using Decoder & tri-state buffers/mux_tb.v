`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 23:42:09
// Design Name: 
// Module Name: mux_tb
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


module tb_DTM_4x1;

  reg [3:0] in;         // Inputs to the MUX
  reg [1:0] sel;        // Select lines
  wire y;               // Output from the MUX

  // Instantiate the DUT (Device Under Test)
  DTM_4x1 uut (
    .in(in),
    .sel(sel),
    .y(y)
  );

  integer i;

  initial begin
    // Set inputs to known values
    in = 4'b1010;  // Example: in[0]=0, in[1]=1, in[2]=0, in[3]=1

    $display("sel | y | expected_y");
    $display("--------------------");

    // Test all select combinations
    for (i = 0; i < 4; i = i + 1) begin
      sel = i;
      #5; // wait for signal propagation

      // Display selected input and output
      $display(" %b  | %b |     %b", sel, y, in[sel]);
    end

    $finish;
  end

endmodule

