module ram (
    input  logic        clk,
    input  logic        load,
    input  logic [13:0] addr,
    input  logic [15:0] in,
    output logic [15:0] out
);
    logic [15:0] mem [16384];

    always_ff @(posedge clk) begin
        if (load) begin
            mem[addr] <= in;
        end
    end

    assign out = mem[addr];

endmodule
