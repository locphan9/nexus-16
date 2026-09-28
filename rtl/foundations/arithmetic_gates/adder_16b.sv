module adder_16b (
    input  logic [15:0] inpt0,
    input  logic [15:0] inpt1,
    output logic [15:0] out,
    output logic  carry_out,
    output logic [15:0] dbg_carry_chain  // Telemetry vector: shows which bits generated a carry
);
    logic [16:0] carry;
    assign carry[0] = 1'b0;

    for (genvar i = 0; i < 16; i++) begin : gen_ripple_adder
        full_adder fa (
            .in0  (inpt0[i]),
            .in1  (inpt1[i]),
            .cin  (carry[i]),
            .sum  (out[i]),
            .cout (carry[i+1])
        );
        assign dbg_carry_chain[i] = carry[i+1];
    end

    assign carry_out = carry[16];
endmodule
