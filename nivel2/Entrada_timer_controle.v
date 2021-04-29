module EntradaTimerControle (input wire [9:0]teclado, input enableN, input clock,
					    output wire [3:0]D, output wire loadN, output wire pgt_1Hz);
		
		wire Clear_In; // fio que leva Dado válido até Clear
		wire AIn_mux; // fio que leva out até a do mux
		wire BIn_mux; // fio que leva div-por-100 até 1Hz
		
		codificadorPrioritario bloco1 (.saidaBCD(D), .dadoValido(Clear_In), 
		.enableN(enableN), .tecladoNumerico(teclado));
		
		dividido_por100 bloco2 (.clk(clock), .clock(BIn_mux));
		
		nao_recilado bloco3 (.out(AIn_mux), .clk(clock), .clear(Clear_In));
		
		MUX bloco4 (.pgt_1Hz(pgt_1Hz), .sel(enableN), .a(AIn_mux), .b(BIn_mux));
		
		assign loadN = Clear_In;
		
endmodule

