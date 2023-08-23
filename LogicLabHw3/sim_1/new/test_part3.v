`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 05:13:56 AM
// Design Name: 
// Module Name: test_part3
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


module test_part3();
    reg[7:0]    IN;
    reg         reset, line_select, read_en, write_en, clock;
    wire[7:0]   OUT;
    
    part3 uut (.data_in(IN), .reset(reset), .line_select(line_select),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(OUT));
        
    initial begin
        clock = 1; reset = 1;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'hAA; #50;
        line_select = 1'b1;  read_en = 1'b0; write_en = 1'b1;   IN = 8'hB3; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'h1E; #50;
        line_select = 1'b1;  read_en = 1'b0; write_en = 1'b1;   IN = 8'h82; #50;
        line_select = 1'b0;  read_en = 1'b1; write_en = 1'b0;   IN = 8'hC4; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b1;   IN = 8'hF3; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'h68; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b1;   IN = 8'h44; #50;
        reset = 0;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'h2C; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b1;   IN = 8'hDD; #50;
        reset = 1;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'hCC; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b1;   IN = 8'h95; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'hD6; #50;
        line_select = 1'b1;  read_en = 1'b0; write_en = 1'b1;   IN = 8'h09; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'hFF; #50;
        line_select = 1'b1;  read_en = 1'b0; write_en = 1'b1;   IN = 8'h7C; #50;
        reset = 0;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'h3F; #50;
        reset = 1;
        line_select = 1'b1;  read_en = 1'b0; write_en = 1'b1;   IN = 8'hC0; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'h37; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b1;   IN = 8'h5D; #50;
    end
    
    always begin
        clock = ~clock; #25;
    end
endmodule
