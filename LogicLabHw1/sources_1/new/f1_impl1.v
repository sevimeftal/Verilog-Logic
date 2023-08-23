`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 04:11:38 PM
// Design Name: 
// Module Name: f1_impl1
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


module f1_impl1(a, b, c, d, f1);
    input   wire    a, b, c, d;
    output  wire    f1;
            wire    not_a, not_b, not_d;
            wire    t0, t1, t2;
            wire    pi1, pi2, pi3;
    
    not_gate NOT0 (.i(b), .o(not_b));
    not_gate NOT1 (.i(d), .o(not_d));
    and_gate AND0 (.i0(not_b), .i1(not_d), .o(pi1));
    
    not_gate NOT2 (.i(a), .o(not_a));
    and_gate AND1 (.i0(not_a), .i1(b), .o(t0));
    and_gate AND2 (.i0(t0), .i1(c), .o(pi2));
    
    and_gate AND3 (.i0(a), .i1(c), .o(t1));
    and_gate AND4 (.i0(t1), .i1(d), .o(pi3)); 
    
    or_gate OR0 (.i0(pi1), .i1(pi2), .o(t2));
    or_gate OR1 (.i0(t2), .i1(pi3), .o(f1));  
endmodule
