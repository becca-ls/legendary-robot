module tb_MUX;
    parameter SEMIPERIOD = 5;
    wire saida;

    reg A, B, SEL;
    wire a, b, sel;
    assign a = A;
    assign b = B;
    assign sel = SEL;

    MUX teste (saida,sel,a,b);
    
    initial begin
        $dumpfile("ondas.vcd");
        $dumpvars(0,tb_MUX);
        A = 1;
        B = 0; 
        SEL = 0;
        #4
        SEL = 1;
        #10
        $finish;
    end

endmodule
