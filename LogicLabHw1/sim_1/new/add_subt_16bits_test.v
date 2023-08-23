`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 03:16:21 AM
// Design Name: 
// Module Name: add_subt_16bits_test
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


module add_subt_16bits_test();
    reg     [15:0]   a, b;
    reg     x;
    wire    [15:0]   o;
    wire    cout;
    
    add_subt_16bits uut(.op0(a), .op1(b), .x(x), .cout(cout), .result(o));
    
    initial begin
        a = 16'd23;     b = 16'd3;      x = 0;    #125;
        a = 16'd21;     b = 16'd75;     x = 0;    #125;
        a = 16'd16800;  b = 16'd16900;  x = 0;    #125;
        a = 16'd6983;   b = 16'd6650;   x = 0;    #125;
        a = 16'd325;    b = 16'd97;     x = 0;    #125;
        a = 16'd44;     b = 16'd190;    x = 0;    #125;
        a = 16'd463;    b = 16'd241;    x = 0;    #125;
        a = 16'd86;     b = 16'd572;    x = 0;    #125;
    end
endmodule
