//////
module and_gate_test();
    reg     a, b;
    wire    o;
    
    and_gate uut (.i0(a), .i1(b), .o(o));
    
    initial begin
        a=0;    b=0;    #250;
        a=0;    b=1;    #250;
        a=1;    b=0;    #250;
        a=1;    b=1;    #250;
    end
endmodule

//////
module or_gate_test();
    reg     a, b;
    wire    o;
    
    or_gate uut(.i0(a), .i1(b), .o(o));
    
    initial begin
        a=0;    b=0;    #250;
        a=0;    b=1;    #250;
        a=1;    b=0;    #250;
        a=1;    b=1;    #250;
    end
endmodule

//////
module not_gate_test();
    reg     a;
    wire    o;
    
    not_gate uut(.i(a), .o(o));
    
    initial begin
        a=0;    #500;
        a=1;    #500;
    end
endmodule

//////
module xor_gate_test();
    reg     a, b;
    wire    o;

    xor_gate uut(.i0(a), .i1(b), .o(o));

    initial begin
        a=0;    b=0;    #250;
        a=0;    b=1;    #250;
        a=1;    b=0;    #250;
        a=1;    b=1;    #250;
    end
endmodule

//////
module nand_gate_test();
    reg     a, b;
    wire    o;
    
    nand_gate uut(.i0(a), .i1(b), .o(o));
    
    initial begin
        a=0;    b=0;    #250;
        a=0;    b=1;    #250;
        a=1;    b=0;    #250;
        a=1;    b=1;    #250;
    end
endmodule

//////
module mux_8to1_test();
    reg     a, b, c, i0, i1, i2, i3, i4, i5, i6, i7;
    wire    o;

    mux_8to1 uut(.s0(a), .s1(b), .s2(c), .i0(i0), .i1(i1), .i2(i2), .i3(i3), .i4(i4), .i5(i5), .i6(i6), .i7(i7), .o(o));

    initial begin
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=0;    b=0;    c=0;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=0;    b=0;    c=1;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=0;    b=1;    c=0;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=0;    b=1;    c=1;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=1;    b=0;    c=0;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=1;    b=0;    c=1;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=1;    b=1;    c=0;    #125;
        i0=0;   i1=1;   i2=0;   i3=1;   i4=0;   i5=1;   i6=0;   i7=1;   a=1;    b=1;    c=1;    #125;
    end
endmodule

//////
module dec_3to8_test();
    reg     a, b, c;
    wire    o0, o1, o2, o3, o4, o5, o6, o7;
    
    dec_3to8 uut (.s0(a), .s1(b), .s2(c), .o0(o0), .o1(o1), .o2(o2), .o3(o3), .o4(o4), .o5(o5), .o6(o6), .o7(o7));

    initial begin
        a=0;    b=0;    c=0;    #125;
        a=0;    b=0;    c=1;    #125;
        a=0;    b=1;    c=0;    #125;
        a=0;    b=1;    c=1;    #125;
        a=1;    b=0;    c=0;    #125;
        a=1;    b=0;    c=1;    #125;
        a=1;    b=1;    c=0;    #125;
        a=1;    b=1;    c=1;    #125;
    end
endmodule


//////
module f1_impl1_test();
    reg     a,b,c,d;
    wire    f1;
    
    f1_impl1 uut(.a(a), .b(b), .c(c), .d(d), .f1(f1));
    
    initial begin
        a=0;    b=0;    c=0;    d=0;    #50;
        a=0;    b=0;    c=0;    d=1;    #50;
        a=0;    b=0;    c=1;    d=0;    #50;
        a=0;    b=0;    c=1;    d=1;    #50;
        a=0;    b=1;    c=0;    d=0;    #50;
        a=0;    b=1;    c=0;    d=1;    #50;
        a=0;    b=1;    c=1;    d=0;    #50;
        a=0;    b=1;    c=1;    d=1;    #50;
        a=1;    b=0;    c=0;    d=0;    #50;
        a=1;    b=0;    c=0;    d=1;    #50;
        a=1;    b=0;    c=1;    d=0;    #50;
        a=1;    b=0;    c=1;    d=1;    #50;
        a=1;    b=1;    c=0;    d=0;    #50;
        a=1;    b=1;    c=0;    d=1;    #50;
        a=1;    b=1;    c=1;    d=0;    #50;
        a=1;    b=1;    c=1;    d=1;    #50;
    end
endmodule

//////
module f1_impl2_test();
    reg     a,b,c,d;
    wire    f1;
    
    f1_impl1 uut(.a(a), .b(b), .c(c), .d(d), .f1(f1));
    
    initial begin
        a=0;    b=0;    c=0;    d=0;    #50;
        a=0;    b=0;    c=0;    d=1;    #50;
        a=0;    b=0;    c=1;    d=0;    #50;
        a=0;    b=0;    c=1;    d=1;    #50;
        a=0;    b=1;    c=0;    d=0;    #50;
        a=0;    b=1;    c=0;    d=1;    #50;
        a=0;    b=1;    c=1;    d=0;    #50;
        a=0;    b=1;    c=1;    d=1;    #50;
        a=1;    b=0;    c=0;    d=0;    #50;
        a=1;    b=0;    c=0;    d=1;    #50;
        a=1;    b=0;    c=1;    d=0;    #50;
        a=1;    b=0;    c=1;    d=1;    #50;
        a=1;    b=1;    c=0;    d=0;    #50;
        a=1;    b=1;    c=0;    d=1;    #50;
        a=1;    b=1;    c=1;    d=0;    #50;
        a=1;    b=1;    c=1;    d=1;    #50;
    end
endmodule

//////
module f1_impl3_test();
    reg     a,b,c,d;
    wire    f1;
    
    f1_impl3 uut(.a(a), .b(b), .c(c), .d(d), .f1(f1));
    
    initial begin
        a=0;    b=0;    c=0;    d=0;    #50;
        a=0;    b=0;    c=0;    d=1;    #50;
        a=0;    b=0;    c=1;    d=0;    #50;
        a=0;    b=0;    c=1;    d=1;    #50;
        a=0;    b=1;    c=0;    d=0;    #50;
        a=0;    b=1;    c=0;    d=1;    #50;
        a=0;    b=1;    c=1;    d=0;    #50;
        a=0;    b=1;    c=1;    d=1;    #50;
        a=1;    b=0;    c=0;    d=0;    #50;
        a=1;    b=0;    c=0;    d=1;    #50;
        a=1;    b=0;    c=1;    d=0;    #50;
        a=1;    b=0;    c=1;    d=1;    #50;
        a=1;    b=1;    c=0;    d=0;    #50;
        a=1;    b=1;    c=0;    d=1;    #50;
        a=1;    b=1;    c=1;    d=0;    #50;
        a=1;    b=1;    c=1;    d=1;    #50;
    end
endmodule

//////
module f2_f3_impl_test();
    reg     a, b, c;
    wire    f2, f3;

    f2_f3_impl uut (.a(a), .b(b), .c(c), .f2(f2), .f3(f3));
    
    initial begin
        a = 0;    b = 0;    c = 0;    #125;
        a = 0;    b = 0;    c = 1;    #125;
        a = 0;    b = 1;    c = 0;    #125;
        a = 0;    b = 1;    c = 1;    #125;
        a = 1;    b = 0;    c = 0;    #125;
        a = 1;    b = 0;    c = 1;    #125;
        a = 1;    b = 1;    c = 0;    #125;
        a = 1;    b = 1;    c = 1;    #125;
    end
endmodule

//////
module ha_1bit_test();
    reg     a, b;
    wire    cout, o;
    
    ha_1bit uut (.i0(a), .i1(b), .sum(o), .carry(cout));
    
    initial begin
    a=0;    b=0;    #250;
    a=0;    b=1;    #250;
    a=1;    b=0;    #250;
    a=1;    b=1;    #250;
    end
endmodule

//////
module fa_1bit_test();
    reg     a, b, cin;
    wire    cout, o;

    fa_1bit uut (.i0(a), .i1(b), .cin(cin), .cout(cout), .sum(o));

initial begin
    a=0;    b=0;    cin=0;  #125;
    a=0;    b=0;    cin=1;  #125;
    a=0;    b=1;    cin=0;  #125;
    a=0;    b=1;    cin=1;  #125;
    a=1;    b=0;    cin=0;  #125;
    a=1;    b=0;    cin=1;  #125;
    a=1;    b=1;    cin=0;  #125;
    a=1;    b=1;    cin=1;  #125;
end
endmodule

//////module fa_4bits_test();
    reg     [3:0]   a, b;
    reg     cin;
    wire    [3:0]   o;
    wire    cout;
    
    fa_4bits uut(.i0(a), .i1(b), .cin(cin), .cout(cout), .sum(o));

    initial begin
        a = 4'd8;     b = 4'd1;     cin = 0;    #125;
        a = 4'd2;     b = 4'd7;     cin = 0;    #125;
        a = 4'd4;     b = 4'd5;     cin = 0;    #125;
        a = 4'd11;    b = 4'd10;    cin = 0;    #125;
        a = 4'd14;    b = 4'd5;     cin = 0;    #125;
        a = 4'd15;    b = 4'd9;     cin = 0;    #125;
        a = 4'd6;     b = 4'd3;     cin = 0;    #125;
        a = 4'd8;     b = 4'd12;    cin = 0;    #125;
    end
endmodule

//////
module fa_8bits_test();
    reg     [7:0]   a, b;
    reg     cin;
    wire    [7:0]   o;
    wire    cout;
    
    fa_8bits uut(.i0(a), .i1(b), .cin(cin), .cout(cout), .sum(o));

    initial begin
        a = 8'd29;    b = 8'd5;     cin = 0;    #125;
        a = 8'd51;    b = 8'd92;    cin = 0;    #125;
        a = 8'd17;    b = 8'd28;    cin = 0;    #125;
        a = 8'd191;   b = 8'd2;     cin = 0;    #125;
        a = 8'd200;   b = 8'd95;    cin = 0;    #125;
        a = 8'd49;    b = 8'd25;    cin = 0;    #125;
        a = 8'd78;    b = 8'd255;   cin = 0;    #125;
        a = 8'd43;    b = 8'd59;    cin = 0;    #125;
    end
endmodule

//////
module add_subt_16bits_test();
    reg     [15:0]   a, b;
    reg     x;
    wire    [15:0]   o;
    wire    cout;
    
    add_subt_16bits uut(.op0(a), .op1(b), .x(x), .cout(cout), .result(o));
    
    initial begin
        a = 16'd23;     b = 16'd3;      x = 0;    #125;
        a = 16'd21;     b = 16'd75;     x = 0;    #125;
        a = 16'd16800;  b = 16'd16900;  x = 0;    #125;
        a = 16'd6983;   b = 16'd6650;   x = 0;    #125;
        a = 16'd325;    b = 16'd97;     x = 0;    #125;
        a = 16'd44;     b = 16'd190;    x = 0;    #125;
        a = 16'd463;    b = 16'd241;    x = 0;    #125;
        a = 16'd86;     b = 16'd572;    x = 0;    #125;
    end
endmodule

//////
module b_minus_2a_test();
    reg     [15:0]   a, b;
    reg     cin;
    wire    [15:0]   o;
    wire    cout;
    
    b_minus_2a uut(.a(a), .b(b), .cin(x), .cout(cout), .o(o));
    
    initial begin
        a = 16'd32;     b = 16'd7;      cin = 0;    #125;
        a = 16'd21;     b = 16'd85;     cin = 0;    #125;
        a = 16'd16;  b = 16'd36;  cin = 0;    #125;
        a = 16'd256;   b = 16'd5;   cin = 0;    #125;
        a = 16'd200;    b = 16'd95;     cin = 0;    #125;
        a = 16'd45;     b = 16'd135;    cin = 0;    #125;
        a = 16'd36;    b = 16'd255;    cin = 0;    #125;
        a = 16'd25;     b = 16'd65;    cin = 0;    #125;
    end
endmodule