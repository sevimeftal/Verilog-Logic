`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 04:12:15 PM
// Design Name: 
// Module Name: f1_impl3
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


module f1_impl3(a, b, c, d, f1);
    input   wire    a, b, c, d;
    output  wire    f1;
            wire    not_d, d_and_not_d, d_or_not_d;
            
    
    not_gate NOT (.i(d), .o(not_d));
    
    and_gate AND (.i0(d), .i1(not_d), .o(d_and_not_d)); // 0
    
    or_gate OR (.i0(d), .i1(not_d), .o(d_or_not_d)); // 1
    
    mux_8to1 MUX (.i0(not_d), .i1(not_d), .i2(d_and_not_d), .i3(d_or_not_d), .i4(not_d), .i5(d_or_not_d), .i6(d_and_not_d), .i7(d), .s0(a), .s1(b), .s2(c), .o(f1));
endmodule
