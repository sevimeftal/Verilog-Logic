`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2023 08:42:48 AM
// Design Name: 
// Module Name: circ_shift_reg_16bits
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


module circ_shift_reg_16bits(load_in, load, clock, shift_out);
    input   wire    [15:0]  load_in;
    input   wire    load, clock;
    output  wire    shift_out;
            wire    shift;
            reg     [15:0]  D;
    
    assign  shift = ~load;
            
    always@(posedge clock) begin
        D[15] <= (load & load_in[15]) | (shift & D[14]);
        D[14] <= (load & load_in[14]) | (shift & D[13]);
        D[13] <= (load & load_in[13]) | (shift & D[12]);
        D[12] <= (load & load_in[12]) | (shift & D[11]);
        D[11] <= (load & load_in[11]) | (shift & D[10]);
        D[10] <= (load & load_in[10]) | (shift & D[9]);
        D[9] <= (load & load_in[9]) | (shift & D[8]);
        D[8] <= (load & load_in[8]) | (shift & D[7]);
        D[7] <= (load & load_in[7]) | (shift & D[6]);
        D[6] <= (load & load_in[6]) | (shift & D[5]);
        D[5] <= (load & load_in[5]) | (shift & D[4]);
        D[4] <= (load & load_in[4]) | (shift & D[3]);
        D[3] <= (load & load_in[3]) | (shift & D[2]);
        D[2] <= (load & load_in[2]) | (shift & D[1]);
        D[1] <= (load & load_in[1]) | (shift & D[0]);
        D[0] <= (load & load_in[0]) | (shift & D[15]);
    end
    
    assign shift_out = D[15];
endmodule
