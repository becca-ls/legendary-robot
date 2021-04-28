module MUX(output reg pgt_1Hz,
            input wire sel, a, b);
    
    always@(*)begin
        if(sel == 0)begin
            pgt_1Hz = a;
        end
        else begin
            pgt_1Hz = b;
        end
    end
endmodule
