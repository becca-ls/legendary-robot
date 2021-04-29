/*
module latch(S, R, Q, Qn);
input S, R;
output  Q, Qn;
 
wire Q_int, Qn_int;
 
assign #1 Q_int = ~(S & Qn_int);
assign #1 Qn_int = ~(R & Q_int);
assign Q = Q_int;
assign Qn = Qn_int;
 
endmodule
*/


module latch(
	input wire set, reset,
	output reg mag_on
);
	initial begin
		mag_on = 0;
	end

	always@(*) begin
		if(set == 1 && reset == 0) begin
			mag_on <= 1;
		end
		else if (set == 0 && reset == 1) begin
			mag_on <= 0;
		end
		else if (set == 0 && reset == 0) begin
			mag_on <= mag_on; 
		end
	end
	
endmodule
