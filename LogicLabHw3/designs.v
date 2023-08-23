//////  BLG242E LOGIC CIRCUITS LABORATORY   //////
////////////////    SPRING 2023   ////////////////
////////////   150200054 - ASLI YEL   ////////////
/////   150190028 - SEVIM EFTAL AKSEHIRLI   //////


//////////// 3 TO 8 DECODER ////////////

module decoder_3to8 (in, out);
    input   wire[2:0]    in;
    output  wire[7:0]    out;
    
    assign  out[0] = ~in[2] & ~in[1] & ~in[0],
            out[1] = ~in[2] & ~in[1] & in[0],
            out[2] = ~in[2] & in[1] & ~in[0],
            out[3] = ~in[2] & in[1] & in[0],
            out[4] = in[2] & ~in[1] & ~in[0],
            out[5] = in[2] & ~in[1] & in[0],
            out[6] = in[2] & in[1] & ~in[0],
            out[7] = in[2] & in[1] & in[0];
endmodule


//////////// 2 TO 4 DECODER ////////////

module decoder_2to4 (in, out);
    input   wire[1:0]    in;
    output  wire[3:0]    out;
    
    assign  out[0] = ~in[1] & ~in[0],
            out[1] = ~in[1] & in[0],
            out[2] = in[1] & ~in[0],
            out[3] = in[1] & in[0];
endmodule


//////////// THREE STATE BUFFER (8 BITS) ////////////

module three_state_buffer (in, en, out);
    input   wire[7:0]   in;
    input   wire        en;
    output  wire[7:0]   out;
    
    assign out = en ? in : 8'bZ;
endmodule


//////////// PART1 ////////////

module part1 (data_in1, data_in2, select, data_out);
    input   wire[7:0]   data_in1, data_in2;
    input   wire        select;
    output  wire[7:0]   data_out;
            
    three_state_buffer  BUFF0 (.in(data_in1), .en(~select), .out(data_out));
    three_state_buffer  BUFF1 (.in(data_in2), .en(select), .out(data_out));
endmodule


//////////// PART2 ////////////

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


//////////// PART3 ////////////

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



//////////// PART4 ////////////

module part4 (data_in, address, chip_select, reset, read_en, write_en, clock, data_out);
    input   wire[7:0]   data_in;
    input   wire[2:0]   address;
    input   wire        chip_select, reset, read_en, write_en, clock;
    output  wire[7:0]   data_out;
            wire[7:0]   address_num_select, line_select;
    
    decoder_3to8 ADDRESS_DEC (.in(address), .out(address_num_select));
    
    assign  line_select[0] = chip_select && address_num_select[0],
            line_select[1] = chip_select && address_num_select[1],
            line_select[2] = chip_select && address_num_select[2],
            line_select[3] = chip_select && address_num_select[3],
            line_select[4] = chip_select && address_num_select[4],
            line_select[5] = chip_select && address_num_select[5],
            line_select[6] = chip_select && address_num_select[6],
            line_select[7] = chip_select && address_num_select[7];
    
    part3 MEM_LINE0 (.data_in(data_in), .reset(reset), .line_select(line_select[0]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE1 (.data_in(data_in), .reset(reset), .line_select(line_select[1]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE2 (.data_in(data_in), .reset(reset), .line_select(line_select[2]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE3 (.data_in(data_in), .reset(reset), .line_select(line_select[3]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE4 (.data_in(data_in), .reset(reset), .line_select(line_select[4]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE5 (.data_in(data_in), .reset(reset), .line_select(line_select[5]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE6 (.data_in(data_in), .reset(reset), .line_select(line_select[6]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
        
    part3 MEM_LINE7 (.data_in(data_in), .reset(reset), .line_select(line_select[7]),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));    
endmodule


//////////// PART5 ////////////

module part5 (data_in, address, reset, read_en, write_en, clock, data_out);
    input   wire[7:0]   data_in;
    input   wire[4:0]   address;
    input   wire        reset, read_en, write_en, clock;
    output  wire[7:0]   data_out;
            wire[3:0]   chip_select;
            
    decoder_2to4 CHIP_SLCT_DEC (.in(address[4:3]), .out(chip_select));
    
    part4 MEM0_8BYTE (.data_in(data_in), .address(address[2:0]), .chip_select(chip_select[0]), .reset(reset),
            .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
    
    part4 MEM1_8BYTE (.data_in(data_in), .address(address[2:0]), .chip_select(chip_select[1]), .reset(reset),
            .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
    
    part4 MEM2_8BYTE (.data_in(data_in), .address(address[2:0]), .chip_select(chip_select[2]), .reset(reset),
            .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
                            
    part4 MEM3_8BYTE (.data_in(data_in), .address(address[2:0]), .chip_select(chip_select[3]), .reset(reset),
            .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out));
endmodule


//////////// PART6 ////////////

module part6 (data_in, address, reset, read_en, write_en, clock, data_out);
    input   wire[31:0]  data_in;
    input   wire[4:0]   address;
    input   wire        reset, read_en, write_en, clock;
    output  wire[31:0]  data_out;
    
    part5 MEM_highest_8bits (.data_in(data_in[31:24]), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out[31:24]));
        
    part5 MEM_second_8bits (.data_in(data_in[23:16]), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out[23:16]));
            
    part5 MEM_third_8bits (.data_in(data_in[15:8]), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out[15:8]));
                
    part5 MEM_lowest_8bits (.data_in(data_in[7:0]), .address(address), .reset(reset),
        .read_en(read_en), .write_en(write_en), .clock(clock), .data_out(data_out[7:0]));
endmodule