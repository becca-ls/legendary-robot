`timescale 1ms / 1ms
module dividido_por100(input wire clk, output reg clock);
    reg [6:0]count;
    initial begin
        count = 0;
        clock = 0;
    end
    always@ (posedge clk) begin
        count+=1;
        if(count == 50)begin
            count = 0;
            clock = ~clock;
        end    
    end
    
endmodule


