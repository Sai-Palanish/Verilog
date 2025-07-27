`timescale 1ns / 1ps



module full_adder(input a_in,b_in,c_in ,output sum,carry);

wire [2:0]w;

half_adder ha1 (a_in,b_in,w[0],w[1]);
half_adder ha2 (w[0],c_in,sum,w[2]);

assign carry=w[2]|w[1];

endmodule
