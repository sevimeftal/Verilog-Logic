`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2023 03:20:12 PM
// Design Name: 
// Module Name: test_async_up_counter
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


module test_async_up_counter();
    reg     E, clock, clear;
    wire    [3:0]   Q;
    
    async_up_counter dut (.E(E), .CLK(clock), .CLR(clear), .Q(Q));    
    
    initial begin
        clock = 0; clear = 0; E = 1; #20;
        clear = 1; #20;
    end
    
    always begin
        clock = ~clock; #20;
    end
endmodule
