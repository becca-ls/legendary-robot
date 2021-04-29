
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
