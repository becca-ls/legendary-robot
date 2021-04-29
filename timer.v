module timer(
  input [3:0] data,
  input  loadn, 
  input  clrn,
  input   clock,
  input   enable, 
  output  [3:0] sec_ones,
  output  [3:0] sec_tens,
  output  [3:0] mins,
  output zero
);
  
  wire tctemp;
  wire tctemp2;
  
    mod10 inst4(  
    .data(data),
    .loadn(loadn),
    .clrn(clrn),
    .clock(clock),  
    .enable(enable),
    .ones(sec_ones),
    .tc(tctemp),
    .zero(zero)
  ); 
  
   mod6 inst(  
    .data(data),
    .loadn(loadn),
    .clrn(clrn),
    .clock(clock),  
    .enable(tctemp),
    .tens(sec_tens),
    .tc(tctemp2),
    .zero(zero)
  ); 
  
    mod10 inst5(  
    .data(data),
    .loadn(loadn),
    .clrn(clrn),
    .clock(clock),  
    .enable(tctemp2),
    .ones(mins),
    .zero(zero)
  ); 
  
endmodule