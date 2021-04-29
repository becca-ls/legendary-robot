module mod6(
  	input wire [3:0] data, 
  	input wire loadn, 
  	input wire clrn,
    	input wire clock,  
    	input wire enable,  
    	output reg [3:0] tens,
  	output reg tc,
  	output reg zero
);  


 	initial begin
   		tc = 1'b0;
   		tens = 0;
  	end
  
  	always @ (posedge clock or negedge clrn) begin
  		if (clrn == 0) begin  
     		tens <= 0;
   		end 
   		else begin
     		if(loadn == 0) begin
				tens <= data;
			end
			else begin
				if(enable == 1) begin
					if(tens > 0) begin
						tens <= tens-1;
					end
					if(tens == 0) begin
						tens <= 5;	
					end
				end
			end     		
     	end 
	end
	
	always @ (tens,enable) begin
		if(tens == 0) begin
			zero = 1;
			if(enable == 1)begin
				tc = 1;
			end
			else begin
				tc = 0;
			end
		end
		else begin
			zero = 0;
			tc = 0;
		end
	end
	
endmodule  
