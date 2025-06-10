`timescale 1ns/1ps 
module DFF_tb; 
reg D, clk, Reset; 
wire Q, Qbar; 
DFF uut ( .Q(Q), .Qbar(Qbar), .D(D),  .clk(clk), .Reset(Reset) ); 
initial begin 
clk = 0; 
forever #5 clk = ~clk 
end 
initial begin 
$monitor("Time=%0t | Reset=%b | D=%b | Q=%b | Qbar=%b", $time, Reset, D, Q, Qbar); 
// Initialize inputs 
D = 0; Reset = 1; 
#10; 
Reset = 0; 
#10 D = 1; 
#10 D = 0; 
#10 D = 1; 
#10 Reset = 1; 
#10 Reset = 0; 
#20 $finish; 
end 
endmodule