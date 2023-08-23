`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 04:05:26 PM
// Design Name: 
// Module Name: mux_8to1
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


module mux_8to1 (i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, o);
    input   wire    i0, i1, i2, i3, i4, i5, i6, i7;
    input   wire    s0, s1, s2;
    output  wire    o;
            wire    n0, n1, n2;
            wire    m0, m1, m2, m3, m4, m5, m6, m7;
            
    not_gate NOT0 (.i(s0), .o(n0));
    not_gate NOT1 (.i(s1), .o(n1));
    not_gate NOT2 (.i(s2), .o(n2));
    
    and_4in AND0 (.i0(n0), .i1(n1), .i2(n2) , .i3(i0), .o(m0));
    and_4in AND1 (.i0(n0), .i1(n1), .i2(s2) , .i3(i1), .o(m1));
    and_4in AND2 (.i0(n0), .i1(s1), .i2(n2) , .i3(i2), .o(m2));
    and_4in AND3 (.i0(n0), .i1(s1), .i2(s2) , .i3(i3), .o(m3));
    and_4in AND4 (.i0(s0), .i1(n1), .i2(n2) , .i3(i4), .o(m4));
    and_4in AND5 (.i0(s0), .i1(n1), .i2(s2) , .i3(i5), .o(m5));
    and_4in AND6 (.i0(s0), .i1(s1), .i2(n2) , .i3(i6), .o(m6));
    and_4in AND7 (.i0(s0), .i1(s1), .i2(s2) , .i3(i7), .o(m7));
    
    or_8in OR (.i0(m0), .i1(m1), .i2(m2) , .i3(m3), .i4(m4), .i5(m5), .i6(m6) , .i7(m7), .o(o));
endmodule
