module magnetron(timer_done, door_closed, clearn, startn, stopn, Q);

	input timer_done, door_closed, clearn, startn, stopn;
	output Q, Qn;

	wire S, R;

	
	logica code (timer_done, door_closed, clearn, startn, stopn, S, R);

	latch a1(.set(S), .reset(R), .mag_on(Q));

endmodule


