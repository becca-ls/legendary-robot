module mod10(
  	input wire [3:0] data, 
  	input wire loadn, 
  	input wire clrn,
    	input wire clock,  
    	input wire enable,  
    	output reg [3:0] ones,
  	output reg tc,
  	output reg zero
);  


 	initial begin
   		tc = 1'b0;
   		ones = 0;
  	end
  
  	always @ (posedge clock or negedge clrn) begin
  		if (clrn == 0) begin  
     		ones <= 0;
   		end 
   		else begin
     		if(loadn == 0) begin
				ones <= data;
			end
			else begin
				if(enable == 1) begin
					if(ones > 0) begin
						ones <= ones-1;
					end
					if(ones == 0) begin
						ones <= 9;	
					end
				end
			end     		
     	end 
	end
	
	always @ (ones,enable) begin
		if(ones == 0) begin
			zero = 1;
			if(enable == 1)begin
				tc = 1;
			end
			else begin
				tc = 0;
			end
		end
		else begin
			tc = 0;
			zero = 0;
		end
	end
	
endmodule  
