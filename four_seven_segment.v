module four_seven_segment (
        input wire [9:0] bcd,
        output wire [6:0] u_segment,
        output wire [6:0] d_segment,
        output wire [6:0] h_segment,
        output wire [6:0] t_segment
);

wire [3:0] u_from_bcd = bcd % 14'd10;
wire [3:0] d_from_bcd = (bcd % 14'd100) / 14'd10;
wire [3:0] h_from_bcd = (bcd % 14'd1000) / 14'd100;
wire [3:0] t_from_bcd = (bcd % 14'd10000) / 14'd1000;

bcd_to_seven_segment_decoder UNIT (
        .bcd(u_from_bcd),
        .seven_segment(u_segment)
);

bcd_to_seven_segment_decoder TEN (
        .bcd(d_from_bcd),
        .seven_segment(d_segment)
);

bcd_to_seven_segment_decoder HUNDRED (
        .bcd(h_from_bcd),
        .seven_segment(h_segment)
);

bcd_to_seven_segment_decoder THOUSAND (
        .bcd(t_from_bcd),
        .seven_segment(t_segment)
);

endmodule