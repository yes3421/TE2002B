/*
 * Prime numbers
 * 
 * Paul Enrique Alonso Ramírez A01634608
 * Diseño con lógica programable
 * Grupo 101
 * Tecnológico de Monterrey, Campus Guadalajara
 * Viernes 24 de febrero de 2023
 */
 
module prime_numbers (
    input wire [3:0] a,
    output reg x
);

    always @(a)
    begin
        case (a)
            2: x = 1'b1;
            3: x = 1'b1;
            5: x = 1'b1;
            7: x = 1'b1;
            11: x = 1'b1;
            13: x = 1'b1;
            default: x = 1'b0;
        endcase
    end
endmodule
