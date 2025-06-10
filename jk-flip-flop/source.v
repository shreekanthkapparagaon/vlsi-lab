module jkff( input J, input K, input clk, output reg Q, output Qbar ); 
assign Qbar = ~Q; 
always @(posedge clk) begin 
if (J == 1 && K == 0) 
Q <= 1; 
else if (J == 0 && K == 1) 
Q <= 0; 
else if (J == 1 && K == 1) 
Q <= ~Q; 
end 
endmodule