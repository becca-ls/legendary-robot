`timescale 1ms / 1ms
module tb_entradaTimerControle;
	parameter SEMIPERIOD = 5;

	wire [3:0]D;
	wire loadN;
	wire pgt_1Hz;
	
	reg [9:0]teclado;
	reg enablen, clock;
	wire [9:0]Teclado;
	wire enableN, Clock;
	
	assign Teclado = teclado;
	assign enableN = enablen;
	assign Clock = clock;
	
	always #SEMIPERIOD clock = ~clock;
	
	EntradaTimerControle teste (Teclado, enableN, Clock, D, loadN, pgt_1Hz);
	
	initial begin
        $dumpfile("ondas.vcd");
        $dumpvars(0,tb_entradaTimerControle);
        clock = 0;
        enablen = 0;
        teclado = 10'b0001000000;
        #100
        teclado = 10'b0000000000;
        #100
        teclado = 10'b0000000001;
        #100
        teclado = 10'b1000001000;
        #100
        teclado = 10'b0000000000;
        
        #20
        enablen = 1;
        teclado = 10'b0001000000;
        #100
        teclado = 10'b0000000000;
        #100
        teclado = 10'b0000000001;
        #100
        teclado = 10'b1000001000;
        #100
        teclado = 10'b0000000000;
        #3000
        $finish;
        
    end

endmodule 
