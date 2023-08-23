`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 02:49:27 AM
// Design Name: 
// Module Name: fa_4bits
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


module fa_4bits (i0, i1, cin, cout, sum);
    input   wire    [3:0]   i0, i1;
    input   wire    cin;
    output  wire    [3:0]   sum;
    output  wire    cout;
            wire    cout0, cout1, cout2;
            
    fa_1bit OBFA0 (.i0(i0[0]), .i1(i1[0]), .cin(cin), .cout(cout0), .sum(sum[0]));
    fa_1bit OBFA1 (.i0(i0[1]), .i1(i1[1]), .cin(cout0), .cout(cout1), .sum(sum[1]));
    fa_1bit OBFA2 (.i0(i0[2]), .i1(i1[2]), .cin(cout1), .cout(cout2), .sum(sum[2]));
    fa_1bit OBFA3 (.i0(i0[3]), .i1(i1[3]), .cin(cout2), .cout(cout), .sum(sum[3]));
endmodule
