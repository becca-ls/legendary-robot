//Bancada de testes:

module tb_div100;
    parameter SEMIPERIOD = 5;
    reg clk;
    wire saida;
    always #SEMIPERIOD clk = ~clk;

    wire clkIn;
    assign clkIn = clk;

    dividido_por100 teste (clkIn,saida);
    
    initial begin
        $dumpfile("ondas.vcd");
        $dumpvars(0,tb_div100);
        clk = 0;
        #3000
        $finish;
    end

endmodule
