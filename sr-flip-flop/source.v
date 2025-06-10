module srff( input S, input R, input clk, output reg Q, output Qbar ); 
assign Qbar = ~Q; 
always @(posedge clk) begin 
if (S == 1 && R == 0) 
Q <= 1; 
else if (S == 0 && R == 1) 
Q <= 0; 
else if (S == 1 && R == 1) 
Q <= 1'bz; 
end 
endmodule