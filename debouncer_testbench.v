`timescale 1 ns / 1 ps

module debouncer_testbench ();

parameter BUS_WIDTH = 1;

reg clk = 0;
reg rst;
reg [BUS_WIDTH-1:0] pb;
wire [BUS_WIDTH-1:0] pb_debounced;

reg [6:0] delay;

parameter CLK_HALF_PERIOD = 10; // ns
parameter DELAY_20MS = 20_000_000;

debouncer
#(
        .CLOCK_FREQ(50_000_000),
        .STABLE_TIME(10) // ms
) DUT (
        .clk(clk),
        .rst(rst),
        .pb(pb),
        .pb_debounced(pb_debounced)
);

always
begin
        #(CLK_HALF_PERIOD); clk = ~clk;
end

initial
begin
        rst = 0; pb = 0;
        repeat(5) @(posedge clk);
        rst = 1;

        repeat(2)
        begin
                repeat(100)  @(posedge clk);

                repeat(10)
                begin
                        delay = $urandom;
                        #(10*delay) pb = ~pb;
                end
                pb = 1;
                repeat(1) @(pb_debounced);
                #DELAY_20MS;
        end

        #100
        $stop;
end

endmodule
