module not_16_gate(
    input logic [15:0] in,
    output logic [15:0] out
);
    assign out = ~in;
endmodule
