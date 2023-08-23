`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2023 07:53:16 PM
// Design Name: 
// Module Name: nand_gate
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


module nand_gate (i0, i1, o);
    input   wire    i0, i1;    
    output  wire    o;
            wire    t;
    
    and_gate AND (.i0(i0), .i1(i1), .o(t));
    not_gate NOT (.i(t), .o(o));
endmodule
