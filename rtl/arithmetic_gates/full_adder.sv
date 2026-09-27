module full_adder (
    input logic in0,
    input logic in1,
    input logic in2,
    output logic out,
    output logic carry
);
    wire sum1;
    wire carry1;
    wire carry2;
    half_adder ha1 (.in0(in0), .in1(in1), .out(sum1), .carry(carry1));
    half_adder ha2 (.in0(sum1), .in1(in2), .out(out), .carry(carry2));
    or_gate or1 (.in0(carry1), .in1(carry2), .out(carry));
endmodule
