`timescale 1 ns / 1 ps

module bcd_to_seven_segment_decoder_testbench ();

reg [3:0] bcd;
wire [6:0] seven_segment;

bcd_to_seven_segment_decoder DUT (
        .bcd(bcd),
        .seven_segment(seven_segment)
);

initial
begin
        bcd = 4'd0;
        #20 bcd = 4'd1;
        #20 bcd = 4'd2;
        #20 bcd = 4'd3;
        #20 bcd = 4'd4;
        #20 bcd = 4'd5;
        #20 bcd = 4'd6;
        #20 bcd = 4'd7;
        #20 bcd = 4'd8;
        #20 bcd = 4'd9;
        #20 bcd = 4'd10;
        #20 $stop;
end

endmodule
