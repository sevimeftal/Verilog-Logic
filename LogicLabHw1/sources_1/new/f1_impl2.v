`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 04:11:59 PM
// Design Name: 
// Module Name: f1_impl2
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


module f1_impl2(a, b, c, d, f1);
    input   wire    a, b, c, d;
    output  wire    f1;
            wire    not_a, not_b, not_d, a_or_not_b, not_a_and_b, not_a_or_not_c, a_and_c ;
            wire    pi1, pi2, pi3, not_pi1, not_pi2, not_pi3, pi1_or_pi2, not_pi1_and_not_pi2, pi1_or_pi2_or_pi3;
    
    nand_gate NAND0(.i0(b), .i1(b), .o(not_b));
    nand_gate NAND1(.i0(d), .i1(d), .o(not_d));
    nand_gate NAND2(.i0(not_b), .i1(not_d), .o(not_pi1));
    nand_gate NAND3(.i0(a), .i1(a), .o(not_a));
    nand_gate NAND4(.i0(not_a), .i1(b), .o(a_or_not_b));
    nand_gate NAND5(.i0(a_or_not_b), .i1(a_or_not_b), .o(not_a_and_b));
    nand_gate NAND6(.i0(not_a_and_b), .i1(c), .o(not_pi2));
    nand_gate NAND7(.i0(a), .i1(c), .o(not_a_or_not_c));
    nand_gate NAND8(.i0(not_a_or_not_c), .i1(not_a_or_not_c), .o(a_and_c));
    nand_gate NAND9(.i0(a_and_c), .i1(d), .o(not_pi3));
    nand_gate NAND10(.i0(not_pi1), .i1(not_pi2), .o(pi1_or_pi2));
    nand_gate NAND11(.i0(pi1_or_pi2), .i1(pi1_or_pi2), .o(not_pi1_and_not_pi2));
    nand_gate NAND12(.i0(not_pi1_and_not_pi2), .i1(not_pi3), .o(pi1_or_pi2_or_pi3));
    
    assign f1 = pi1_or_pi2_or_pi3;
endmodule
