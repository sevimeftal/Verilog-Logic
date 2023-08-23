`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2023 09:11:54 AM
// Design Name: 
// Module Name: pulsegap_11over5
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


module pulsegap_11over5();
    reg     [15:0]  I;
    reg     load, clock;
    wire    out;
    
    circ_shift_reg_16bits dut (.load_in(I), .load(load), .clock(clock), .shift_out(out));
    
    initial begin
    I = 16'b1111111111100000; load = 1; clock = 0; #10;
    load = 0; #1000;
    $finish;
    end
    
    always begin
    clock = ~clock; #10;
    end
endmodule