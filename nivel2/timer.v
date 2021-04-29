module timer(input wire [3:0]data, input wire loadn, input wire clrn, input wire clock, input wire enable,
		   output wire [3:0]sec_ones, output wire [3:0]sec_tens, output wire [3:0]mins, output wire zero);
	
	wire tc_s, tc_d, tc_m;
	wire zero_s, zero_d, zero_m;
	
	
	mod10 segundos_uni(data, loadn, clrn, clock, enable, sec_ones,tc_s, zero_s);
	mod6 segundos_dez(sec_ones, loadn, clrn, clock, tc_s, sec_tens, tc_d, zero_d);
	mod10 minutos(sec_tens, loadn, clrn, clock, tc_d, mins, tc_m, zero_m);
	
	assign zero = zero_s & zero_d & zero_m;
	
endmodule		 
