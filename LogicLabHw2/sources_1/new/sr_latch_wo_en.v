`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 02:25:24 AM
// Design Name: 
// Module Name: sr_latch_wo_en
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


module sr_latch_wo_en (S, R, Q, Q_n);
    input   wire    S, R;
    output  wire    Q, Q_n;
            wire    S_n, R_n;
    
    nand_gate NAND0 (.i0(S), .i1(S), .o(S_n));
    nand_gate NAND1 (.i0(R), .i1(R), .o(R_n));
    nand_gate NAND2 (.i0(S_n), .i1(Q_n), .o(Q));
    nand_gate NAND3 (.i0(Q), .i1(R_n), .o(Q_n));
endmodule