`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 04:01:43 AM
// Design Name: 
// Module Name: f1_impl3_test
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


module f1_impl3_test();
    reg     a,b,c,d;
    wire    f1;
    
    f1_impl3 uut(.a(a), .b(b), .c(c), .d(d), .f1(f1));
    
    initial begin
        a=0;    b=0;    c=0;    d=0;    #50;
        a=0;    b=0;    c=0;    d=1;    #50;
        a=0;    b=0;    c=1;    d=0;    #50;
        a=0;    b=0;    c=1;    d=1;    #50;
        a=0;    b=1;    c=0;    d=0;    #50;
        a=0;    b=1;    c=0;    d=1;    #50;
        a=0;    b=1;    c=1;    d=0;    #50;
        a=0;    b=1;    c=1;    d=1;    #50;
        a=1;    b=0;    c=0;    d=0;    #50;
        a=1;    b=0;    c=0;    d=1;    #50;
        a=1;    b=0;    c=1;    d=0;    #50;
        a=1;    b=0;    c=1;    d=1;    #50;
        a=1;    b=1;    c=0;    d=0;    #50;
        a=1;    b=1;    c=0;    d=1;    #50;
        a=1;    b=1;    c=1;    d=0;    #50;
        a=1;    b=1;    c=1;    d=1;    #50;
    end
endmodule
