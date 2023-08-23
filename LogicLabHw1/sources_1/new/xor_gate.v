`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 04:02:46 PM
// Design Name: 
// Module Name: xor_gate
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


module xor_gate (i0, i1, o);
    input   wire    i0, i1;
    output  wire    o;
            wire    n0, n1;
            wire    i0n1, n0i1;
    
    not_gate NOT0 (.i(i0), .o(n0));
    not_gate NOT1 (.i(i1), .o(n1));
    
    and_gate AND0 (.i0(i0), .i1(n1), .o(i0n1));
    and_gate AND1 (.i0(n0), .i1(i1), .o(n0i1));
    
    or_gate OR (.i0(i0n1), .i1(n0i1), .o(o));
endmodule
