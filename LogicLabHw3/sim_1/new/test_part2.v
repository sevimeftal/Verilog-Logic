`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 05:13:21 AM
// Design Name: 
// Module Name: test_part2
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


module test_part2();
    reg[7:0]    IN1, IN2;
    reg         select;
    wire[7:0]   OUT1, OUT2;
    
    part2 uut (.data_in1(IN1), .data_in2(IN2), .select(select), .data_out1(OUT1), .data_out2(OUT2));
    
    initial begin
        IN1 = 8'hAB;  IN2 = 8'hE2;  select = 1'b0;  #100;
        IN1 = 8'h08;  IN2 = 8'hBB;  select = 1'b1;  #100;
        IN1 = 8'hF2;  IN2 = 8'h90;  select = 1'b0;  #100;
        IN1 = 8'hCC;  IN2 = 8'h54;  select = 1'b1;  #100;
        IN1 = 8'h67;  IN2 = 8'hC3;  select = 1'b0;  #100;
        IN1 = 8'h49;  IN2 = 8'h4E;  select = 1'b1;  #100;
        IN1 = 8'hB1;  IN2 = 8'hFF;  select = 1'b0;  #100;
        IN1 = 8'h00;  IN2 = 8'hA9;  select = 1'b1;  #100;
        IN1 = 8'hFF;  IN2 = 8'h3B;  select = 1'b0;  #100;
        IN1 = 8'h3D;  IN2 = 8'h00;  select = 1'b1;  #100;
    end
endmodule
