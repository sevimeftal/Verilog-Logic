//////  BLG242E LOGIC CIRCUITS LABORATORY   //////
////////////////    SPRING 2023   ////////////////
////////////   150200054 - ASLI YEL   ////////////
/////   150190028 - SEVIM EFTAL AKSEHIRLI   //////


//////////// 3 TO 8 DECODER ////////////

module test_decoder_3to8();
    reg[2:0]    IN;
    wire[7:0]   OUT;
    
    decoder_3to8 uut (.in(IN), .out(OUT));
    
    initial begin
        IN = 3'b000;    #125;
        IN = 3'b001;    #125;
        IN = 3'b010;    #125;
        IN = 3'b011;    #125;
        IN = 3'b100;    #125;
        IN = 3'b101;    #125;
        IN = 3'b110;    #125;
        IN = 3'b111;    #125;
    end
endmodule


//////////// 2 TO 4 DECODER ////////////

module test_decoder_2to4();
    reg[1:0]    IN;
    wire[3:0]   OUT;

    decoder_2to4 uut (.in(IN), .out(OUT));
    
    initial begin
        IN = 2'b00;    #250;
        IN = 2'b01;    #250;
        IN = 2'b10;    #250;
        IN = 2'b11;    #250;
    end
endmodule


//////////// THREE STATE BUFFER (8 BITS) ////////////

module test_three_state_buffer();
    reg[7:0]    IN;
    reg         enable;
    wire[7:0]   OUT;
    
    three_state_buffer uut (.in(IN), .en(enable), .out(OUT));
    
    initial begin
        enable = 1;
        IN = 8'hF3; #50;
        IN = 8'h08; #50;
        IN = 8'h56; #50;
        IN = 8'hE1; #50;
        IN = 8'h2C; #50;
        IN = 8'hB4; #50;
        enable = 0;
        IN = 8'h00; #50;
        IN = 8'hC4; #50;
        IN = 8'h93; #50;
        IN = 8'h70; #50;
        enable = 1;
        IN = 8'hFF; #50;
        IN = 8'h42; #50;
        enable = 0;
        IN = 8'h81; #50;
        enable = 1;
        IN = 8'h3D; #50;
        enable = 0;
        IN = 8'hBB; #50;
        enable = 1;
        IN = 8'h00; #50;
        enable = 0;
        IN = 8'hDA; #50;
        IN = 8'h73; #50;
        enable = 1;
        IN = 8'hAC; #50;
        IN = 8'h64; #50;
    end
endmodule


//////////// PART1 ////////////

module test_part1();
    reg[7:0]    IN1, IN2;
    reg         select;
    wire[7:0]   OUT;
    
    part1 uut (.data_in1(IN1), .data_in2(IN2), .select(select), .data_out(OUT));
    
    initial begin
        IN1 = 8'hAB;  IN2 = 8'hE2;  select = 1'b0;  #100;
        IN1 = 8'h08;  IN2 = 8'hBB;  select = 1'b1;  #100;
        IN1 = 8'hF2;  IN2 = 8'h90;  select = 1'b0;  #100;
        IN1 = 8'hCC;  IN2 = 8'h54;  select = 1'b1;  #100;
        IN1 = 8'h67;  IN2 = 8'hC3;  select = 1'b0;  #100;
        IN1 = 8'h49;  IN2 = 8'h4E;  select = 1'b1;  #100;
        IN1 = 8'hB1;  IN2 = 8'hFF;  select = 1'b0;  #100;
        IN1 = 8'h00;  IN2 = 8'hA9;  select = 1'b1;  #100;
        IN1 = 8'hFF;  IN2 = 8'h3B;  select = 1'b0;  #100;
        IN1 = 8'h3D;  IN2 = 8'h00;  select = 1'b1;  #100;
    end
endmodule


//////////// PART2 ////////////

module test_part2();
    reg[7:0]    IN1, IN2;
    reg         select;
    wire[7:0]   OUT1, OUT2;
    
    part2 uut (.data_in1(IN1), .data_in2(IN2), .select(select), .data_out1(OUT1), .data_out2(OUT2));
    
    initial begin
        IN1 = 8'hAB;  IN2 = 8'hE2;  select = 1'b0;  #100;
        IN1 = 8'h08;  IN2 = 8'hBB;  select = 1'b1;  #100;
        IN1 = 8'hF2;  IN2 = 8'h90;  select = 1'b0;  #100;
        IN1 = 8'hCC;  IN2 = 8'h54;  select = 1'b1;  #100;
        IN1 = 8'h67;  IN2 = 8'hC3;  select = 1'b0;  #100;
        IN1 = 8'h49;  IN2 = 8'h4E;  select = 1'b1;  #100;
        IN1 = 8'hB1;  IN2 = 8'hFF;  select = 1'b0;  #100;
        IN1 = 8'h00;  IN2 = 8'hA9;  select = 1'b1;  #100;
        IN1 = 8'hFF;  IN2 = 8'h3B;  select = 1'b0;  #100;
        IN1 = 8'h3D;  IN2 = 8'h00;  select = 1'b1;  #100;
    end
endmodule


//////////// PART3 ////////////

module test_part3();
    reg[7:0]    IN;
    reg         reset, line_select, read_en, write_en, clock;
    wire[7:0]   OUT;
    
    part3 uut (.data_in(IN), .reset(reset), .line_select(line_select),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(OUT));
        
    initial begin
        clock = 1; reset = 1;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'hAA; #50;
        line_select = 1'b1;  read_en = 1'b0; write_en = 1'b1;   IN = 8'hB3; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'h1E; #50;
        line_select = 1'b1;  read_en = 1'b0; write_en = 1'b1;   IN = 8'h82; #50;
        line_select = 1'b0;  read_en = 1'b1; write_en = 1'b0;   IN = 8'hC4; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b1;   IN = 8'hF3; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'h68; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b1;   IN = 8'h44; #50;
        reset = 0;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'h2C; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b1;   IN = 8'hDD; #50;
        reset = 1;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'hCC; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b1;   IN = 8'h95; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'hD6; #50;
        line_select = 1'b1;  read_en = 1'b0; write_en = 1'b1;   IN = 8'h09; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'hFF; #50;
        line_select = 1'b1;  read_en = 1'b0; write_en = 1'b1;   IN = 8'h7C; #50;
        reset = 0;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'h3F; #50;
        reset = 1;
        line_select = 1'b1;  read_en = 1'b0; write_en = 1'b1;   IN = 8'hC0; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b0;   IN = 8'h37; #50;
        line_select = 1'b1;  read_en = 1'b1; write_en = 1'b1;   IN = 8'h5D; #50;
    end
    
    always begin
        clock = ~clock; #25;
    end
endmodule


//////////// PART4 ////////////

module test_part4();
    reg[7:0]    IN;
    reg[2:0]    address;
    reg         chip_select, reset, read_en, write_en, clock;
    wire[7:0]   OUT;
    
    part4 uut (.data_in(IN), .address(address), .chip_select(chip_select), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(OUT));
        
    initial begin
        clock = 1; reset = 1;
        chip_select = 1'b1;  address = 3'b000;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hAA; #50;
        chip_select = 1'b1;  address = 3'b001;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hB3; #50;
        chip_select = 1'b1;  address = 3'b010;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h1E; #50;
        chip_select = 1'b1;  address = 3'b011;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h82; #50;
        chip_select = 1'b1;  address = 3'b100;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hC4; #50;
        chip_select = 1'b1;  address = 3'b101;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hF3; #50;
        chip_select = 1'b1;  address = 3'b110;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h68; #50;
        chip_select = 1'b1;  address = 3'b111;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h44; #50;
        chip_select = 1'b1;  address = 3'b000;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h2C; #50;
        chip_select = 1'b1;  address = 3'b001;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hDD; #50;
        chip_select = 1'b1;  address = 3'b010;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hCC; #50;
        chip_select = 1'b1;  address = 3'b011;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h95; #50;
        chip_select = 1'b1;  address = 3'b100;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hD6; #50;
        chip_select = 1'b1;  address = 3'b101;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h09; #50;
        chip_select = 1'b1;  address = 3'b110;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hFF; #50;
        chip_select = 1'b1;  address = 3'b111;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h7C; #50;
        reset = 0;
        chip_select = 1'b1;  address = 3'b000;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h3F; #50;
        chip_select = 1'b1;  address = 3'b001;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hC0; #50;
        chip_select = 1'b1;  address = 3'b010;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h37; #50;
        chip_select = 1'b1;  address = 3'b011;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h5D; #50;
    end
    
    always begin
        clock = ~clock; #25;
    end
endmodule



//////////// PART5 ////////////

module test_part5();
    reg[7:0]    IN;
    reg[4:0]    address;
    reg         reset, read_en, write_en, clock;
    wire[7:0]   OUT;
    
    part5 uut (.data_in(IN), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(OUT));
        
    initial begin
            clock = 1; reset = 1;
            address = 5'b00000;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hAA; #50;
            address = 5'b00001;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hB3; #50;
            address = 5'b01010;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h1E; #50;
            address = 5'b01011;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h82; #50;
            address = 5'b10100;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hC4; #50;
            address = 5'b10101;   read_en = 1'b0; write_en = 1'b1;   IN = 8'hF3; #50;
            address = 5'b11110;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h68; #50;
            address = 5'b11111;   read_en = 1'b0; write_en = 1'b1;   IN = 8'h44; #50;
            address = 5'b00000;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h2C; #50;
            address = 5'b00001;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hDD; #50;
            address = 5'b01010;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hCC; #50;
            address = 5'b01011;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h95; #50;
            address = 5'b10100;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hD6; #50;
            address = 5'b10101;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h09; #50;
            address = 5'b11110;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hFF; #50;
            address = 5'b11111;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h7C; #50;
            reset = 0;
            address = 5'b00001;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h3F; #50;
            address = 5'b01011;   read_en = 1'b1; write_en = 1'b0;   IN = 8'hC0; #50;
            address = 5'b10101;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h37; #50;
            address = 5'b11111;   read_en = 1'b1; write_en = 1'b0;   IN = 8'h5D; #50;
        end
        
        always begin
            clock = ~clock; #25;
        end
endmodule


//////////// PART6 ////////////

module test_part6();
    reg[31:0]   IN;
    reg[4:0]    address;
    reg         reset, read_en, write_en, clock;
    wire[31:0]  OUT;

    part6 uut (.data_in(IN), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(OUT));
    
    initial begin
        clock = 1; reset = 1;
        address = 5'b10111;   read_en = 1'b0; write_en = 1'b1;   IN = 32'hAAC3B504; #100;
        address = 5'b01101;   read_en = 1'b0; write_en = 1'b1;   IN = 32'hB3045DF5; #100;
        address = 5'b01001;   read_en = 1'b0; write_en = 1'b1;   IN = 32'h1EC65FC2; #100;
        address = 5'b11111;   read_en = 1'b0; write_en = 1'b1;   IN = 32'h8230DAA3; #100;
        address = 5'b10111;   read_en = 1'b1; write_en = 1'b0;   IN = 32'hC4CB10F3; #100;
        address = 5'b01101;   read_en = 1'b1; write_en = 1'b0;   IN = 32'hF3AA5BCD; #100;
        address = 5'b01001;   read_en = 1'b1; write_en = 1'b0;   IN = 32'h687FDE31; #100;
        address = 5'b11111;   read_en = 1'b1; write_en = 1'b0;   IN = 32'h44EC10FD; #100;
        reset = 0;
        address = 5'b10111;   read_en = 1'b1; write_en = 1'b0;   IN = 32'h2C056BA2; #100;
        address = 5'b01101;   read_en = 1'b1; write_en = 1'b0;   IN = 32'hDDF0895D; #100;
    end
    
    always begin
        clock = ~clock; #50;
    end
endmodule