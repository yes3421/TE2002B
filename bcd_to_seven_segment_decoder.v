module bcd_to_seven_segment_decoder (
        input wire [3:0] bcd,
        output reg [6:0] seven_segment
);

always @ (bcd)
begin
        case (bcd)
        4'd0: seven_segment = 7'b1000000;
        4'd1: seven_segment = 7'b1111001;
        4'd2: seven_segment = 7'b0100100;
        4'd3: seven_segment = 7'b0110000;
        4'd4: seven_segment = 7'b0011001;
        4'd5: seven_segment = 7'b0010010;
        4'd6: seven_segment = 7'b0000010;
        4'd7: seven_segment = 7'b1111000;
        4'd8: seven_segment = 7'b0000000;
        4'd9: seven_segment = 7'b0010000;
        default: seven_segment = 7'b1111111;
        endcase
end

endmodule
