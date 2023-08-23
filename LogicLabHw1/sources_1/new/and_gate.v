`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2023 07:28:31 PM
// Design Name: 
// Module Name: and_gate
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
// ////////////////////////////////////////////////////////////////////////////////


module and_gate (i0, i1, o);
    input   wire    i0, i1;    
    output  wire    o;
    
    assign  o = i0 & i1;
endmodule
