module latch(S, R, Q, Qn);
input S, R;
output  Q, Qn;
 
wire Q_int, Qn_int;
 
assign #1 Q_int = ~(S & Qn_int);
assign #1 Qn_int = ~(R & Q_int);
assign Q = Q_int;
assign Qn = Qn_int;
 
endmodule
