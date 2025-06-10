module DFF(Q,Qbar,D,clk,Reset); 
output reg Q; 
output Qbar; 
input D,clk,Reset; 
always @(posedge clk) 
begin 
if (Reset == 1'b1)  
Q <= 1'b0; 
else 
Q <= D; 
end 
assign Qbar = ~Q; 
endmodule 