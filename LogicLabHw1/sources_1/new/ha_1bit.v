`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 04:43:54 PM
// Design Name: 
// Module Name: ha_1bit
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


module ha_1bit(i0, i1, sum, carry);
    input   wire    i0, i1;
    output  wire    sum, carry;
    
    xor_gate XOR (.i0(i0), .i1(i1), .o(sum));
    and_gate AND (.i0(i0), .i1(i1), .o(carry));
endmodule
