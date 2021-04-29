module tb_codificar_prioritario;
    reg enn;
    reg [9:0]teclado;
    wire [3:0]saidaBCD;
    wire dadoValido;
    wire [9:0]tecladoNumerico;
    wire enableN;
    assign tecladoNumerico = teclado;
    assign enableN = enn;
    codificadorPrioritario teste(saidaBCD, dadoValido, enableN, tecladoNumerico);
    
    initial begin
        $dumpfile("ondas.vcd");
        $dumpvars(0,tb_codificar_prioritario);
        enn = 0;
        teclado = 10'b0000000000;
        #4
        teclado = 10'b0000000001;
        #4
        teclado = 10'b0000000010;
        #4
        teclado = 10'b0000000100;
        #4
        teclado = 10'b0000001000;
        #4
        teclado = 10'b0000010000;
        #4
        teclado = 10'b0000100000;
        #4
        teclado = 10'b0001000000;
        #4
        teclado = 10'b0010000000;
        #4
        teclado = 10'b0100000000;
        #4
        teclado = 10'b1000000000;
        #4
        

        teclado = 10'b0000000000; // dadoValido = 1
        #4
        teclado = 10'b1000000001; // dadoValido = 0, saida = 9
        #4
        teclado = 10'b0000000011; // dadoValido = 0, saida = 1
        #4
        teclado = 10'b0000100100; // dadoValido = 0, saida = 5
        #4
        teclado = 10'b0000001001; // dadoValido = 0, saida = 3
        #4
        
        enn = 1;
        teclado = 10'b0000010000; 
        #4
        teclado = 10'b0000100000;
        #4
        teclado = 10'b0001000000;
        #4
        teclado = 10'b0010000000;
        #4
        teclado = 10'b0100000000;
        #4
        teclado = 10'b1000000000;
        #4
        $finish;
    end


endmodule
