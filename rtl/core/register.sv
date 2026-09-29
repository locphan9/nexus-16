module register (
input logic clk,
input logic rst,
input logic [15:0] inp,
output logic [15:0] out
);
always_ff @(posedge clk) begin
    if (!rst) begin
        q <= '0;
    end else begin
        q <= d;
    end
end
endmodule
