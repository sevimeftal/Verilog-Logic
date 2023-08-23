`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 05:14:18 AM
// Design Name: 
// Module Name: test_part4
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


module test_part4();
    reg[7:0]    IN;
    reg[2:0]    address;
    reg         chip_select, reset, read_en, write_en, clock;
    wire[7:0]   OUT;
    
    part4 uut (.data_in(IN), .address(address), .chip_select(chip_select), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(OUT));
        
    initial begin
        clock = 1; reset = 1;
        chip_select = 1'b1;  address = 3'b000;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hAA; #50;
        chip_select = 1'b1;  address = 3'b001;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hB3; #50;
        chip_select = 1'b1;  address = 3'b010;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h1E; #50;
        chip_select = 1'b1;  address = 3'b011;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h82; #50;
        chip_select = 1'b1;  address = 3'b100;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hC4; #50;
        chip_select = 1'b1;  address = 3'b101;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hF3; #50;
        chip_select = 1'b1;  address = 3'b110;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h68; #50;
        chip_select = 1'b1;  address = 3'b111;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h44; #50;
        chip_select = 1'b1;  address = 3'b000;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h2C; #50;
        chip_select = 1'b1;  address = 3'b001;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hDD; #50;
        chip_select = 1'b1;  address = 3'b010;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hCC; #50;
        chip_select = 1'b1;  address = 3'b011;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h95; #50;
        chip_select = 1'b1;  address = 3'b100;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hD6; #50;
        chip_select = 1'b1;  address = 3'b101;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h09; #50;
        chip_select = 1'b1;  address = 3'b110;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hFF; #50;
        chip_select = 1'b1;  address = 3'b111;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h7C; #50;
        reset = 0;
        chip_select = 1'b1;  address = 3'b000;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h3F; #50;
        chip_select = 1'b1;  address = 3'b001;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hC0; #50;
        chip_select = 1'b1;  address = 3'b010;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h37; #50;
        chip_select = 1'b1;  address = 3'b011;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h5D; #50;
    end
    
    always begin
        clock = ~clock; #25;
    end
endmodule
