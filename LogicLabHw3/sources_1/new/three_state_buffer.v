`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 04:20:39 AM
// Design Name: 
// Module Name: three_state_buffer
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


module three_state_buffer (in, en, out);
    input   wire[7:0]   in;
    input   wire        en;
    output  wire[7:0]   out;
    
    assign out = en ? in : 8'bZ;
endmodule
