module incrementer_16b (
    input  logic [15:0] inp,
    output logic [15:0] out,
    output logic carry
);
    assign {carry, out} = inp + 16'd1;
endmodule
