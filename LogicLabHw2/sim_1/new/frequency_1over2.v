`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2023 09:09:44 AM
// Design Name: 
// Module Name: frequency_1over2
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


module frequency_1over2();
    reg     [15:0]  I;
    reg     load, clock;
    wire    out;
    
    circ_shift_reg_16bits dut (.load_in(I), .load(load), .clock(clock), .shift_out(out));
    
    initial begin
    I = 16'b1010101010101010; load = 1; clock = 0; #25;
    load = 0; #1000;
    $finish;
    end
    
    always begin
    clock = ~clock; #25;
    end
endmodule
