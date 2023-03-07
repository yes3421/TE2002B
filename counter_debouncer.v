module counter_debouncer (
        input wire clk,
        input wire rst,
        input wire pb,
        output wire [6:0] display
);

wire pb_debounced_wire;
wire [3:0] count_wire;

debouncer DEBOUNCER (
        .clk(clk),
        .rst(rst),
        .pb(pb),
        .pb_debounced(pb_debounced_wire)
);

counter COUNTER (
        .clk(pb_debounced_wire),
        .rst(rst),
        .count(count_wire)
);

bcd_to_seven_segment_decoder DECODER (
        .bcd(count_wire),
        .seven_segment(display)
);

endmodule
