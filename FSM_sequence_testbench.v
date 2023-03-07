`timescale 1 ns / 1 ps

module FSM_sequence_testbench ();

reg clk;
reg rst;
wire [3:0] LEDR;

FSM_sequence_Top DUT (
        .clk(clk),
        .rst(rst),
        .LEDR(LEDR)
);

always
        #10 clk <= ~clk;

initial
begin
        clk <= 1'b0;
        rst <= 1'b1;
        #20 rst <= 1'b0;
        #20 rst <= 1'b1;
        #1000 $stop;
end

endmodule
