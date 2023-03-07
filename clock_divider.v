module clock_divider (
        input wire clk,
        input wire rst,
        output reg clk_div
);

localparam MAX_COUNT = 32'd25_000_000;

reg [31:0] counter;

always @(posedge clk or negedge rst)
begin
        if (!rst)
        begin
                counter <= 32'd0;
        end
        else if (counter == MAX_COUNT - 1)
        begin
                counter <= 32'd0;
        end
        else
        begin
                counter <= counter + 1;
        end
end

always @(posedge clk or negedge rst)
begin
        if (!rst)
        begin
                clk_div <= 32'b0;
        end
        else if (counter == MAX_COUNT - 1)
                clk_div <= ~clk_div;
        else
        begin
                clk_div <= clk_div;
        end
end

endmodule
