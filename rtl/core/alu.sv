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

logic [15:0] x_proc; // processed x after control gate
logic [15:0] y_proc; // processed y after control gate
logic [15:0] f_out; // perform addition or & operator on output
logic [15:0] res;

always_comb begin
    // process x
    x_proc = zx ? 16'h0000 : inpt0;
    x_proc = nx ? ~x_proc : x_proc;
    // process y
    y_proc = zy ? 16'h0000 : inpt1;
    y_proc = ny ? ~y_proc : y_proc;
    // compute function
    f_out = f ? (y_proc + x_proc) : (x_proc & y_proc);
    // negate the output
    res = no ? ~f_out : f_out;
    // assign output to res
    out = res;
    zr = (res == 16'h0000);
    ng = res[15];
end
endmodule
