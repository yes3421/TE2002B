`timescale 1 ns / 1 ps

module clock_divider_testbench ();

reg clk;
reg rst;
wire clk_div;

clock_divider DUT (
        .clk(clk),
        .rst(rst),
        .clk_div(clk_div)
);

always
        #10 clk <= ~clk;

initial
begin
        clk = 1'b0;
        rst = 1'b1;
        #20 rst = 1'b0;
        #20 rst = 1'b1;
        #800 $stop;
end

endmodule
