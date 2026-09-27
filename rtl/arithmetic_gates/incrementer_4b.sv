module incrementer_4b (
    input logic [3:0] inp,
    output logic [3:0] out,
    output carry
);
    wire ha0_carry;
    wire ha1_carry;
    wire ha2_carry;
    half_adder ha0 (.in0(inp[0]), .in1(1'b1), .out(out[0]), .carry(ha0_carry));
    half_adder ha1 (.in0(inp[1]), .in1(ha0_carry), .out(out[1]), .carry(ha1_carry));
    half_adder ha2 (.in0(inp[2]), .in1(ha1_carry), .out(out[2]), .carry(ha2_carry));
    half_adder ha3 (.in0(inp[3]), .in1(ha2_carry), .out(out[3]), .carry(carry));
endmodule
