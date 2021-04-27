module codificadorPrioritario(output reg [3:0]saidaBCD, output reg dadoValido,
                                input wire enableN, input wire [9:0]tecladoNumerico);
    
    always@(*)begin
        if(enableN == 0)begin
            dadoValido = 0;
            if(tecladoNumerico[9] == 1) begin
                saidaBCD = 4'd9;
            end
            else
            if(tecladoNumerico[8] == 1) begin
                saidaBCD = 4'd8;
            end
            else
            if(tecladoNumerico[7] == 1) begin
                saidaBCD = 4'd7;
            end
            else
            if(tecladoNumerico[6] == 1) begin
                saidaBCD = 4'd6;
            end
            else
            if(tecladoNumerico[5] == 1) begin
                saidaBCD = 4'd5;
            end
            else
            if(tecladoNumerico[4] == 1) begin
                saidaBCD = 4'd4;
            end
            else
            if(tecladoNumerico[3] == 1) begin
                saidaBCD = 4'd3;
            end
            else
            if(tecladoNumerico[2] == 1) begin
                saidaBCD = 4'd2;
            end
            else
            if(tecladoNumerico[1] == 1) begin
                saidaBCD = 4'd1;
            end
            else
            if(tecladoNumerico[0] == 1) begin
                saidaBCD = 4'd0;
            end
            else
                dadoValido = 1;
        end
        else begin
            dadoValido = 1;
        end
    end

endmodule
