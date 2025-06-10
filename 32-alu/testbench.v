module alu_32bit_tb_case; 
reg [31:0]a; 
reg [31:0]b; 
reg [2:0]f; 
wire [31:0]y; 
alu_32bit_case test2(.y(y),.a(a),.b(b),.f(f)); 
initial 
begin 
end 
initial 
a=32'h00000000; 
b=32'hFFFFFFFF; 
#10 f=3'b000; 
#10 f=3'b001; 
#10 f=3'b010; 
#10 f=3'b011; 
#10 f=3'b010; 
#10 f=3'b011; 
#10 f=3'b100; 
#100 $finish; 
endmodule