`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2023 11:16:34 AM
// Design Name: 
// Module Name: posedge_jk_ff
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


module posedge_jk_ff (J, K, CLK, Q, Q_n);
    input   wire    CLK, J, K;
    output  wire    Q, Q_n;
            wire    not_CLK, not_K, J_nand_Q_n, Q_nand_not_K, S1, R1, S2, R2;         
              
    nand_gate NAND0 (.i0(K), .i1(K), .o(not_K));
    nand_gate NAND1 (.i0(Q_n), .i1(J), .o(J_nand_Q_n));
    nand_gate NAND2 (.i0(Q), .i1(not_K), .o(Q_nand_not_K));
    nand_gate NAND3 (.i0(J_nand_Q_n), .i1(Q_nand_not_K), .o(S1));
    nand_gate NAND4 (.i0(S1), .i1(S1), .o(R1));
    nand_gate NAND5 (.i0(CLK), .i1(CLK), .o(not_CLK));
     
    sr_latch_w_en SRFF1 (.S(S1), .R(R1), .E(not_CLK), .Q(S2), .Q_n(R2));
    sr_latch_w_en SRFF2 (.S(S2), .R(R2), .E(CLK), .Q(Q), .Q_n(Q_n));  
endmodule
