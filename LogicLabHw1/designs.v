/////////
module and_gate (i0, i1, o);
    input   wire    i0, i1;    
    output  wire    o;
    
    assign  o = i0 & i1;
endmodule

/////////
module or_gate (i0, i1, o);
    input   wire    i0, i1; 
    output  wire    o;
    
    assign  o = i0 | i1;
endmodule

/////////
module not_gate (i, o);
	input  wire    i;	
	output wire    o;
	
	assign o = ~i;
endmodule

/////////
module xor_gate (i0, i1, o);
    input   wire    i0, i1;
    output  wire    o;
            wire    n0, n1;
            wire    i0n1, n0i1;
    
    not_gate NOT0 (.i(i0), .o(n0));
    not_gate NOT1 (.i(i1), .o(n1));
    
    and_gate AND0 (.i0(i0), .i1(n1), .o(i0n1));
    and_gate AND1 (.i0(n0), .i1(i1), .o(n0i1));
    
    or_gate OR (.i0(i0n1), .i1(n0i1), .o(o));
endmodule

/////////
module nand_gate (i0, i1, o);
    input   wire    i0, i1;    
    output  wire    o;
            wire    t;
    
    and_gate AND (.i0(i0), .i1(i1), .o(t));
    not_gate NOT (.i(t), .o(o));
endmodule

/////////
module and_3in (i0, i1, i2, o);
    input   wire    i0, i1, i2;
    output  wire    o;
    
    assign   o = i0 & i1 & i2;
endmodule

/////////
module and_4in (i0, i1, i2, i3, o);
    input   wire    i0, i1, i2, i3; 
    output  wire    o;
    
    assign  o = i0 & i1 & i2 & i3;
endmodule

/////////
module or_8in (i0, i1, i2, i3, i4, i5, i6, i7, o);
    input   wire    i0, i1, i2, i3, i4, i5, i6, i7;  
    output  wire    o;
    
    assign  o = i0 | i1 | i2 | i3 | i4 | i5 | i6 | i7;
endmodule

/////////
module mux_8to1 (i0, i1, i2, i3, i4, i5, i6, i7, s0, s1, s2, o);
    input   wire    i0, i1, i2, i3, i4, i5, i6, i7;
    input   wire    s0, s1, s2;
    output  wire    o;
            wire    n0, n1, n2;
            wire    m0, m1, m2, m3, m4, m5, m6, m7;
            
    not_gate NOT0 (.i(s0), .o(n0));
    not_gate NOT1 (.i(s1), .o(n1));
    not_gate NOT2 (.i(s2), .o(n2));
    
    and_4in AND0 (.i0(n0), .i1(n1), .i2(n2) , .i3(i0), .o(m0));
    and_4in AND1 (.i0(n0), .i1(n1), .i2(s2) , .i3(i1), .o(m1));
    and_4in AND2 (.i0(n0), .i1(s1), .i2(n2) , .i3(i2), .o(m2));
    and_4in AND3 (.i0(n0), .i1(s1), .i2(s2) , .i3(i3), .o(m3));
    and_4in AND4 (.i0(s0), .i1(n1), .i2(n2) , .i3(i4), .o(m4));
    and_4in AND5 (.i0(s0), .i1(n1), .i2(s2) , .i3(i5), .o(m5));
    and_4in AND6 (.i0(s0), .i1(s1), .i2(n2) , .i3(i6), .o(m6));
    and_4in AND7 (.i0(s0), .i1(s1), .i2(s2) , .i3(i7), .o(m7));
    
    or_8in OR (.i0(m0), .i1(m1), .i2(m2) , .i3(m3), .i4(m4), .i5(m5), .i6(m6) , .i7(m7), .o(o));
endmodule

/////////
module dec_3to8 (s0, s1, s2, o0, o1, o2, o3, o4, o5, o6, o7);
    input   wire    s0, s1, s2;
    output  wire    o0, o1, o2, o3, o4, o5, o6, o7;
            wire    n0, n1, n2;
            
    not_gate NOT0 (.i(s0), .o(n0));
    not_gate NOT1 (.i(s1), .o(n1));
    not_gate NOT2 (.i(s2), .o(n2));
            
    and_3in AND0 (.i0(n0), .i1(n1), .i2(n2) , .o(o0));
    and_3in AND1 (.i0(n0), .i1(n1), .i2(s2) , .o(o1));
    and_3in AND2 (.i0(n0), .i1(s1), .i2(n2) , .o(o2));
    and_3in AND3 (.i0(n0), .i1(s1), .i2(s2) , .o(o3));
    and_3in AND4 (.i0(s0), .i1(n1), .i2(n2) , .o(o4));
    and_3in AND5 (.i0(s0), .i1(n1), .i2(s2) , .o(o5));
    and_3in AND6 (.i0(s0), .i1(s1), .i2(n2) , .o(o6));
    and_3in AND7 (.i0(s0), .i1(s1), .i2(s2) , .o(o7));
endmodule

/////////
module f1_impl1(a, b, c, d, f1);
    input   wire    a, b, c, d;
    output  wire    f1;
            wire    not_a, not_b, not_d;
            wire    t0, t1, t2;
            wire    pi1, pi2, pi3;
    
    not_gate NOT0 (.i(b), .o(not_b));
    not_gate NOT1 (.i(d), .o(not_d));
    and_gate AND0 (.i0(not_b), .i1(not_d), .o(pi1));
    
    not_gate NOT2 (.i(a), .o(not_a));
    and_gate AND1 (.i0(not_a), .i1(b), .o(t0));
    and_gate AND2 (.i0(t0), .i1(c), .o(pi2));
    
    and_gate AND3 (.i0(a), .i1(c), .o(t1));
    and_gate AND4 (.i0(t1), .i1(d), .o(pi3)); 
    
    or_gate OR0 (.i0(pi1), .i1(pi2), .o(t2));
    or_gate OR1 (.i0(t2), .i1(pi3), .o(f1));  
endmodule

/////////
module f1_impl2(a, b, c, d, f1);
    input   wire    a, b, c, d;
    output  wire    f1;
            wire    not_a, not_b, not_d, a_or_not_b, not_a_and_b, not_a_or_not_c, a_and_c ;
            wire    pi1, pi2, pi3, not_pi1, not_pi2, not_pi3, pi1_or_pi2, not_pi1_and_not_pi2, pi1_or_pi2_or_pi3;
    
    nand_gate NAND0(.i0(b), .i1(b), .o(not_b));
    nand_gate NAND1(.i0(d), .i1(d), .o(not_d));
    nand_gate NAND2(.i0(not_b), .i1(not_d), .o(not_pi1));
    nand_gate NAND3(.i0(a), .i1(a), .o(not_a));
    nand_gate NAND4(.i0(not_a), .i1(b), .o(a_or_not_b));
    nand_gate NAND5(.i0(a_or_not_b), .i1(a_or_not_b), .o(not_a_and_b));
    nand_gate NAND6(.i0(not_a_and_b), .i1(c), .o(not_pi2));
    nand_gate NAND7(.i0(a), .i1(c), .o(not_a_or_not_c));
    nand_gate NAND8(.i0(not_a_or_not_c), .i1(not_a_or_not_c), .o(a_and_c));
    nand_gate NAND9(.i0(a_and_c), .i1(d), .o(not_pi3));
    nand_gate NAND10(.i0(not_pi1), .i1(not_pi2), .o(pi1_or_pi2));
    nand_gate NAND11(.i0(pi1_or_pi2), .i1(pi1_or_pi2), .o(not_pi1_and_not_pi2));
    nand_gate NAND12(.i0(not_pi1_and_not_pi2), .i1(not_pi3), .o(pi1_or_pi2_or_pi3));
    
    assign f1 = pi1_or_pi2_or_pi3;
endmodule

/////////
module f1_impl3(a, b, c, d, f1);
    input   wire    a, b, c, d;
    output  wire    f1;
            wire    not_d, d_and_not_d, d_or_not_d;
            
    
    not_gate NOT (.i(d), .o(not_d));
    
    and_gate AND (.i0(d), .i1(not_d), .o(d_and_not_d)); // 0
    
    or_gate OR (.i0(d), .i1(not_d), .o(d_or_not_d)); // 1
    
    mux_8to1 MUX (.i0(not_d), .i1(not_d), .i2(d_and_not_d), .i3(d_or_not_d), .i4(not_d), .i5(d_or_not_d), .i6(d_and_not_d), .i7(d), .s0(a), .s1(b), .s2(c), .o(f1));
endmodule

/////////
module f2_f3_impl (a, b, c, f2, f3);
    input   wire    a, b, c;
    output  wire    f2, f3;
            wire    m0, m1, m2, m3, m4, m5, m6, m7;
            wire    ab;
    
    dec_3to8 DEC (.s0(a), .s1(b), .s2(c), .o0(m0), .o1(m1), .o2(m2), .o3(m3), .o4(m4), .o5(m5), .o6(m6), .o7(m7)); 
    
    or_gate OR0 (.i0(m3), .i1(m5), .o(f2));  
    
    or_gate OR1 (.i0(m6), .i1(m7), .o(ab));    
    or_gate OR2 (.i0(m6), .i1(ab), .o(f3));   
endmodule

/////////
module ha_1bit(i0, i1, sum, carry);
    input   wire    i0, i1;
    output  wire    sum, carry;
    
    xor_gate XOR (.i0(i0), .i1(i1), .o(sum));
    and_gate AND (.i0(i0), .i1(i1), .o(carry));
endmodule

/////////
module fa_1bit(i0, i1, cin, cout, sum);
    input   wire    i0, i1, cin;
    output  wire    cout, sum;
            wire    s, c0, c1;
    
    ha_1bit OBHA0 (.i0(i0), .i1(i1), .sum(s), .carry(c0));
    ha_1bit OBHA1 (.i0(s), .i1(cin), .sum(sum), .carry(c1));
    or_gate OR (.i0(c0), .i1(c1), .o(cout));
endmodule

/////////
module fa_4bits (i0, i1, cin, cout, sum);
    input   wire    [3:0]   i0, i1;
    input   wire    cin;
    output  wire    [3:0]   sum;
    output  wire    cout;
            wire    cout0, cout1, cout2;
            
    fa_1bit OBFA0 (.i0(i0[0]), .i1(i1[0]), .cin(cin), .cout(cout0), .sum(sum[0]));
    fa_1bit OBFA1 (.i0(i0[1]), .i1(i1[1]), .cin(cout0), .cout(cout1), .sum(sum[1]));
    fa_1bit OBFA2 (.i0(i0[2]), .i1(i1[2]), .cin(cout1), .cout(cout2), .sum(sum[2]));
    fa_1bit OBFA3 (.i0(i0[3]), .i1(i1[3]), .cin(cout2), .cout(cout), .sum(sum[3]));
endmodule

/////////
module fa_8bits (i0, i1, cin, cout, sum);
    input   wire    [7:0]   i0, i1;
    input   wire    cin;
    output  wire    [7:0]   sum;
    output  wire    cout;
            wire    cout0, cout1, cout2, cout3, cout4, cout5, cout6;
    
    fa_1bit OBFA0 (.i0(i0[0]), .i1(i1[0]), .cin(cin), .cout(cout0), .sum(sum[0]));
    fa_1bit OBFA1 (.i0(i0[1]), .i1(i1[1]), .cin(cout0), .cout(cout1), .sum(sum[1]));
    fa_1bit OBFA2 (.i0(i0[2]), .i1(i1[2]), .cin(cout1), .cout(cout2), .sum(sum[2]));
    fa_1bit OBFA3 (.i0(i0[3]), .i1(i1[3]), .cin(cout2), .cout(cout3), .sum(sum[3]));
    fa_1bit OBFA4 (.i0(i0[4]), .i1(i1[4]), .cin(cout3), .cout(cout4), .sum(sum[4]));
    fa_1bit OBFA5 (.i0(i0[5]), .i1(i1[5]), .cin(cout4), .cout(cout5), .sum(sum[5]));
    fa_1bit OBFA6 (.i0(i0[6]), .i1(i1[6]), .cin(cout5), .cout(cout6), .sum(sum[6]));
    fa_1bit OBFA7 (.i0(i0[7]), .i1(i1[7]), .cin(cout6), .cout(cout), .sum(sum[7]));
endmodule

/////////
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


