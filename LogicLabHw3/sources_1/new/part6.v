`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 04:19:03 AM
// Design Name: 
// Module Name: part6
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


module part6 (data_in, address, reset, read_en, write_en, clock, data_out);
    input   wire[31:0]  data_in;
    input   wire[4:0]   address;
    input   wire        reset, read_en, write_en, clock;
    output  wire[31:0]  data_out;
    
    part5 MEM_highest_8bits (.data_in(data_in[31:24]), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out[31:24]));
        
    part5 MEM_second_8bits (.data_in(data_in[23:16]), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out[23:16]));
            
    part5 MEM_third_8bits (.data_in(data_in[15:8]), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out[15:8]));
                
    part5 MEM_lowest_8bits (.data_in(data_in[7:0]), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out[7:0]));
endmodule
