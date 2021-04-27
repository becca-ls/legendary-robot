`timescale 1ns / 1ps

module decoder_;

    reg clk;
    reg [3:0]bcd;
    wire [6:0]sete_seg;

    decoder uut(
        .clk(clk), .bcd(bcd)
    );

    initial begin
        
        $dumpfile("ondas.vcd");  
        $dumpvars(0, decoder_); 

        clk = 0; bcd = 0000;

        clk = 1; bcd = 0001;
        #100;

        clk = 0; bcd = 0001;
        #100;

        clk = 1; bcd = 0010;
        #100;

        clk = 0; bcd = 0001;
        #100;

        clk = 1; bcd = 0100;
        #100;

        clk = 0; bcd = 0001;
        #100;

        clk = 1; bcd = 1000;
        #100;

        clk = 0; bcd = 0001;
        #100;

        clk = 1; bcd = 1001;
        #100;

        clk = 0; bcd = 0001;
        #100;

        clk = 1; bcd = 0110;
        #100;

        clk = 0; bcd = 0001;
        #100;

        clk = 1; bcd = 0101;
        #100;

        clk = 0; bcd = 0001;
        #100;

        clk = 1; bcd = 1010;
        #100;

        clk = 0; bcd = 0001;
        #100;

    end

endmodule
