`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2023 11:14:12 AM
// Design Name: 
// Module Name: test_sr_latch_w_en
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


module test_sr_latch_w_en();
    reg     S, R, E;
    wire    Q, Q_n;

    sr_latch_w_en uut (.S(S), .R(R), .E(E), .Q(Q), .Q_n(Q_n));

    initial begin
        S = 0; R = 0; E = 0; #50;
        S = 1; R = 0; E = 0; #50;        
        S = 0; R = 0; E = 1; #50;
        S = 0; R = 1; E = 1; #50; 
        S = 1; R = 0; E = 1; #50; 
        S = 1; R = 1; E = 1; #50;
        S = 0; R = 0; E = 1; #50; 
        S = 1; R = 1; E = 1; #50;
        S = 1; R = 0; E = 1; #50; 
        S = 0; R = 0; E = 1; #50;
        S = 0; R = 1; E = 1; #50;
        S = 0; R = 0; E = 1; #50;       
        S = 0; R = 1; E = 0; #50;
        S = 1; R = 1; E = 0; #50;
        S = 0; R = 0; E = 0; #50; 
        S = 0; R = 0; E = 1; #50;
        S = 1; R = 0; E = 1; #50;
        S = 0; R = 0; E = 1; #50;
        S = 0; R = 1; E = 1; #50;
        S = 1; R = 1; E = 1; #50;       
        $finish;
    end
endmodule

