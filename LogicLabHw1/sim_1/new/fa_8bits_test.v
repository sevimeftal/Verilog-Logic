`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 02:48:14 AM
// Design Name: 
// Module Name: fa_8bits_test
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


module fa_8bits_test();
    reg     [7:0]   a, b;
    reg     cin;
    wire    [7:0]   o;
    wire    cout;
    
    fa_8bits uut(.i0(a), .i1(b), .cin(cin), .cout(cout), .sum(o));

    initial begin
        a = 8'd29;    b = 8'd5;     cin = 0;    #125;
        a = 8'd51;    b = 8'd92;    cin = 0;    #125;
        a = 8'd17;    b = 8'd28;    cin = 0;    #125;
        a = 8'd191;   b = 8'd2;     cin = 0;    #125;
        a = 8'd200;   b = 8'd95;    cin = 0;    #125;
        a = 8'd49;    b = 8'd25;    cin = 0;    #125;
        a = 8'd78;    b = 8'd255;   cin = 0;    #125;
        a = 8'd43;    b = 8'd59;    cin = 0;    #125;
    end
endmodule
