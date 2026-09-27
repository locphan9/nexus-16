module mux_gate(
    input in0,
    input in1,
    input sel,
    output out
);
  wire and_in0_not;
  wire and_in1_sel;
  assign out = and_in0_not | and_in1_sel;
  assign and_in0_not = in0 & ~sel;
  assign and_in1_sel = in1 & sel;

endmodule
