/*
 * Gates
 * 
 * Paul Enrique Alonso Ramírez A01634608
 * Diseño con lógica programable
 * Grupo 101
 * Tecnológico de Monterrey, Campus Guadalajara
 * Viernes 24 de febrero de 2023
 */

module gates (
    input wire [1:0] a,
    output reg [7:0] x
);

    always @(a)
    begin
        x[0] = a[0];
        x[1] = ~a[0];
        x[2] = a[0] & a[1];
        x[3] = a[0] | a[1];
        x[4] = a[0] ^ a[1];
        x[5] = ~(a[0] & a[1]);
        x[6] = ~(a[0] | a[1]);
        x[7] = ~(a[0] ^ a[1]);
    end
endmodule
