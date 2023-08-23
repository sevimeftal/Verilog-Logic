`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 04:18:29 AM
// Design Name: 
// Module Name: part4
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


module part4 (data_in, address, chip_select, reset, read_en, write_en, clock, data_out);
    input   wire[7:0]   data_in;
    input   wire[2:0]   address;
    input   wire        chip_select, reset, read_en, write_en, clock;
    output  wire[7:0]   data_out;
            wire[7:0]   address_num_select, line_select;
    
    decoder_3to8 ADDRESS_DEC (.in(address), .out(address_num_select));
    
    assign  line_select[0] = chip_select && address_num_select[0],
            line_select[1] = chip_select && address_num_select[1],
            line_select[2] = chip_select && address_num_select[2],
            line_select[3] = chip_select && address_num_select[3],
            line_select[4] = chip_select && address_num_select[4],
            line_select[5] = chip_select && address_num_select[5],
            line_select[6] = chip_select && address_num_select[6],
            line_select[7] = chip_select && address_num_select[7];
    
    part3 MEM_LINE0 (.data_in(data_in), .reset(reset), .line_select(line_select[0]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE1 (.data_in(data_in), .reset(reset), .line_select(line_select[1]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE2 (.data_in(data_in), .reset(reset), .line_select(line_select[2]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE3 (.data_in(data_in), .reset(reset), .line_select(line_select[3]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE4 (.data_in(data_in), .reset(reset), .line_select(line_select[4]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE5 (.data_in(data_in), .reset(reset), .line_select(line_select[5]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE6 (.data_in(data_in), .reset(reset), .line_select(line_select[6]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE7 (.data_in(data_in), .reset(reset), .line_select(line_select[7]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));    
endmodule
