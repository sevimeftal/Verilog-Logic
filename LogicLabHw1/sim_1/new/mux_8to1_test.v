`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2023 03:35:36 PM
// Design Name: 
// Module Name: mux_8to1_test
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


module mux_8to1_test();
    reg     a, b, c, i0, i1, i2, i3, i4, i5, i6, i7;
    wire    o;

    mux_8to1 uut(.s0(a), .s1(b), .s2(c), .i0(i0), .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .i6(i6), .i7(i7), .o(o));

    initial begin
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=0;    b=0;    c=0;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=0;    b=0;    c=1;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=0;    b=1;    c=0;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=0;    b=1;    c=1;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=1;    b=0;    c=0;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=1;    b=0;    c=1;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=1;    b=1;    c=0;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=1;    b=1;    c=1;    #125;
    end
endmodule
