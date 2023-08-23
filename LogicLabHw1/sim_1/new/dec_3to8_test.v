`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 03:36:00 PM
// Design Name: 
// Module Name: dec_3to8_test
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


module dec_3to8_test();
    reg     a, b, c;
    wire    o0, o1, o2, o3, o4, o5, o6, o7;
    
    dec_3to8 uut (.s0(a), .s1(b), .s2(c), .o0(o0), .o1(o1), .o2(o2), .o3(o3), .o4(o4), .o5(o5), .o6(o6), .o7(o7));

    initial begin
        a=0;    b=0;    c=0;    #125;
        a=0;    b=0;    c=1;    #125;
        a=0;    b=1;    c=0;    #125;
        a=0;    b=1;    c=1;    #125;
        a=1;    b=0;    c=0;    #125;
        a=1;    b=0;    c=1;    #125;
        a=1;    b=1;    c=0;    #125;
        a=1;    b=1;    c=1;    #125;
    end
endmodule
