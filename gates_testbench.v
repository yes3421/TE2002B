/*
 * Gates
 * 
 * Paul Enrique Alonso Ramírez A01634608
 * Diseño con lógica programable
 * Grupo 101
 * Tecnológico de Monterrey, Campus Guadalajara
 * Viernes 24 de febrero de 2023
 */

`timescale 1 ns / 1 ps

module gates_testbench ();
    reg [1:0] a;
    wire [7:0] x;

    gates DUT (.a(a), .x(x));

    initial
    begin
        a = 2'b00;
        #20 a = 2'b01;
        #20 a = 2'b10;
        #20 a = 2'b11;
        $stop;
    end
endmodule
