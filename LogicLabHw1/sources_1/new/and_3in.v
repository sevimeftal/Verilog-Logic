`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 03:28:54 PM
// Design Name: 
// Module Name: and_3in
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


module and_3in (i0, i1, i2, o);
    input   wire    i0, i1, i2;
    output  wire    o;
    
    assign   o = i0 & i1 & i2;
endmodule
