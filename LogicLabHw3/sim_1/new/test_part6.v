`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 05:15:17 AM
// Design Name: 
// Module Name: test_part6
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


module test_part6();
    reg[31:0]   IN;
    reg[4:0]    address;
    reg         reset, read_en, write_en, clock;
    wire[31:0]  OUT;

    part6 uut (.data_in(IN), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(OUT));
    
    initial begin
        clock = 1; reset = 1;
        address = 5'b10111;   read_en = 1'b0; write_en = 1'b1;   IN = 32'hAAC3B504; #100;
        address = 5'b01101;   read_en = 1'b0; write_en = 1'b1;   IN = 32'hB3045DF5; #100;
        address = 5'b01001;   read_en = 1'b0; write_en = 1'b1;   IN = 32'h1EC65FC2; #100;
        address = 5'b11111;   read_en = 1'b0; write_en = 1'b1;   IN = 32'h8230DAA3; #100;
        address = 5'b10111;   read_en = 1'b1; write_en = 1'b0;   IN = 32'hC4CB10F3; #100;
        address = 5'b01101;   read_en = 1'b1; write_en = 1'b0;   IN = 32'hF3AA5BCD; #100;
        address = 5'b01001;   read_en = 1'b1; write_en = 1'b0;   IN = 32'h687FDE31; #100;
        address = 5'b11111;   read_en = 1'b1; write_en = 1'b0;   IN = 32'h44EC10FD; #100;
        reset = 0;
        address = 5'b10111;   read_en = 1'b1; write_en = 1'b0;   IN = 32'h2C056BA2; #100;
        address = 5'b01101;   read_en = 1'b1; write_en = 1'b0;   IN = 32'hDDF0895D; #100;
    end
    
    always begin
        clock = ~clock; #50;
    end
endmodule
