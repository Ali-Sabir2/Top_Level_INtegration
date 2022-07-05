module CLA16(input CLK,input RST, input [15:0]A,input [15:0]B,input Cin,output [15:0]Sum,
output Cout);
reg [15:0]tempS;
reg tempC;
assign Sum=tempS;
assign Cout=tempC;
always@(posedge CLK)
begin
if (RST)
begin
tempC<=0;
tempS<=16'd0;
end
else
{tempC,tempS}<=A+V+Cin;
end
endmodule
