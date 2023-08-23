`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 02:47:44 AM
// Design Name: 
// Module Name: fa_4bits_test
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


module fa_4bits_test();
    reg     [3:0]   a, b;
    reg     cin;
    wire    [3:0]   o;
    wire    cout;
    
    fa_4bits uut(.i0(a), .i1(b), .cin(cin), .cout(cout), .sum(o));

    initial begin
        a = 4'd8;     b = 4'd1;     cin = 0;    #125;
        a = 4'd2;     b = 4'd7;     cin = 0;    #125;
        a = 4'd4;     b = 4'd5;     cin = 0;    #125;
        a = 4'd11;    b = 4'd10;    cin = 0;    #125;
        a = 4'd14;    b = 4'd5;     cin = 0;    #125;
        a = 4'd15;    b = 4'd9;     cin = 0;    #125;
        a = 4'd6;     b = 4'd3;     cin = 0;    #125;
        a = 4'd8;     b = 4'd12;    cin = 0;    #125;
    end
endmodule
