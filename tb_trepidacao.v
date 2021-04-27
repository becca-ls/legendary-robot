module tb_nr;
    parameter SEMIPERIOD = 5;
    reg clk;
    reg clear;
    wire saida;
    wire clr;
    always #SEMIPERIOD clk = ~clk;

    wire clkIn;
    assign clkIn = clk;
    assign clr = clear;
    nao_recilado teste (saida,clkIn,clr);
    
    initial begin
        $dumpfile("ondas.vcd");
        $dumpvars(0,tb_nr);
        clk = 0;
        clear = 1;
        #100
        clear = 0;
        #100
        clear = 1;
        #100
        clear = 0;
        #3000
        $finish;
    end

endmodule
