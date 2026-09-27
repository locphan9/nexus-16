module dmux_gate(
    input inp,
    input sel,
    output out1,
    output out2
);
assign out1 = inp & sel;
assign out2 = inp & ~sel;
endmodule
