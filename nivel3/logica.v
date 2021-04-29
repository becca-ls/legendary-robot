module logica(timer_done, door_closed, clearn, startn, stopn, S, R);

	input timer_done, door_closed, clearn, startn, stopn;
	output wire S, R;

	wire A, B;

	assign A = (door_closed & ~startn & stopn & clearn);
	assign B = (~door_closed | timer_done | ~stopn | ~clearn);    

	assign S = A & ~B;  
	assign R = B;

endmodule
