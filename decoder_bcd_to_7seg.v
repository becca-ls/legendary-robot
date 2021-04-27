module decoder(clk,bcd,sete_seg);

input [3:0] bcd;
input clk;
output reg [6:0] sete_seg;

always @(posedge clk)
 begin
  case (bcd)
   4'b0000 :  sete_seg = 7'b1111110;
   4'b0001 :  sete_seg = 7'b0110000;
   4'b0010 :  sete_seg = 7'b1101101;
   4'b0011 :  sete_seg = 7'b1111001;
   4'b0100 :  sete_seg = 7'b0110011;
   4'b0101:  sete_seg = 7'b1011011;
   4'b0110 :  sete_seg = 7'b1011111;
   4'b0111 :  sete_seg = 7'b1110000;
   4'b1000 :  sete_seg = 7'b1111111;
   4'b1001 :  sete_seg = 7'b1110011;
   default :  sete_seg = 7'b0000000;
  endcase
 end
endmodule
