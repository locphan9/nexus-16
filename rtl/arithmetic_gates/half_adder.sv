module half_adder (
    input logic in0,
    input logic in1,
    output logic out,
    output logic carry
);
    xor_gate inst1 (.in0(in0), .in1(in1), .out(out));
    and_gate inst2 (.in0(in0), .in1(in1), .out(carry));
endmodule
