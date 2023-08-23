`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 03:24:01 AM
// Design Name: 
// Module Name: test_sr_latch_wo_en
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


module test_sr_latch_wo_en();
    reg     S, R;
    wire    Q, Q_n;
    
    sr_latch_wo_en uut (.S(S), .R(R), .Q(Q), .Q_n(Q_n));
    
    initial begin
        S = 0; R = 0; #100;
        S = 0; R = 1; #100; 
        S = 1; R = 0; #100; 
        S = 1; R = 1; #100;
        S = 0; R = 0; #100; 
        S = 1; R = 1; #100;
        S = 1; R = 0; #100; 
        S = 0; R = 0; #100;
        S = 0; R = 1; #100;
        S = 0; R = 0; #100;
        $finish;
    end
endmodule
