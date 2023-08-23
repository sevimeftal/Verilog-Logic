`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 02:50:11 AM
// Design Name: 
// Module Name: fa_8bits
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


module fa_8bits (i0, i1, cin, cout, sum);
    input   wire    [7:0]   i0, i1;
    input   wire    cin;
    output  wire    [7:0]   sum;
    output  wire    cout;
            wire    cout0, cout1, cout2, cout3, cout4, cout5, cout6;
    
    fa_1bit OBFA0 (.i0(i0[0]), .i1(i1[0]), .cin(cin), .cout(cout0), .sum(sum[0]));
    fa_1bit OBFA1 (.i0(i0[1]), .i1(i1[1]), .cin(cout0), .cout(cout1), .sum(sum[1]));
    fa_1bit OBFA2 (.i0(i0[2]), .i1(i1[2]), .cin(cout1), .cout(cout2), .sum(sum[2]));
    fa_1bit OBFA3 (.i0(i0[3]), .i1(i1[3]), .cin(cout2), .cout(cout3), .sum(sum[3]));
    fa_1bit OBFA4 (.i0(i0[4]), .i1(i1[4]), .cin(cout3), .cout(cout4), .sum(sum[4]));
    fa_1bit OBFA5 (.i0(i0[5]), .i1(i1[5]), .cin(cout4), .cout(cout5), .sum(sum[5]));
    fa_1bit OBFA6 (.i0(i0[6]), .i1(i1[6]), .cin(cout5), .cout(cout6), .sum(sum[6]));
    fa_1bit OBFA7 (.i0(i0[7]), .i1(i1[7]), .cin(cout6), .cout(cout), .sum(sum[7]));
endmodule
