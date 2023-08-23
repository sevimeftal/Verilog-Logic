`timescale 1ns / 1ps

\\\\\\\ NAND GATE \\\\\\\

module nand_gate (i0, i1, o);
    input   wire    i0, i1;    
    output  wire    o;
    
    assign o = ~(i0 & i1);
endmodule


\\\\\\\ SR LATCH WITHOUT ENABLE INPUT \\\\\\\

module sr_latch_wo_en (S, R, Q, Q_n);
    input   wire    S, R;
    output  wire    Q, Q_n;
            wire    S_n, R_n;
    
    nand_gate NAND0 (.i0(S), .i1(S), .o(S_n));
    nand_gate NAND1 (.i0(R), .i1(R), .o(R_n));
    nand_gate NAND2 (.i0(S_n), .i1(Q_n), .o(Q));
    nand_gate NAND3 (.i0(Q), .i1(R_n), .o(Q_n));
endmodule

\\\\\\\ SR LATCH WITH ENABLE INPUT \\\\\\\

module sr_latch_w_en (S, R, E, Q, Q_n);
    input   wire    S, R, E;
    output  wire    Q, Q_n;
            wire    S_i, R_i;
    
    nand_gate NAND0 (.i0(S), .i1(E), .o(S_i));
    nand_gate NAND1 (.i0(E), .i1(R), .o(R_i));
    nand_gate NAND2 (.i0(S_i), .i1(Q_n), .o(Q));
    nand_gate NAND3 (.i0(Q), .i1(R_i), .o(Q_n));
endmodule


\\\\\\\ D LATCH WITH ENABLE \\\\\\\

module d_latch_w_en (D, E, Q, Q_n);
    input   wire    D, E;
    output  wire    Q, Q_n;
            wire    D_n, S_i, R_i;
    
    nand_gate NAND0 (.i0(D), .i1(D), .o(D_n));
    nand_gate NAND1 (.i0(D), .i1(E), .o(S_i));
    nand_gate NAND2 (.i0(E), .i1(D_n), .o(R_i));
    nand_gate NAND3 (.i0(S_i), .i1(Q_n), .o(Q));
    nand_gate NAND4 (.i0(Q), .i1(R_i), .o(Q_n));
endmodule


\\\\\\\ NEGATIVE EDGE TRIGGERED D FLIP-FLOP \\\\\\\

module negedge_d_ff (D, CLK, Q, Q_n);
    input   wire    D, CLK;
    output  wire    Q, Q_n;
            wire    Qm, Qm_n, not_CLK;
    
    nand_gate NAND (.i0(CLK), .i1(CLK), .o(not_CLK));
    d_latch_w_en D_Latch_Master (.D(D), .E(CLK), .Q(Qm), .Q_n(Qm_n));
    d_latch_w_en D_Latch_Slave (.D(Qm), .E(not_CLK), .Q(Q), .Q_n(Q_n));
endmodule


\\\\\\\ POSITIVE EDGE TRIGGERED JK FLIP-FLOP \\\\\\\

module posedge_jk_ff (J, K, CLK, Q, Q_n);
    input   wire    CLK, J, K;
    output  wire    Q, Q_n;
            wire    not_CLK, not_K, J_nand_Q_n, Q_nand_not_K, S1, R1, S2, R2;         
              
    nand_gate NAND0 (.i0(K), .i1(K), .o(not_K));
    nand_gate NAND1 (.i0(Q_n), .i1(J), .o(J_nand_Q_n));
    nand_gate NAND2 (.i0(Q), .i1(not_K), .o(Q_nand_not_K));
    nand_gate NAND3 (.i0(J_nand_Q_n), .i1(Q_nand_not_K), .o(S1));
    nand_gate NAND4 (.i0(S1), .i1(S1), .o(R1));
    nand_gate NAND5 (.i0(CLK), .i1(CLK), .o(not_CLK));
     
    sr_latch_w_en SRFF1 (.S(S1), .R(R1), .E(not_CLK), .Q(S2), .Q_n(R2));
    sr_latch_w_en SRFF2 (.S(S2), .R(R2), .E(CLK), .Q(Q), .Q_n(Q_n));  
endmodule


\\\\\\\ POSITIVE EDGE TRIGGERED JK FLIP-FLOP WITH CLEAR INPUT \\\\\\\

module posedge_jk_ff_w_clr(J, K, CLK, CLR, Q, Q_n);
    input   wire    J, K, CLK, CLR;
    output  wire    Q, Q_n;
            wire    not_CLK, not_K, J_nand_Q_n, Q_nand_not_K, S, S_nand_CLR, S_and_CLR, S1, R1, S2, R2;         
              
    nand_gate NAND0 (.i0(K), .i1(K), .o(not_K));
    nand_gate NAND1 (.i0(Q_n), .i1(J), .o(J_nand_Q_n));
    nand_gate NAND2 (.i0(Q), .i1(not_K), .o(Q_nand_not_K));
    nand_gate NAND3 (.i0(J_nand_Q_n), .i1(Q_nand_not_K), .o(S));
    nand_gate NAND4 (.i0(S), .i1(CLR), .o(S_nand_CLR));
    nand_gate NAND5 (.i0(S_nand_CLR), .i1(S_nand_CLR), .o(S1));
    nand_gate NAND6 (.i0(S1), .i1(S1), .o(R1));
     
    sr_latch_w_en SRFF1 (.S(S1), .R(R1), .E(~CLK | ~CLR ), .Q(S2), .Q_n(R2));
    sr_latch_w_en SRFF2 (.S(S2), .R(R2), .E(CLK | ~CLR), .Q(Q), .Q_n(Q_n));  
endmodule


\\\\\\\ ASYNCHRONOUS UP COUNTER \\\\\\\

module async_up_counter(E, CLK, CLR, Q);
    input   wire    E, CLK, CLR;
    output  wire    [3:0]   Q; 
            wire    [3:0]   Q_n;   
            wire    clear_feedback, clear_high, clear_low;

    assign  clear_feedback = ~(Q[0] & Q[1] & Q[2] & Q[3]);
    nand_gate NAND0 (.i0(clear_feedback), .i1(CLR), .o(clear_high));
    nand_gate NAND1 (.i0(clear_high), .i1(clear_high), .o(clear_low));
    
    posedge_jk_ff_w_clr JK0 (.J(E), .K(E), .CLK(CLK), .CLR(clear_low), .Q(Q[0]), .Q_n(Q_n[0]));
    posedge_jk_ff_w_clr JK1 (.J(E), .K(E), .CLK(Q_n[0]), .CLR(clear_low), .Q(Q[1]), .Q_n(Q_n[1]));
    posedge_jk_ff_w_clr JK2 (.J(E), .K(E), .CLK(Q_n[1]), .CLR(clear_low), .Q(Q[2]), .Q_n(Q_n[2]));
    posedge_jk_ff_w_clr JK3 (.J(E), .K(E), .CLK(Q_n[2]), .CLR(clear_low), .Q(Q[3]), .Q_n(Q_n[3]));
endmodule


\\\\\\\ SYNCHRONOUS UP COUNTER \\\\\\\

module sync_up_counter(E, CLK, CLR, Q);
    input   wire    E, CLK, CLR;
    output  wire    [3:0]   Q; 
            wire    [3:0]   Q_n;   
            wire    clear_feedback, clear_high, clear_low;
            wire    E1, E2, E3;

    assign  clear_feedback = ~(Q[0] & Q[1] & Q[2] & Q[3]);
    nand_gate NAND0 (.i0(clear_feedback), .i1(CLR), .o(clear_high));
    nand_gate NAND1 (.i0(clear_high), .i1(clear_high), .o(clear_low));
    
    assign  E1 = E & Q[0];
    assign  E2 = E1 & Q[1];
    assign  E3 = E2 & Q[2];
    
    posedge_jk_ff_w_clr JK0 (.J(E), .K(E), .CLK(CLK), .CLR(clear_low), .Q(Q[0]), .Q_n(Q_n[0]));
    posedge_jk_ff_w_clr JK1 (.J(E1), .K(E1), .CLK(CLK), .CLR(clear_low), .Q(Q[1]), .Q_n(Q_n[1]));
    posedge_jk_ff_w_clr JK2 (.J(E2), .K(E2), .CLK(CLK), .CLR(clear_low), .Q(Q[2]), .Q_n(Q_n[2]));
    posedge_jk_ff_w_clr JK3 (.J(E3), .K(E3), .CLK(CLK), .CLR(clear_low), .Q(Q[3]), .Q_n(Q_n[3]));
endmodule


\\\\\\\ POSITIVE EDGE TRIGGERED PULSE GENERATOR \\\\\\\
\\\\\\\\\\\\\\\\\\\\\ BY USING \\\\\\\\\\\\\\\\\\\\\\\\\
\\\\\\\ 16 BIT CIRCULAR SHIFT REGISTER WITH LOAD \\\\\\\

module circ_shift_reg_16bits(load_in, load, clock, shift_out);
    input   wire    [15:0]  load_in;
    input   wire    load, clock;
    output  wire    shift_out;
            wire    shift;
            reg     [15:0]  D;
    
    assign  shift = ~load;
            
    always@(posedge clock) begin
        D[15] <= (load & load_in[15]) | (shift & D[14]);
        D[14] <= (load & load_in[14]) | (shift & D[13]);
        D[13] <= (load & load_in[13]) | (shift & D[12]);
        D[12] <= (load & load_in[12]) | (shift & D[11]);
        D[11] <= (load & load_in[11]) | (shift & D[10]);
        D[10] <= (load & load_in[10]) | (shift & D[9]);
        D[9] <= (load & load_in[9]) | (shift & D[8]);
        D[8] <= (load & load_in[8]) | (shift & D[7]);
        D[7] <= (load & load_in[7]) | (shift & D[6]);
        D[6] <= (load & load_in[6]) | (shift & D[5]);
        D[5] <= (load & load_in[5]) | (shift & D[4]);
        D[4] <= (load & load_in[4]) | (shift & D[3]);
        D[3] <= (load & load_in[3]) | (shift & D[2]);
        D[2] <= (load & load_in[2]) | (shift & D[1]);
        D[1] <= (load & load_in[1]) | (shift & D[0]);
        D[0] <= (load & load_in[0]) | (shift & D[15]);
    end
    
    assign shift_out = D[15];
endmodule