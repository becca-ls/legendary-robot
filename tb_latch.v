`timescale 1ns / 1ps

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
