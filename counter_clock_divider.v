module counter_clock_divider (
        input wire clk,
        input wire rst,
        output wire [6:0] display
);

wire clk_div_wire;
wire [3:0] count_wire;

clock_divider CLOCK_DIVIDER (
        .clk(clk),
        .rst(rst),
        .clk_div(clk_div_wire)
);

counter COUNTER (
        .clk(clk_div_wire),
        .rst(rst),
        .count(count_wire)

);

bcd_to_seven_segment_decoder DECODER (
        .bcd(count_wire),
        .seven_segment(display)
);

endmodule
