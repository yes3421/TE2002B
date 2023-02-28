/*
 * Prime numbers
 * 
 * Paul Enrique Alonso Ramírez A01634608
 * Diseño con lógica programable
 * Grupo 101
 * Tecnológico de Monterrey, Campus Guadalajara
 * Viernes 24 de febrero de 2023
 */

`timescale 1 ns / 1 ps

module prime_numbers_testbench ();
    reg [3:0] a;
    wire x;

    prime_numbers DUT (.a(a), .x(x));

    initial
    begin
        a = 0;
        #20 a = 1;
        #20 a = 2;
        #20 a = 3;
        #20 a = 4;
        #20 a = 5;
        #20 a = 6;
        #20 a = 7;
        #20 a = 8;
        #20 a = 9;
        #20 a = 10;
        #20 a = 11;
        #20 a = 12;
        #20 a = 13;
        #20 a = 14;
        #20 a = 15;
    end
endmodule
