/*
 * Multiplexer
 * 
 * Paul Enrique Alonso Ramírez A01634608
 * Diseño con lógica programable
 * Grupo 101
 * Tecnológico de Monterrey, Campus Guadalajara
 * Viernes 24 de febrero de 2023
 */

module multiplexer (
    input wire s,
    input wire [1:0] a,
    output reg x
);

    always @(a, s)
    begin
        x = s ? a[0] : a[1];
    end
endmodule
