`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 03:16:56 AM
// Design Name: 
// Module Name: add_subt_16bits
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


module add_subt_16bits (op0, op1, x, cout, result);
    input   wire    [15:0]  op0, op1;
    input   wire    x;
    output  wire    [15:0]  result;
    output  wire    cout;
            wire    c;
            wire    [15:0]  t;
    
    xor_gate XOR0 (.i0(op1[0]), .i1(x), .o(t[0]));
    xor_gate XOR1 (.i0(op1[1]), .i1(x), .o(t[1]));
    xor_gate XOR2 (.i0(op1[2]), .i1(x), .o(t[2]));
    xor_gate XOR3 (.i0(op1[3]), .i1(x), .o(t[3]));
    xor_gate XOR4 (.i0(op1[4]), .i1(x), .o(t[4]));
    xor_gate XOR5 (.i0(op1[5]), .i1(x), .o(t[5]));
    xor_gate XOR6 (.i0(op1[6]), .i1(x), .o(t[6]));
    xor_gate XOR7 (.i0(op1[7]), .i1(x), .o(t[7]));
    xor_gate XOR8 (.i0(op1[8]), .i1(x), .o(t[8]));
    xor_gate XOR9 (.i0(op1[9]), .i1(x), .o(t[9]));
    xor_gate XOR10 (.i0(op1[10]), .i1(x), .o(t[10]));
    xor_gate XOR11 (.i0(op1[11]), .i1(x), .o(t[11]));
    xor_gate XOR12 (.i0(op1[12]), .i1(x), .o(t[12]));
    xor_gate XOR13 (.i0(op1[13]), .i1(x), .o(t[13]));
    xor_gate XOR14 (.i0(op1[14]), .i1(x), .o(t[14]));
    xor_gate XOR15 (.i0(op1[15]), .i1(x), .o(t[15]));
    
    fa_8bits EBFA0 (.i0(op0[7:0]), .i1(t[7:0]), .cin(x), .cout(c), .sum(result[7:0]));
    fa_8bits EBFA1 (.i0(op0[15:8]), .i1(t[15:8]), .cin(c), .cout(cout), .sum(result[15:8]));      
endmodule
