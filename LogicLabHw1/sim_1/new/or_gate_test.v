`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 07:59:07 PM
// Design Name: 
// Module Name: or_gate_test
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


module or_gate_test();
    reg     a, b;
    wire    o;
    
    or_gate uut(.i0(a), .i1(b), .o(o));
    
    initial begin
        a=0;    b=0;    #250;
        a=0;    b=1;    #250;
        a=1;    b=0;    #250;
        a=1;    b=1;    #250;
    end
endmodule
