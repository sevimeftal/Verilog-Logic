`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 02:57:13 PM
// Design Name: 
// Module Name: and_4in
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


module and_4in (i0, i1, i2, i3, o);
    input   wire    i0, i1, i2, i3; 
    output  wire    o;
    
    assign  o = i0 & i1 & i2 & i3;
endmodule
