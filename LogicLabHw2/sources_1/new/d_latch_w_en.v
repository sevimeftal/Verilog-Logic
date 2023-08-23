`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 03:04:44 AM
// Design Name: 
// Module Name: d_latch_w_en
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


module d_latch_w_en (D, E, Q, Q_n);
    input   wire    D, E;
    output  wire    Q, Q_n;
            wire    D_n, S_i, R_i;
    
    nand_gate NAND0 (.i0(D), .i1(D), .o(D_n));
    nand_gate NAND1 (.i0(D), .i1(E), .o(S_i));
    nand_gate NAND2 (.i0(E), .i1(D_n), .o(R_i));
    nand_gate NAND3 (.i0(S_i), .i1(Q_n), .o(Q));
    nand_gate NAND4 (.i0(Q), .i1(R_i), .o(Q_n));
endmodule