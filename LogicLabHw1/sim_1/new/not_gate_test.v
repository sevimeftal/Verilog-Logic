`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2023 08:00:28 PM
// Design Name: 
// Module Name: not_gate_test
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


module not_gate_test();
    reg     a;
    wire    o;
    
    not_gate uut(.i(a), .o(o));
    
    initial begin
        a=0;    #500;
        a=1;    #500;
    end
endmodule
