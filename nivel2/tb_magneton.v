/*`timescale 1ns / 1ps

module latch_;

    wire Q, Qn;
    reg R, S; 

    latch uut(
            .S(S), .R(R), .Q(Q), .Qn(Qn)
    );
    initial begin

      
        $dumpfile("ondas.vcd");  
        $dumpvars(0, magneton_); 

        S = 1; R = 1;
        
        #100 S = 0;
        #100 S = 1;
        #100 R = 0;
        #100 R = 1;
        #100 S = 0;
             R = 0;
        #100 S = 1;
             R = 1;
        #100 S = 0;
             R = 0;
        #100 ;
    end

endmodule

*/

`timescale 1ns / 1ps

module magneton_;

    reg timer_done, door_closed, clearn, startn, stopn, Q;

    magnetron dut(
        .timer_done(timer_done), .door_closed(door_closed),
        .clearn(clearn), .startn(startn), .stopn(stopn), .Q(Q)
    );

    initial begin
        
        $dumpfile("ondas.vcd");  
        $dumpvars(0, magneton_); 

        timer_done = 0; door_closed = 0; clearn = 1; startn = 1; stopn = 1; 


        timer_done = 0; door_closed = 1; clearn = 1; startn = 0; stopn = 1; 
        #100;

        timer_done = 0; door_closed = 1; clearn = 1; startn = 1; stopn = 1;
        #100;

        timer_done = 1; door_closed = 1; clearn = 1; startn = 1; stopn = 1;
        #100;

        timer_done = 0; door_closed = 0; clearn = 1; startn = 1; stopn = 1;
        #100;

        timer_done = 0; door_closed = 1; clearn = 0; startn = 0; stopn = 1;
        #100;


    end

endmodule
