module FSM_sequence_Top (
        input wire clk,
        input wire rst,
        output wire [3:0] LEDR
);

wire clk_div_wire;

clock_divider CLOCK_DIVIDER (
        .clk(clk),
        .rst(rst),
        .clk_div(clk_div_wire)
);

FSM_sequence FSM_SEQUENCE (
        .clk(clk_div_wire),
        .rst(rst),
        .LEDR(LEDR)
);

endmodule
