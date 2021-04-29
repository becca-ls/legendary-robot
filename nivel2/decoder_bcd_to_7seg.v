module decoder(sec_ones, sec_tens, min, sec_ones_segs, sec_tens_segs, min_segs);

	input [3:0] sec_ones;
	input [3:0] sec_tens;
	input [3:0] min;
	output reg [6:0]sec_ones_segs;
	output reg [6:0]sec_tens_segs;
	output reg [6:0]min_segs;

	always @(sec_ones) begin
		case (sec_ones)
			4'b0000 :  sec_ones_segs = 7'b1111110;
		   	4'b0001 :  sec_ones_segs = 7'b0110000;
	   		4'b0010 :  sec_ones_segs = 7'b1101101;
	   		4'b0011 :  sec_ones_segs = 7'b1111001;
	   		4'b0100 :  sec_ones_segs = 7'b0110011;
	   		4'b0101 :  sec_ones_segs = 7'b1011011;
	   		4'b0110 :  sec_ones_segs = 7'b1011111;
	   		4'b0111 :  sec_ones_segs = 7'b1110000;
	   		4'b1000 :  sec_ones_segs = 7'b1111111;
	   		4'b1001 :  sec_ones_segs = 7'b1111011;
	   		default :  sec_ones_segs = 7'b0000000;
	  	endcase
	end
	
	always @(sec_tens) begin
		case (sec_tens)
			4'b0000 :  sec_tens_segs = 7'b1111110;
		   	4'b0001 :  sec_tens_segs = 7'b0110000;
	   		4'b0010 :  sec_tens_segs = 7'b1101101;
	   		4'b0011 :  sec_tens_segs = 7'b1111001;
	   		4'b0100 :  sec_tens_segs = 7'b0110011;
	   		4'b0101 :  sec_tens_segs = 7'b1011011;
	   		4'b0110 :  sec_tens_segs = 7'b1011111;
	   		4'b0111 :  sec_tens_segs = 7'b1110000;
	   		4'b1000 :  sec_tens_segs = 7'b1111111;
	   		4'b1001 :  sec_tens_segs = 7'b1111011;
	   		default :  sec_tens_segs = 7'b0000000;
	  	endcase
	end
	
	always @(min) begin
		case (min)
			4'b0000 :  min_segs = 7'b1111110;
		   	4'b0001 :  min_segs = 7'b0110000;
	   		4'b0010 :  min_segs = 7'b1101101;
	   		4'b0011 :  min_segs = 7'b1111001;
	   		4'b0100 :  min_segs = 7'b0110011;
	   		4'b0101 :  min_segs = 7'b1011011;
	   		4'b0110 :  min_segs = 7'b1011111;
	   		4'b0111 :  min_segs = 7'b1110000;
	   		4'b1000 :  min_segs = 7'b1111111;
	   		4'b1001 :  min_segs = 7'b1111011;
	   		default :  min_segs = 7'b0000000;
	  	endcase
	end
endmodule
