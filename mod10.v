module mod10(
  	input [3:0] data, 
  	input  loadn, 
  	input  clrn,
    input   clock,  
    input   enable,  
    output reg [3:0] ones,
  	output reg tc,
  	output reg zero
);  
 
  reg primeiravez;

 initial begin
   assign tc = 1'b0;
   primeiravez = 0;
  end
  always @ (clock) begin 
   if (!clrn) begin  
     assign ones = 0;
   end else begin
     if (!enable) begin
      		assign ones = ones;
    	 end
      	else begin
          if(primeiravez == 0 && !loadn)begin
            assign ones = data;
              primeiravez = 1;
            end
            else begin
                if( tc == 0)begin
                assign ones = ones - 1;
              end
              else begin
                assign ones = 0;
              end
           
            end
          if (ones <= 0) begin
               assign tc = 1'b1;
               assign zero = 0;
              end
          if (ones > 0 && ones <= 9) begin 
               assign tc = 1'b0;
              end
        end

   end
      
 end
endmodule  