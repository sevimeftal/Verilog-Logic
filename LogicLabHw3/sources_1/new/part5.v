`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 04:18:45 AM
// Design Name: 
// Module Name: part5
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


module part5 (data_in, address, reset, read_en, write_en, clock, data_out);
    input   wire[7:0]   data_in;
    input   wire[4:0]   address;
    input   wire        reset, read_en, write_en, clock;
    output  wire[7:0]   data_out;
            wire[3:0]   chip_select;
            
    decoder_2to4 CHIP_SLCT_DEC (.in(address[4:3]), .out(chip_select));
    
    part4 MEM0_8BYTE (.data_in(data_in), .address(address[2:0]), .chip_select(chip_select[0]), .reset(reset),
            .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
    
    part4 MEM1_8BYTE (.data_in(data_in), .address(address[2:0]), .chip_select(chip_select[1]), .reset(reset),
            .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
    
    part4 MEM2_8BYTE (.data_in(data_in), .address(address[2:0]), .chip_select(chip_select[2]), .reset(reset),
            .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
                            
    part4 MEM3_8BYTE (.data_in(data_in), .address(address[2:0]), .chip_select(chip_select[3]), .reset(reset),
            .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
endmodule