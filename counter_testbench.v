`timescale 1 ns / 1 ps

module counter_testbench ();

reg clk;
reg rst;
wire [3:0] count;

counter DUT (
        .clk(clk),
        .rst(rst),
        .count(count)
);

always
        #10 clk <= ~clk;

initial
begin
        clk <= 1'b0;
        rst <= 1'b1;
        #20 rst <= 1'b0;
        #20 rst <= 1'b1;
        #300 $stop;
end

endmodule
