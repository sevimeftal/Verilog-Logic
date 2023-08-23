`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 10:16:14 PM
// Design Name: 
// Module Name: f2_f3_impl
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


module f2_f3_impl (a, b, c, f2, f3);
    input   wire    a, b, c;
    output  wire    f2, f3;
            wire    m0, m1, m2, m3, m4, m5, m6, m7;
            wire    ab;
    
    dec_3to8 DEC (.s0(a), .s1(b), .s2(c), .o0(m0), .o1(m1), .o2(m2), .o3(m3), .o4(m4), .o5(m5), .o6(m6), .o7(m7)); 
    
    or_gate OR0 (.i0(m3), .i1(m5), .o(f2));  
    
    or_gate OR1 (.i0(m6), .i1(m7), .o(ab));    
    or_gate OR2 (.i0(m6), .i1(ab), .o(f3));   
endmodule
