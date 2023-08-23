`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 02:25:08 AM
// Design Name: 
// Module Name: sr_latch_w_en
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


module sr_latch_w_en (S, R, E, Q, Q_n);
    input   wire    S, R, E;
    output  wire    Q, Q_n;
            wire    S_i, R_i;
    
    nand_gate NAND0 (.i0(S), .i1(E), .o(S_i));
    nand_gate NAND1 (.i0(E), .i1(R), .o(R_i));
    nand_gate NAND2 (.i0(S_i), .i1(Q_n), .o(Q));
    nand_gate NAND3 (.i0(Q), .i1(R_i), .o(Q_n));
endmodule
