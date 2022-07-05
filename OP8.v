module OP8(out,CLK,A,B,S);
input [2:0] S;
input A,B,CLK;
output reg out;
wire D0, D1, D2, D3, D4, D5, D6, D7;
xor (D0,A,B);
and (D1,A,B);
or (D2,A,B);
nand (D3,A,B);
nor (D4,A,B);
not (D5,A);
not (D6,B);
xnor (D7,A,B);
//MUX CODING
always@(*)
begin
case(S)
3'b000: out=D0;
3'b001: out=D1;
3'b010: out=D2;
3'b011: out=D3;
3'b100: out=D4;
3'b101: out=D5;
3'b110: out=D6;
3'b111: out=D7;
default: out=1'b0;
endcase
end
endmodule
