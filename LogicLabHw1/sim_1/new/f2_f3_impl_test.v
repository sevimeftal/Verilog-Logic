`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 02:38:17 AM
// Design Name: 
// Module Name: f2_f3_impl_test
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


module f2_f3_impl_test();
    reg     a, b, c;
    wire    f2, f3;

    f2_f3_impl uut (.a(a), .b(b), .c(c), .f2(f2), .f3(f3));
    
    initial begin
        a = 0;    b = 0;    c = 0;    #125;
        a = 0;    b = 0;    c = 1;    #125;
        a = 0;    b = 1;    c = 0;    #125;
        a = 0;    b = 1;    c = 1;    #125;
        a = 1;    b = 0;    c = 0;    #125;
        a = 1;    b = 0;    c = 1;    #125;
        a = 1;    b = 1;    c = 0;    #125;
        a = 1;    b = 1;    c = 1;    #125;
    end
endmodule
