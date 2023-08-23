`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 04:17:40 AM
// Design Name: 
// Module Name: part1
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


module part1 (data_in1, data_in2, select, data_out);
    input   wire[7:0]   data_in1, data_in2;
    input   wire        select;
    output  wire[7:0]   data_out;
            
    three_state_buffer  BUFF0 (.in(data_in1), .en(~select), .out(data_out));
    three_state_buffer  BUFF1 (.in(data_in2), .en(select), .out(data_out));
endmodule
