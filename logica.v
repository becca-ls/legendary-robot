`timescale 1ns / 1ps
module logica(timer_done, door_closed, clearn, startn, stopn);

input timer_done, door_closed, clearn, startn, stopn;

wire A, B, S, R;

assign A = (door_closed & ~startn & stopn);
assign B = (~door_closed | timer_done | ~stopn | ~clearn);    

assign S = A & ~B;
assign R = B;

endmodule
