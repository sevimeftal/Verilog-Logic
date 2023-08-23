`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 04:18:09 AM
// Design Name: 
// Module Name: part3
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


module part3 (data_in, reset, line_select, read_en, write_en, clock, data_out);
    input   wire[7:0]   data_in;
    input   wire        reset, line_select, read_en, write_en, clock;
    output  wire[7:0]   data_out;
            reg[7:0]    mem_line;
    
    always @(posedge clock or negedge reset) begin
        if(!reset) begin
            mem_line <= 8'b0;
        end
        else begin
            if (write_en && line_select) begin
                mem_line <= data_in;
            end
        end     
    end
    
    three_state_buffer BUFFER (.in(mem_line), .en(read_en && line_select), .out(data_out));
endmodule
