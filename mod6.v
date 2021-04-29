module mod6(
  	input [3:0] data, 
  	input  loadn, 
  	input  clrn,
    input   clock,  
    input   enable,  
    output reg [3:0] tens,
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
     assign tens = 0;
   end else begin
     if (!enable) 
      		assign tens = tens;
      	else begin
          if(primeiravez == 0 && !loadn)begin
            assign tens = data;
              primeiravez = 1;
            end
                       else begin
                if( tc == 0)begin
                assign tens = tens - 1;
              end
              else begin
                assign tens = 0;
              end
           
            end
          if (tens <= 0) begin
               assign tc = 1'b1;
               assign zero = 1'b0;
              end
          if (tens > 0 && tens <= 5) begin 
               assign tc = 1'b0;
              end
        end

   end
      
 end
endmodule  