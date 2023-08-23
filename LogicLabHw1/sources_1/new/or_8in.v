`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 01:58:25 PM
// Design Name: 
// Module Name: or_8in
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


module or_8in (i0, i1, i2, i3, i4, i5, i6, i7, o);
    input   wire    i0, i1, i2, i3, i4, i5, i6, i7;  
    output  wire    o;
    
    assign  o = i0 | i1 | i2 | i3 | i4 | i5 | i6 | i7;
endmodule
