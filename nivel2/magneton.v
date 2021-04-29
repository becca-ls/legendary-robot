module magnetron(timer_done, door_closed, clearn, startn, stopn, Q);

	input timer_done, door_closed, clearn, startn, stopn;
	output Q, Qn;

	wire /*A, B,*/ S, R;

	/*assign A = (door_closed & ~startn & stopn);
	assign B = (~door_closed | timer_done | ~stopn | ~clearn);

	assign S = A & ~B;
	assign R = B;*/
	
	logica code (timer_done, door_closed, clearn, startn, stopn, S, R);

	latch a1(.set(S), .reset(R), .mag_on(Q));

endmodule


