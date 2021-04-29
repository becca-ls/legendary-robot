module tb;  
 
  reg [3:0] data;
  reg  loadn;
  reg  clrn;
  reg clock;  
  reg enable;
  wire [3:0] ones;  
  wire  tc;
  
    
  always #10 clock = ~clock;  

  mod10 u0  (  
    .data(data),
    .loadn(loadn),
    .clrn(clrn),
    .clock(clock),  
    .enable(enable),
    .ones(ones),
    .tc(tc)
  	); 
  
  initial begin  
    data <= 10;
    clock <= 0; 
    enable <= 1'b0;
    clrn <= 1'b1; 
 
    $monitor ("T=%0t enable=%0b ones=%0d tc=%0d, clrn=%0b", $time, enable, ones, tc, clrn);  
    repeat(10) @ (posedge clock);  
    //enable <= 1; 
  
    //repeat(11) @ (posedge clock); 
    $finish;  
  end  
endmodule