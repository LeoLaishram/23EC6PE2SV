//------------------------------------------------------------------------------
//File       : design.sv
//Author     : Leo Laisrham(1BM23EC126)
//Created    : 2026-02-24
//Module     : traffic
//Project    : SystemVerilog and Verification (23EC6PE2SV),
//Faculty    : Prof. Ajaykumar Devarapalli
//Description: Traffic light controller cycling RED → GREEN → YELLOW → RED.
//------------------------------------------------------------------------------

typedef enum logic [1:0] {RED, GREEN, YELLOW} light_t;

module traffic (
    input  logic   clk,
    input  logic   rst,
    output light_t color
);

    always_ff @(posedge clk) begin
        if (rst)
            color <= RED;
        else
            case (color)
                RED:    color <= GREEN;
                GREEN:  color <= YELLOW;
                YELLOW: color <= RED;
            endcase
    end

endmodule
