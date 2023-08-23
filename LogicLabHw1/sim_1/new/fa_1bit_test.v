`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 01:59:44 AM
// Design Name: 
// Module Name: fa_1bit_test
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


module fa_1bit_test();
    reg     a, b, cin;
    wire    cout, o;

    fa_1bit uut (.i0(a), .i1(b), .cin(cin), .cout(cout), .sum(o));

initial begin
    a=0;    b=0;    cin=0;  #125;
    a=0;    b=0;    cin=1;  #125;
    a=0;    b=1;    cin=0;  #125;
    a=0;    b=1;    cin=1;  #125;
    a=1;    b=0;    cin=0;  #125;
    a=1;    b=0;    cin=1;  #125;
    a=1;    b=1;    cin=0;  #125;
    a=1;    b=1;    cin=1;  #125;
end
endmodule
