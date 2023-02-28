/*
 * Multiplexer
 * 
 * Paul Enrique Alonso Ramírez A01634608
 * Diseño con lógica programable
 * Grupo 101
 * Tecnológico de Monterrey, Campus Guadalajara
 * Viernes 24 de febrero de 2023
 */

`timescale 1 ns / 1 ps

module multiplexer_testbench ();
    reg s;
    reg [1:0] a;
    wire x;

    multiplexer DUT (.s(s), .a(a), .x(x));

    initial
    begin
        s = 1'b0;
        a = 2'b00;
        #20 a = 2'b01;
        #20 a = 2'b10;
        #20 a = 2'b11;
        #20 s = 1'b1;
        #20 a = 2'b00;
        #20 a = 2'b01;
        #20 a = 2'b10;
        #20 a = 2'b11;
    end
endmodule
