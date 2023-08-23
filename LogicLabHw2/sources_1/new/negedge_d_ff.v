`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/04/2023 12:50:12 AM
// Design Name: 
// Module Name: negedge_d_ff
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


module negedge_d_ff (D, CLK, Q, Q_n);
    input   wire    D, CLK;
    output  wire    Q, Q_n;
            wire    Qm, Qm_n, not_CLK;
    
    nand_gate NAND (.i0(CLK), .i1(CLK), .o(not_CLK));
    d_latch_w_en D_Latch_Master (.D(D), .E(CLK), .Q(Qm), .Q_n(Qm_n));
    d_latch_w_en D_Latch_Slave (.D(Qm), .E(not_CLK), .Q(Q), .Q_n(Q_n));
endmodule
