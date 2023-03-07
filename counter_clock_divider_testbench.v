`timescale 1 ns / 1 ps

module counter_clock_divider_testbench ();

reg clk;
reg rst;
wire [6:0] display;

counter_clock_divider DUT (
        .clk(clk),
        .rst(rst),
        .display(display)
);

always
        #10 clk <= ~clk;

initial
begin
        clk <= 1'b0;
        rst <= 1'b1;
        #20 rst <= 1'b0;
        #20 rst <= 1'b1;
        #1500 $stop;
end

endmodule
