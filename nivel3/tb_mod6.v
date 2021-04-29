module tb_mod6;
	parameter SEMIPERIOD = 5;
	wire [3:0] data; 
  	wire loadn; 
  	wire clrn;
    	wire clock; 
    	wire enable;
    	wire [3:0] tens;
  	wire tc;
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
	
	mod6 teste(data,loadn,clrn,clock,enable,tens,tc,zero);
	
	initial begin
		$dumpfile("ondas.vcd");
		$dumpvars(0,tb_mod6);
		clk = 0;
		Data = 4'd1;
		Loadn = 1;
		Clrn = 1;
	     En = 0;
		#20
		Loadn = 0;
		#10
		Data = 4'd4;
		#10
		Loadn = 1;
		En = 1;
		#1000;
		$finish;
	end

endmodule
