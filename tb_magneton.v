
`timescale 1ns / 1ps

module magneton_;

    reg timer_done, door_closed, clearn, startn, stopn;

    magneton dut(
        .timer_done(timer_done), .door_closed(door_closed),
        .clearn(clearn), .startn(startn), .stopn(stopn)
    );

    initial begin
        
        $dumpfile("ondas.vcd");  
        $dumpvars(0, magneton_); 

        timer_done = 0; door_closed = 0; clearn = 0; startn = 0; stopn = 0; 

        timer_done = 0; door_closed = 1; clearn = 0; startn = 1; stopn = 0; 

        #100;

        timer_done = 0; door_closed = 1; clearn = 0; startn = 0; stopn = 0;

        #100;

        timer_done = 1; door_closed = 1; clearn = 0; startn = 0; stopn = 0;

        #100;

        timer_done = 0; door_closed = 0; clearn = 0; startn = 0; stopn = 0;

        #100;


    end

endmodule
