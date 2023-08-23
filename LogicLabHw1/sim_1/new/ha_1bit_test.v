`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 04:02:03 AM
// Design Name: 
// Module Name: ha_1bit_test
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


module ha_1bit_test();
    reg     a, b;
    wire    cout, o;
    
    ha_1bit uut (.i0(a), .i1(b), .sum(o), .carry(cout));
    
    initial begin
    a=0;    b=0;    #250;
    a=0;    b=1;    #250;
    a=1;    b=0;    #250;
    a=1;    b=1;    #250;
    end
endmodule
