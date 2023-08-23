`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2023 03:25:18 AM
// Design Name: 
// Module Name: test_negedge_d_ff
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


module test_negedge_d_ff();
    reg     D, clock;
    wire    Q, Q_n;
    
    negedge_d_ff uut (.D(D), .CLK(clock), .Q(Q), .Q_n(Q_n));
    
    initial begin
        clock = 1; D=1; #50;
        D = 0; #100;
        D = 1; #100; 
        D = 0; #100; 
        D = 1; #100;
        D = 0; #100; 
        D = 1; #100;
        D = 0; #100; 
        D = 1; #100;
        D = 0; #100;
        D = 1; #100;
        $finish;
    end
    
    always begin
        clock = ~clock; #50;
    end
endmodule
