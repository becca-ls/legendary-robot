`timescale 1ms / 1ms
module dividido_por100(input wire clk, output reg clock);
    reg [6:0]count;
    initial begin
        count = 0;
        clock = 0;
    end
    always@ (posedge clk) begin
        count+=1;
        if(count == 50)begin
            count = 0;
            clock = ~clock;
        end    
    end
    
endmodule

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
