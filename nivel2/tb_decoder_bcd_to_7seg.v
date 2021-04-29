`timescale 1ns / 1ps

module decoder_;

    reg [3:0]bcd;
    reg [3:0] sec_ones;
    reg [3:0] sec_tens;
    reg [3:0] min;
    wire [6:0] sec_ones_segs;
    wire [6:0] sec_tens_segs;
    wire [6:0] min_segs;
    decoder uut(
        .sec_ones(sec_ones), .sec_tens(sec_tens), .min(min), .sec_ones_segs(sec_ones_segs),
        .sec_tens_segs(sec_tens_segs), .min_segs(min_segs)
    );

    initial begin
        
        $dumpfile("ondas.vcd");  
        $dumpvars(0, decoder_); 
	   sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        bcd = 0000;
	   
	   sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
	   
        bcd = 0001;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0001;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0010;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0001;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0100;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0001;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 1000;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0001;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 1001;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0001;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0110;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0001;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0101;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0001;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 1010;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

        bcd = 0001;
        
        sec_ones = bcd;
	   sec_tens = bcd;
	   min = bcd;
        
        #100;

    end

endmodule
