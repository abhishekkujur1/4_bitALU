`timescale 1ns/1ps
module tb_alu_4bit;
    reg [3:0] A, B;
    reg [2:0] Opcode;
    wire [3:0] Result;
    wire Carry, Zero;

    alu_4bit uut (A, B, Opcode, Result, Carry, Zero);

    initial begin
        // Initialize waveform dump
        $dumpfile("sim/tb_alu_4bit.vcd");
        $dumpvars(0, tb_alu_4bit);
        
        // Test cases
        A = 4'b0101; B = 4'b0011;  // A=5, B=3
        
        // ADD (5 + 3 = 8)
        Opcode = 3'b000;
        #10 $display("ADD: %d + %d = %d, Carry=%b, Zero=%b", A, B, Result, Carry, Zero);
        
        // SUB (5 - 3 = 2)
        Opcode = 3'b001;
        #10 $display("SUB: %d - %d = %d, Carry=%b, Zero=%b", A, B, Result, Carry, Zero);
        
        // AND (5 & 3 = 1)
        Opcode = 3'b010;
        #10 $display("AND: %b & %b = %b", A, B, Result);
        
        // OR (5 | 3 = 7)
        Opcode = 3'b011;
        #10 $display("OR: %b | %b = %b", A, B, Result);
        
        $finish;
    end
endmodule