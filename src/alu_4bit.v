module alu_4bit (
    input [3:0] A, B,
    input [2:0] Opcode,
    output reg [3:0] Result,
    output reg Carry,
    output Zero
);
    assign Zero = (Result == 4'b0000);

    always @(*) begin
        Carry = 1'b0;
        case (Opcode)
            3'b000: {Carry, Result} = A + B;      // ADD
            3'b001: {Carry, Result} = A - B;      // SUB
            3'b010: Result = A & B;              // AND
            3'b011: Result = A | B;              // OR
            3'b100: Result = A ^ B;              // XOR
            3'b101: Result = ~A;                // NOT
            3'b110: Result = A << 1;            // SHL
            3'b111: Result = A >> 1;            // SHR
            default: Result = 4'b0000;
        endcase
    end
endmodule