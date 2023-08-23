`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2023 04:17:55 AM
// Design Name: 
// Module Name: part2
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


module part2 (data_in1, data_in2, select, data_out1, data_out2);
    input   wire[7:0]   data_in1, data_in2;
    input   wire        select;
    output  wire[7:0]   data_out1, data_out2;
            wire[7:0]   bus;
    
    three_state_buffer  BUFF0 (.in(data_in1), .en(~select), .out(bus));
    three_state_buffer  BUFF1 (.in(data_in2), .en(select), .out(bus));
    
    three_state_buffer  BUFF2 (.in(bus), .en(~select), .out(data_out1));
    three_state_buffer  BUFF3 (.in(bus), .en(select), .out(data_out2));
endmodule
