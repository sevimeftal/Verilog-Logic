`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 06:53:57 PM
// Design Name: 
// Module Name: test_decoder_3to8
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


module test_decoder_3to8();
    reg[2:0]    IN;
    wire[7:0]   OUT;
    
    decoder_3to8 uut (.in(IN), .out(OUT));
    
    initial begin
        IN = 3'b000;    #125;
        IN = 3'b001;    #125;
        IN = 3'b010;    #125;
        IN = 3'b011;    #125;
        IN = 3'b100;    #125;
        IN = 3'b101;    #125;
        IN = 3'b110;    #125;
        IN = 3'b111;    #125;
    end
endmodule
