module mux_16_gate (
    input  logic [15:0] in0,
    input  logic [15:0] in1,
    input  logic        sel,
    output logic [15:0] out
);

  logic [15:0] and_in0_not;
  logic [15:0] and_in1_sel;

  assign and_in0_not = in0 & {16{~sel}};
  assign and_in1_sel = in1 & {16{sel}};
  assign out = and_in0_not | and_in1_sel;

endmodule
