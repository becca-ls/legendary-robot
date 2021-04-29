module tb;  
 
  
  reg [3:0] data;
  reg  loadn;
  reg  clrn;
  reg   clock;
  reg   enable; 
  wire  [3:0] sec_ones;
  wire  [3:0] sec_tens;
  wire  [3:0] mins;
  wire zero;
  
    
  always #10 clock = ~clock;  

  timer u0  (  
    .data(data),
    .loadn(loadn),
    .clrn(clrn),
    .clock(clock),  
    .enable(enable),
    .sec_ones(sec_ones),
    .sec_tens(sec_tens),
    .mins(mins),
    .zero(zero)
  	); 
  
  initial begin  
    data <= 4;
    clock <= 0; 
    enable <= 1'b0;
    clrn <= 1'b1; 
 
    $monitor ("T=%0t enable=%0b mins=%0d sec_tens=%0d sec_ones=%0d  clrn=%0b", $time, enable,mins,sec_tens ,sec_ones, clrn);  
    repeat(9) @ (posedge clock);  
    //enable <= 1; 
  
    //repeat(11) @ (posedge clock); 
    $finish;  
  end  
endmodule