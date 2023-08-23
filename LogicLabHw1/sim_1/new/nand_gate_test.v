`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2023 08:01:23 PM
// Design Name: 
// Module Name: nand_gate_test
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


module nand_gate_test();
    reg     a, b;
    wire    o;
    
    nand_gate uut(.i0(a), .i1(b), .o(o));
    
    initial begin
        a=0;    b=0;    #250;
        a=0;    b=1;    #250;
        a=1;    b=0;    #250;
        a=1;    b=1;    #250;
    end
endmodule
