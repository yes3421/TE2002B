`timescale 1 ns / 1 ps

module four_seven_segment_testbench();

reg [9:0] bcd;
wire [6:0] u_segment;
wire [6:0] d_segment;
wire [6:0] h_segment;
wire [6:0] t_segment;

four_seven_segment DUT (
        .bcd(bcd),
        .u_segment(u_segment),
        .d_segment(d_segment),
        .h_segment(h_segment),
        .t_segment(t_segment)
);

initial
begin
        bcd = 10'd9;
        #20 bcd = 10'd99;
        #20 bcd = 10'd999;
        #20 bcd = 10'd1023;
        #20 $stop;
end

endmodule
