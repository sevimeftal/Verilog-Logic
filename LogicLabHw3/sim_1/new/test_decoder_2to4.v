`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 06:54:21 PM
// Design Name: 
// Module Name: test_decoder_2to4
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


module test_decoder_2to4();
    reg[1:0]    IN;
    wire[3:0]   OUT;

    decoder_2to4 uut (.in(IN), .out(OUT));
    
    initial begin
        IN = 2'b00;    #250;
        IN = 2'b01;    #250;
        IN = 2'b10;    #250;
        IN = 2'b11;    #250;
    end
endmodule
