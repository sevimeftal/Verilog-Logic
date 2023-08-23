`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 03:24:34 AM
// Design Name: 
// Module Name: test_d_latch_w_en
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


module test_d_latch_w_en();
    reg     D, E;
    wire    Q, Q_n;
    
    d_latch_w_en uut (.D(D), .E(E), .Q(Q), .Q_n(Q_n));
    
    initial begin
        D = 0; E = 0; #100;
        D = 1; E = 0; #100; 
        D = 0; E = 1; #100; 
        D = 1; E = 1; #100;
        D = 0; E = 1; #100; 
        D = 1; E = 1; #100;
        D = 0; E = 0; #100; 
        D = 1; E = 0; #100;
        D = 0; E = 1; #100;
        D = 1; E = 1; #100;
        $finish;
    end
endmodule
