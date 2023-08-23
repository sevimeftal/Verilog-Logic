`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 05:28:29 AM
// Design Name: 
// Module Name: decoder_3to8
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


module decoder_3to8 (in, out);
    input   wire[2:0]    in;
    output  wire[7:0]    out;
    
    assign  out[0] = ~in[2] & ~in[1] & ~in[0],
            out[1] = ~in[2] & ~in[1] & in[0],
            out[2] = ~in[2] & in[1] & ~in[0],
            out[3] = ~in[2] & in[1] & in[0],
            out[4] = in[2] & ~in[1] & ~in[0],
            out[5] = in[2] & ~in[1] & in[0],
            out[6] = in[2] & in[1] & ~in[0],
            out[7] = in[2] & in[1] & in[0];
endmodule