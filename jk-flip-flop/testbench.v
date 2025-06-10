module jkff_tb; 
reg J,K,clk; 
wire Q, Qbar; 
jkff uut (  .Q(Q),  .Qbar(Qbar),  .J(J),  .K(K),  .clk(clk)  ); 
initial begin 
clk = 0; 
forever #5 clk = ~clk 
end 
initial begin 
$monitor("Time=%0t | J=%b |  K=%b | Q=%b | Qbar=%b", $time, J, K, Q, Qbar); 
#10 J = 0; K = 1; 
#10 J = 0; K = 0; 
#10 J = 1; K = 0; 
#10 J = 1; K = 1;  
#20 $finish; 
end 
endmodule