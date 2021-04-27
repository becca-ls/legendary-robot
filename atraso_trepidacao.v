module nao_recilado(
    output reg out,
    input wire clk,
    input wire clear
);
    parameter A = 2'b00;
    parameter B = 2'b01;
    parameter C = 2'b10;
    reg [2:0]count;
    reg [1:0]state;
    reg [1:0]next_state;

    initial begin
        next_state = A;
        state = A;
    end

    always@(posedge clk)begin
        state <= next_state;
    end

    always@(posedge clk) begin
        case (state)
            A:  begin
                    if(clear)begin
                        out <= 0;
                        count <= 0;
                        next_state = A; 
                    end
                    else begin
                        out <= 0;
                        count <= count;
                        next_state = B;
                    end
                end
            B:  begin
                    if(clear)begin
                        out <= 0;
                        count <= 0;
                        next_state = A; 
                    end
                    else begin
                        if(count == 3) begin
                            out <= 1;
                            count <= count+1;
                            next_state = C;
                        end
                        else begin
                            out <= 0;
                            count <= count+1;
                            next_state = B;    
                        end
                        
                    end
                end
            C:  begin
                    if(clear)begin
                        out <= 0;
                        count <= 0;
                        next_state = A; 
                    end
                    else begin
                        out <= 1;
                        if(count < 7) begin
                            count <= count+1;
                        end
                        next_state = C;
                    end
                end
        endcase
    end

endmodule





//estados
