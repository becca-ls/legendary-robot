`timescale 1ms / 1ms
module tb_timer;
	parameter SEMIPERIOD = 500;
	wire [3:0]data;
	wire loadn; 
	wire clrn; 
	wire clock;
	wire enable;
	wire [3:0]sec_ones;
	wire [3:0]sec_tens;
	wire [3:0]mins;
	wire zero;
	
	reg [3:0]Data;
	reg Loadn; 
	reg Clrn; 
	reg clk;
	reg En;
	
	assign data = Data;
	assign loadn = Loadn;
	assign clrn = Clrn;
	assign clock = clk;
	assign enable = En;
	
	always #SEMIPERIOD clk = ~clk;
	
	timer temporizador(data,loadn,clrn,clock,enable,sec_ones,sec_tens,mins,zero);
	
	initial begin
		$dumpfile("ondas.vcd");
		$dumpvars(0,tb_timer);
		clk = 0;
		En = 0;
		Clrn = 1;
		Clrn = 0;
		Clrn = 1;
		Loadn = 1;
		Data = 4'd1;
		#100
		Loadn = 0;
		#1000
		Data = 4'd1;
		#1000
		Data = 4'd0;
		#1000
		Loadn = 1;
		En = 1;
		#75000
		$finish;
	end


endmodule
