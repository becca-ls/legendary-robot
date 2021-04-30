`timescale 1ms / 1ms
module tb_nivel1;
	parameter SEMIPERIOD = 5;
	reg [9:0]key;
	reg clock;
	reg startn;
	reg stopn;
	reg clearn;
	reg door_closed;
	
	wire [6:0]blank_digit;
	wire [6:0]sec_ones_segs;
	wire [6:0]sec_tens_segs;
	wire [6:0]min_segs;
	wire mag_on; 
	
	always #SEMIPERIOD clock = ~clock;
	
	nivel1 microondas (.key(key), .clock(clock), .startn(startn), .stopn(stopn), .clearn(clearn), .door_closed(door_closed), 
					.blank_digit(blank_digit), .sec_ones_segs(sec_ones_segs), .sec_tens_segs(sec_tens_segs), .min_segs(min_segs), .mag_on(mag_on));
	initial begin
		$dumpfile("ondas.vcd");
		$dumpvars(0,tb_nivel1);
		clock = 0;
		clearn = 1;
		key = 10'b0000010000;
		startn = 1;
		stopn = 1;
		door_closed = 1;
		
		#100;
		key = 10'b0000000000;
		startn = 1;
		stopn = 1;
		door_closed = 1;
		
		#100;
		key = 10'b0000000001;
		startn = 1;
		stopn = 1;
		door_closed = 1;
		
		#100;
		key = 10'b0000000000;
		startn = 1;
		stopn = 1;
		door_closed = 0;
		
		#100;
		key = 10'b0000000000;
		startn = 0;
		stopn = 1;
		door_closed = 0;
		
		#100;
		key = 10'b0000000000;
		startn = 1;
		stopn = 1;
		door_closed = 1;
		
		#100;
		key = 10'b0000000000;
		startn = 0;
		stopn = 1;
		door_closed = 1;
		
		#200
		key = 10'b0000000000;
		startn = 1;
		stopn = 1;
		door_closed = 1;
		
		#1800
		key = 10'b0000000000;
		startn = 1;
		stopn = 0;
		door_closed = 1;
		
		#2000;
		key = 10'b0000000000;
		startn = 0;
		stopn = 1;
		door_closed = 1;
		
		#2000;
		key = 10'b0000000000;
		startn = 0;
		stopn = 1;
		door_closed = 0;
		
		#2000;
		key = 10'b0000000000;
		startn = 0;
		stopn = 1;
		door_closed = 1;
		
		#2000;
		key = 10'b0000000000;
		startn = 0;
		stopn = 1;
		door_closed = 1;
		clearn = 0;
		
		#2000
		clearn = 1;
		
		#100
		key = 10'b0000010000;
		startn = 1;
		stopn = 1;
		door_closed = 1;
		
		#100;
		key = 10'b0000000000;
		startn = 1;
		stopn = 1;
		door_closed = 1;
		
		#100;
		key = 10'b0000000001;
		startn = 1;
		stopn = 1;
		door_closed = 1;
		
		#100;
		key = 10'b0000000000;
		startn = 1;
		stopn = 1;
		door_closed = 1;
		#100
		startn = 0;
		
		#100000
		
		
		$finish;
	end
endmodule
