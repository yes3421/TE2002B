// https://www.youtube.com/watch?v=9n_YWHAdcLk

module debouncer
#(
        parameter CLOCK_FREQ = 50_000_000,
        parameter STABLE_TIME = 10 // ms
) (
        input wire clk,
        input wire rst,
        input wire pb,
        output wire pb_debounced
);

localparam COUNTER_MAX = (CLOCK_FREQ * STABLE_TIME) / 1000;

reg [1:0] ff_i;
reg ff_o;
reg [31:0] counter;

wire clear_counter;
wire counter_max;

always @(posedge clk or negedge rst)
begin
        if (!rst)
        begin
                ff_i <= 0;
        end
        else
        begin
                ff_i[1:0] <= {ff_i[0], pb};
        end
end

assign clear_counter = ^ff_i;

always @(posedge clk or negedge rst)
begin
        if (!rst)
        begin
                counter <= 0;
        end
        else if (clear_counter || counter_max)
        begin
                counter <= 0;
        end
        else
        begin
                counter <= counter + 1'b1;
        end
end

assign counter_max = (counter == COUNTER_MAX);

always @(posedge clk or negedge rst)
begin
        if (!rst)
        begin
                ff_o <= 0;
        end
        else if (counter_max)
        begin
                ff_o <= ff_i[1];
        end
end

assign pb_debounced = ff_o;

endmodule
