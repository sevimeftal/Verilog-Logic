`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 06:49:54 AM
// Design Name: 
// Module Name: decoder_2to4
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


module decoder_2to4 (in, out);
    input   wire[1:0]    in;
    output  wire[3:0]    out;
    
    assign  out[0] = ~in[1] & ~in[0],
            out[1] = ~in[1] & in[0],
            out[2] = in[1] & ~in[0],
            out[3] = in[1] & in[0];
endmodule
