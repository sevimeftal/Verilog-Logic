`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 05:12:44 AM
// Design Name: 
// Module Name: test_three_state_buffer
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


module test_three_state_buffer();
    reg[7:0]    IN;
    reg         enable;
    wire[7:0]   OUT;
    
    three_state_buffer uut (.in(IN), .en(enable), .out(OUT));
    
    initial begin
        enable = 1;
        IN = 8'hF3; #50;
        IN = 8'h08; #50;
        IN = 8'h56; #50;
        IN = 8'hE1; #50;
        IN = 8'h2C; #50;
        IN = 8'hB4; #50;
        enable = 0;
        IN = 8'h00; #50;
        IN = 8'hC4; #50;
        IN = 8'h93; #50;
        IN = 8'h70; #50;
        enable = 1;
        IN = 8'hFF; #50;
        IN = 8'h42; #50;
        enable = 0;
        IN = 8'h81; #50;
        enable = 1;
        IN = 8'h3D; #50;
        enable = 0;
        IN = 8'hBB; #50;
        enable = 1;
        IN = 8'h00; #50;
        enable = 0;
        IN = 8'hDA; #50;
        IN = 8'h73; #50;
        enable = 1;
        IN = 8'hAC; #50;
        IN = 8'h64; #50;
    end
endmodule
