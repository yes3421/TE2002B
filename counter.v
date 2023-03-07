module counter
#(
        parameter MAX_COUNT = 4'd9
) (
        input wire clk,
        input wire rst,
        output reg [3:0] count
);

always @(posedge clk or negedge rst)
begin
        if (!rst)
        begin
                count <= 4'd0;
        end
        else if (count == MAX_COUNT)
        begin
                count <= 4'd0;
        end
        else
        begin
                count <= count + 4'd1;
        end
end

endmodule
