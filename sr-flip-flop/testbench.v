module srff_tb; 
reg S,R,clk; 
wire Q, Qbar; 
srff uut (  .Q(Q),  .Qbar(Qbar),  .S(S),  .R(R),  .clk(clk)  ); 
initial begin 
clk = 0; 
forever #5 clk = ~clk; 
end 
initial begin 
$monitor("Time=%0t | S=%b |  R=%b | Q=%b | Qbar=%b", $time, S, R, Q, Qbar); 
#10 S = 0; R = 1; 
#10 S = 0; R = 0; 
#10 S = 1; R = 0; 
#10 S = 1; R = 1;  
#20 $finish; 
end 
endmodule