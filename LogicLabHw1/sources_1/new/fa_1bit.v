`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 04:44:31 PM
// Design Name: 
// Module Name: fa_1bit
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


module fa_1bit(i0, i1, cin, cout, sum);
    input   wire    i0, i1, cin;
    output  wire    cout, sum;
            wire    s, c0, c1;
    
    ha_1bit OBHA0 (.i0(i0), .i1(i1), .sum(s), .carry(c0));
    ha_1bit OBHA1 (.i0(s), .i1(cin), .sum(sum), .carry(c1));
    or_gate OR (.i0(c0), .i1(c1), .o(cout));
endmodule
