`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2023 02:59:18 PM
// Design Name: 
// Module Name: async_up_counter
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


module async_up_counter(E, CLK, CLR, Q);
    input   wire    E, CLK, CLR;
    output  wire    [3:0]   Q; 
            wire    [3:0]   Q_n;   
            wire    clear_feedback, clear_high, clear_low;

    assign  clear_feedback = ~(Q[0] & Q[1] & Q[2] & Q[3]);
    nand_gate NAND0 (.i0(clear_feedback), .i1(CLR), .o(clear_high));
    nand_gate NAND1 (.i0(clear_high), .i1(clear_high), .o(clear_low));
    
    posedge_jk_ff_w_clr JK0 (.J(E), .K(E), .CLK(CLK), .CLR(clear_low), .Q(Q[0]), .Q_n(Q_n[0]));
    posedge_jk_ff_w_clr JK1 (.J(E), .K(E), .CLK(Q_n[0]), .CLR(clear_low), .Q(Q[1]), .Q_n(Q_n[1]));
    posedge_jk_ff_w_clr JK2 (.J(E), .K(E), .CLK(Q_n[1]), .CLR(clear_low), .Q(Q[2]), .Q_n(Q_n[2]));
    posedge_jk_ff_w_clr JK3 (.J(E), .K(E), .CLK(Q_n[2]), .CLR(clear_low), .Q(Q[3]), .Q_n(Q_n[3]));
endmodule
