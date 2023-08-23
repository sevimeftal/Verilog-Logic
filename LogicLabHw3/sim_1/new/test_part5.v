`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 05:14:40 AM
// Design Name: 
// Module Name: test_part5
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


module test_part5();
    reg[7:0]    IN;
    reg[4:0]    address;
    reg         reset, read_en, write_en, clock;
    wire[7:0]   OUT;
    
    part5 uut (.data_in(IN), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(OUT));
        
    initial begin
            clock = 1; reset = 1;
            address = 5'b00000;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hAA; #50;
            address = 5'b00001;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hB3; #50;
            address = 5'b01010;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h1E; #50;
            address = 5'b01011;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h82; #50;
            address = 5'b10100;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hC4; #50;
            address = 5'b10101;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hF3; #50;
            address = 5'b11110;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h68; #50;
            address = 5'b11111;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h44; #50;
            address = 5'b00000;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h2C; #50;
            address = 5'b00001;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hDD; #50;
            address = 5'b01010;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hCC; #50;
            address = 5'b01011;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h95; #50;
            address = 5'b10100;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hD6; #50;
            address = 5'b10101;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h09; #50;
            address = 5'b11110;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hFF; #50;
            address = 5'b11111;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h7C; #50;
            reset = 0;
            address = 5'b00001;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h3F; #50;
            address = 5'b01011;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hC0; #50;
            address = 5'b10101;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h37; #50;
            address = 5'b11111;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h5D; #50;
        end
        
        always begin
            clock = ~clock; #25;
        end
endmodule
