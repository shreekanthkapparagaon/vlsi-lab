module alu_32bit_case(y,a,b,f);  
input [31:0]a;  
input [31:0]b;  
input [2:0]f;  
output reg [31:0]y;  
always@(*)  
begin  
case(f)  
3'b000:y=a&b; //AND Operation  
3'b001:y=a|b; //OR Operation  
3'b010:y=~(a&b); //NAND Operation  
3'b011:y=~(a|b); //NOR Operation  
3'b010:y=a+b; //Addition  
3'b011:y=a-b; //Subtraction  
3'b100:y=a*b; /Multiply  
default:y=32'bx;   
endcase  
end  
endmodule 