`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 06:28:45 PM
// Design Name: 
// Module Name: b_minus_2a_test
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


module b_minus_2a_test();
    reg     [15:0]   a, b;
    reg     cin;
    wire    [15:0]   o;
    wire    cout;
    
    b_minus_2a uut(.a(a), .b(b), .cin(x), .cout(cout), .o(o));
    
    initial begin
        a = 16'd32;     b = 16'd7;      cin = 0;    #125;
        a = 16'd21;     b = 16'd85;     cin = 0;    #125;
        a = 16'd16;  b = 16'd36;  cin = 0;    #125;
        a = 16'd256;   b = 16'd5;   cin = 0;    #125;
        a = 16'd200;    b = 16'd95;     cin = 0;    #125;
        a = 16'd45;     b = 16'd135;    cin = 0;    #125;
        a = 16'd36;    b = 16'd255;    cin = 0;    #125;
        a = 16'd25;     b = 16'd65;    cin = 0;    #125;
    end
endmodule

