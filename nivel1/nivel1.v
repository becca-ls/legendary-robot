module nivel1 (
	input wire [9:0]key,
	input wire clock,
	input wire startn,
	input wire stopn,
	input wire clearn,
	input wire door_closed,
	
	output wire [6:0]blank_digit,
	output wire [6:0]sec_ones_segs,
	output wire [6:0]sec_tens_segs,
	output wire [6:0]min_segs,
	output wire mag_on
);
	
	assign blank_digit = 7'b1111111;
	
	wire [3:0]D_to_data;
	wire loadn;
	wire pgt1Hz_to_clock;
	wire zero_to_timerDone;
	wire [3:0]sec_ones;
	wire [3:0]sec_tens;
	wire [3:0]mins;

	EntradaTimerControle codi (key, mag_on, clock, D_to_data, loadn, pgt1Hz_to_clock);
	
	magnetron mag (zero_to_timerDone, door_closed, clearn, startn, stopn, mag_on);
	
	timer tempo (D_to_data, loadn, clearn, pgt1Hz_to_clock, mag_on, sec_ones, sec_tens,
			   mins, zero_to_timerDone);
	
	decoder dec (sec_ones, sec_tens, mins, sec_ones_segs, sec_tens_segs, min_segs);
	
endmodule	
