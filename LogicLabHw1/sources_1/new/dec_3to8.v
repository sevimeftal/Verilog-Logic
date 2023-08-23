`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 04:05:45 PM
// Design Name: 
// Module Name: dec_3to8
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


module dec_3to8 (s0, s1, s2, o0, o1, o2, o3, o4, o5, o6, o7);
    input   wire    s0, s1, s2;
    output  wire    o0, o1, o2, o3, o4, o5, o6, o7;
            wire    n0, n1, n2;
            
    not_gate NOT0 (.i(s0), .o(n0));
    not_gate NOT1 (.i(s1), .o(n1));
    not_gate NOT2 (.i(s2), .o(n2));
            
    and_3in AND0 (.i0(n0), .i1(n1), .i2(n2) , .o(o0));
    and_3in AND1 (.i0(n0), .i1(n1), .i2(s2) , .o(o1));
    and_3in AND2 (.i0(n0), .i1(s1), .i2(n2) , .o(o2));
    and_3in AND3 (.i0(n0), .i1(s1), .i2(s2) , .o(o3));
    and_3in AND4 (.i0(s0), .i1(n1), .i2(n2) , .o(o4));
    and_3in AND5 (.i0(s0), .i1(n1), .i2(s2) , .o(o5));
    and_3in AND6 (.i0(s0), .i1(s1), .i2(n2) , .o(o6));
    and_3in AND7 (.i0(s0), .i1(s1), .i2(s2) , .o(o7));
endmodule
