module and_16_gate(
    input logic [15:0] in0,
    input logic [15:0] in1,
    output logic [15:0] out
);
    assign out = in0 & in1;
endmodule
