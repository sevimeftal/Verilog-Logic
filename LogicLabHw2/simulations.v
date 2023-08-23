\\\\\\\ SR LATCH WITHOUT ENABLE INPUT \\\\\\\

module test_sr_latch_wo_en();
    reg     S, R;
    wire    Q, Q_n;
    
    sr_latch_wo_en uut (.S(S), .R(R), .Q(Q), .Q_n(Q_n));
    
    initial begin
        S = 0; R = 0; #100;
        S = 0; R = 1; #100; 
        S = 1; R = 0; #100; 
        S = 1; R = 1; #100;
        S = 0; R = 0; #100; 
        S = 1; R = 1; #100;
        S = 1; R = 0; #100; 
        S = 0; R = 0; #100;
        S = 0; R = 1; #100;
        S = 0; R = 0; #100;
        $finish;
    end
endmodule


\\\\\\\ SR LATCH WITH ENABLE INPUT \\\\\\\

module test_sr_latch_w_en();
    reg     S, R, E;
    wire    Q, Q_n;

    sr_latch_w_en uut (.S(S), .R(R), .E(E), .Q(Q), .Q_n(Q_n));

    initial begin
        S = 0; R = 0; E = 0; #50;
        S = 1; R = 0; E = 0; #50;        
        S = 0; R = 0; E = 1; #50;
        S = 0; R = 1; E = 1; #50; 
        S = 1; R = 0; E = 1; #50; 
        S = 1; R = 1; E = 1; #50;
        S = 0; R = 0; E = 1; #50; 
        S = 1; R = 1; E = 1; #50;
        S = 1; R = 0; E = 1; #50; 
        S = 0; R = 0; E = 1; #50;
        S = 0; R = 1; E = 1; #50;
        S = 0; R = 0; E = 1; #50;       
        S = 0; R = 1; E = 0; #50;
        S = 1; R = 1; E = 0; #50;
        S = 0; R = 0; E = 0; #50; 
        S = 0; R = 0; E = 1; #50;
        S = 1; R = 0; E = 1; #50;
        S = 0; R = 0; E = 1; #50;
        S = 0; R = 1; E = 1; #50;
        S = 1; R = 1; E = 1; #50;       
        $finish;
    end
endmodule


\\\\\\\ D LATCH WITH ENABLE \\\\\\\

module test_d_latch_w_en();
    reg     D, E;
    wire    Q, Q_n;
    
    d_latch_w_en uut (.D(D), .E(E), .Q(Q), .Q_n(Q_n));
    
    initial begin
        D = 0; E = 0; #100;
        D = 1; E = 0; #100; 
        D = 0; E = 1; #100; 
        D = 1; E = 1; #100;
        D = 0; E = 1; #100; 
        D = 1; E = 1; #100;
        D = 0; E = 0; #100; 
        D = 1; E = 0; #100;
        D = 0; E = 1; #100;
        D = 1; E = 1; #100;
        $finish;
    end
endmodule


\\\\\\\ NEGATIVE EDGE TRIGGERED D FLIP-FLOP \\\\\\\

module test_negedge_d_ff();
    reg     D, clock;
    wire    Q, Q_n;
    
    negedge_d_ff uut (.D(D), .CLK(clock), .Q(Q), .Q_n(Q_n));
    
    initial begin
        clock = 1; D=1; #50;
        D = 0; #100;
        D = 1; #100; 
        D = 0; #100; 
        D = 1; #100;
        D = 0; #100; 
        D = 1; #100;
        D = 0; #100; 
        D = 1; #100;
        D = 0; #100;
        D = 1; #100;
        $finish;
    end
    
    always begin
        clock = ~clock; #50;
    end
endmodule

\\\\\\\ POSITIVE EDGE TRIGGERED JK FLIP-FLOP \\\\\\\

module test_posedge_jk_ff();
    reg     J, K, clock;
    wire    Q, Q_n;

    posedge_jk_ff uut (.J(J), .K(K), .CLK(clock), .Q(Q), .Q_n(Q_n));  
    
    initial begin
        J = 0; K = 0; clock = 0; #25;
        J = 0; K = 1; #50;        
        J = 0; K = 0; #50; 
        J = 1; K = 0; #50; 
        J = 1; K = 1; #50;
        J = 0; K = 0; #50; 
        J = 1; K = 0; #50; 
        J = 0; K = 0; #50;
        J = 0; K = 1; #50;
        J = 1; K = 1; #50;       
        J = 0; K = 0; #50;
        J = 0; K = 1; #50;
        J = 1; K = 0; #50;
        J = 0; K = 0; #50;
        J = 0; K = 1; #50;
        J = 1; K = 1; #50;       
        $finish;
    end
    
    always begin
        clock = ~clock; #25;
    end
endmodule


\\\\\\\ POSITIVE EDGE TRIGGERED JK FLIP-FLOP WITH CLEAR INPUT \\\\\\\

module test_posedge_jk_ff_w_clr();
    reg     J, K, clock, clear;
    wire    Q, Q_n;

    posedge_jk_ff_w_clr uut (.J(J), .K(K), .CLK(clock), .CLR(clear), .Q(Q), .Q_n(Q_n));    
    
    initial begin
        J = 0; K = 0; clock = 0; clear = 0; #25;
        J = 1; K = 0; clear = 1; #50;        
        J = 0; K = 0; #50; 
        J = 0; K = 1; #50; 
        J = 1; K = 1; #50;
        J = 0; K = 0; #50; 
        J = 1; K = 0; #50; 
        J = 0; K = 0; #50;
        J = 0; K = 1; #50;
        J = 1; K = 1; #50;       
        J = 0; K = 0; #50;
        J = 0; K = 1; #50;
        J = 1; K = 0; #50;
        J = 0; K = 0; #50;
        J = 0; K = 1; #50;
        J = 1; K = 1; #50; 
        J = 1; K = 0; clear = 0; #50;        
        J = 0; K = 0; #50;  
        J = 0; K = 1; #50; 
        J = 1; K = 1; clear = 1; #50;
        J = 0; K = 1; #50;   
        $finish;
    end
    
    always begin
        clock = ~clock; #25;
    end
endmodule


\\\\\\\ ASYNCHRONOUS UP COUNTER \\\\\\\

module test_async_up_counter();
    reg     E, clock, clear;
    wire    [3:0]   Q;
    
    async_up_counter uut (.E(E), .CLK(clock), .CLR(clear), .Q(Q));    
    
    initial begin
        clock = 0; clear = 0; E = 1; #20;
        clear = 1; #20;
    end
    
    always begin
        clock = ~clock; #20;
    end
endmodule


\\\\\\\ SYNCHRONOUS UP COUNTER \\\\\\\

module test_sync_up_counter();
    reg     E, clock, clear;
    wire    [3:0]   Q;
    
    sync_up_counter uut (.E(E), .CLK(clock), .CLR(clear), .Q(Q));    
    
    initial begin
        clock = 0; clear = 0; E = 1; #20;
        clear = 1; #20;
    end
    
    always begin
        clock = ~clock; #20;
    end
endmodule



\\\\\\\ POSITIVE EDGE TRIGGERED PULSE GENERATOR \\\\\\\
\\\\\\\\\\\\\\\\\\\\\ BY USING \\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\ 16 BIT CIRCULAR SHIFT REGISTER WITH LOAD \\\\\\\

\\\\\\\ WITH THE 1/2 FREQUENCY OF CLOCK SIGNAL \\\\\\\

module frequency_1over2();
    reg     [15:0]  I;
    reg     load, clock;
    wire    out;
    
    circ_shift_reg_16bits dut (.load_in(I), .load(load), .clock(clock), .shift_out(out));
    
    initial begin
    I = 16'b1010101010101010; load = 1; clock = 0; #25;
    load = 0; #1000;
    $finish;
    end
    
    always begin
    clock = ~clock; #25;
    end
endmodule

\\\\\\\ WITH THE 1/4 FREQUENCY OF CLOCK SIGNAL \\\\\\\

module frequency_1over4();
    reg     [15:0]  I;
    reg     load, clock;
    wire    out;
    
    circ_shift_reg_16bits dut (.load_in(I), .load(load), .clock(clock), .shift_out(out));
    
    initial begin
    I = 16'b1100110011001100; load = 1; clock = 0; #25;
    load = 0; #1000;
    $finish;
    end
    
    always begin
    clock = ~clock; #25;
    end
endmodule

\\\\\\\ WITH THE 1/8 FREQUENCY OF CLOCK SIGNAL \\\\\\\

module frequency_1over8();
    reg     [15:0]  I;
    reg     load, clock;
    wire    out;
    
    circ_shift_reg_16bits dut (.load_in(I), .load(load), .clock(clock), .shift_out(out));
    
    initial begin
    I = 16'b1111000011110000; load = 1; clock = 0; #25;
    load = 0; #1000;
    $finish;
    end
    
    always begin
    clock = ~clock; #25;
    end
endmodule

\\\\\\\ WITH 1/7 PULSE-GAP DURATION RATE \\\\\\\

module pulsegap_1over7();
    reg     [15:0]  I;
    reg     load, clock;
    wire    out;
    
    circ_shift_reg_16bits dut (.load_in(I), .load(load), .clock(clock), .shift_out(out));
    
    initial begin
    I = 16'b1000000010000000; load = 1; clock = 0; #10;
    load = 0; #1000;
    $finish;
    end
    
    always begin
    clock = ~clock; #10;
    end
endmodule

\\\\\\\ WITH 3/13 PULSE-GAP DURATION RATE \\\\\\\

module pulsegap_3over13();
    reg     [15:0]  I;
    reg     load, clock;
    wire    out;
    
    circ_shift_reg_16bits dut (.load_in(I), .load(load), .clock(clock), .shift_out(out));
    
    initial begin
    I = 16'b1110000000000000; load = 1; clock = 0; #10;
    load = 0; #1000;
    $finish;
    end
    
    always begin
    clock = ~clock; #10;
    end
endmodule

\\\\\\\ WITH 11/5 PULSE-GAP DURATION RATE \\\\\\\

module pulsegap_11over5();
    reg     [15:0]  I;
    reg     load, clock;
    wire    out;
    
    circ_shift_reg_16bits dut (.load_in(I), .load(load), .clock(clock), .shift_out(out));
    
    initial begin
    I = 16'b1111111111100000; load = 1; clock = 0; #10;
    load = 0; #1000;
    $finish;
    end
    
    always begin
    clock = ~clock; #10;
    end
endmodule