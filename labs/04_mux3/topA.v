module top (
    input x1, x2, x3, s0, s1,
    output xfe, xff);
    mux3e dute(x1, x2, x3, s0, s1, xfe);
    mux3f dutf(x1, x2, x3, s0, s1, xff);
endmodule 

// Estrutural
module mux3e (
    input x1, x2, x3, s0, s1,
    output f);
    // Instancie e conecte os componentes abaixo  
    mux2 mod1 ( in_out , s0 , x1 , x2 );
    mux2 mod2 ( f , s1 , in_out , x3 );

endmodule

// Funcional
module mux3f (
    input x1, x2, x3, s0, s1,
    output f);
    // Digite o seu código abaixo  
    assign f = s1 ? x3 : s0 ? x2 : x1;

endmodule

module mux2(
    output f,
    input s, x1, x2);
    assign f = s ? x2 : x1;
endmodule
