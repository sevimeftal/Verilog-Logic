`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2023 12:17:38 PM
// Design Name: 
// Module Name: test_posedge_jk_ff_w_clr
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


module test_posedge_jk_ff_w_clr();
    reg     J, K, clock, clear;
    wire    Q, Q_n;

    posedge_jk_ff_w_clr dut (.J(J), .K(K), .CLK(clock), .CLR(clear), .Q(Q), .Q_n(Q_n));    
    
    initial begin
        J = 0; K = 0; clock = 0; clear = 0; #25;
        J = 1; K = 0; clear = 1; #50;        
        J = 0; K = 0; #50; 
        J = 0; K = 1; #50; 
        J = 1; K = 1; #50;
        J = 0; K = 0; #50; 
        J = 1; K = 0; #50; 
        J = 0; K = 0; #50;
        J = 0; K = 1; #50;
        J = 1; K = 1; #50;       
        J = 0; K = 0; #50;
        J = 0; K = 1; #50;
        J = 1; K = 0; #50;
        J = 0; K = 0; #50;
        J = 0; K = 1; #50;
        J = 1; K = 1; #50; 
        J = 1; K = 0; clear = 0; #50;        
        J = 0; K = 0; #50;  
        J = 0; K = 1; #50; 
        J = 1; K = 1; clear = 1; #50;
        J = 0; K = 1; #50;   
        $finish;
    end
    
    always begin
        clock = ~clock; #25;
    end
endmodule