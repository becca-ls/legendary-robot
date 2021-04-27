
`timescale 1ns / 1ps
module magneton(timer_done, door_closed, clearn, startn, stopn);

input timer_done, door_closed, clearn, startn, stopn;
output Q, Qn;

wire A, B, S, R;

assign A = (door_closed & startn & ~stopn);
assign B = (~door_closed | timer_done | stopn | clearn);

assign S = A & ~B;
assign R = B;

latch a1(.S(S), .R(R), .Q(Q), .Qn(Qn));

endmodule

module latch(S, R, Q, Qn);

input S, R;
output  Q, Qn;

wire Q_int, Qn_int;

assign #1 Q_int = ~(R | Qn_int);
assign #1 Qn_int = ~(S | Q_int);
assign Q = Q_int;
assign Qn = Qn_int; 

endmodule
