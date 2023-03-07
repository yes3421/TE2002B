module FSM_sequence (
        input wire clk,
        input wire rst,
        output wire [3:0] LEDR
);

reg [3:0] current_state;
reg [3:0] next_state;

parameter S0 = 4'b1111;
parameter S1 = 4'b1010;
parameter S2 = 4'b0101;
parameter S3 = 4'b0000;
parameter S4 = 4'b1110;
parameter S5 = 4'b0111;

always @(posedge clk or negedge rst)
begin
        if (!rst)
        begin
                current_state <= S0;
        end
        else
        begin
                current_state <= next_state;
        end
end

always @(current_state)
begin
        case (current_state)
                S0: next_state = S1;
                S1: next_state = S2;
                S2: next_state = S3;
                S3: next_state = S4;
                S5: next_state = S0;
                default: next_state = S0;
        endcase
end

assign LEDR = next_state;

endmodule
