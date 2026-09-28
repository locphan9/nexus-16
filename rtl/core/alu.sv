module alu(
    input logic [15:0] inpt0,
    input logic [15:0] inpt1,
    input logic zx, //zero x
    input logic nx, // negate x
    input logic zy,
    input logic ny,
    input logic f, // plus or &
    input logic no, // negate out
    output logic [15:0] out,
    output logic zr, // if out=0, 1, else 0
    output logic ng
);
    
endmodule
