`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/24/2023 06:28:14 PM
// Design Name: 
// Module Name: b_minus_2a
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


module b_minus_2a(a, b, cin, cout, o);
    input   wire    [15:0]  a,b;
    input   wire    cin;
    output  wire    [15:0]  o;
    output  wire    cout;
            wire    c1, c2, two_a;        
     
    
    not_gate NOT (.i(cin), .o(not_cin));
            
    and_gate AND (.i0(cin), .i1(not_cin), .o(cin_and_not_cin)); // 0
            
    or_gate OR0 (.i0(cin), .i1(not_cin), .o(cin_or_not_cin)); // 1

    add_subt_16bits OP1 (.op0(a), .op1(a), .x(cin_and_not_cin), .cout(c1), .result(two_a));
    add_subt_16bits OP2 (.op0(b), .op1(two_a), .x(cin_or_not_cin), .cout(c2), .result(o));   
    
    or_gate OR1 (.i0(c1), .i1(c2), .o(cout));
endmodule