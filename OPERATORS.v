module bitwise_op(a, b, o_not, o_and, o_or, o_xor, o_xnor);
  input [3:0]a,b;
  output [3:0]o_not, o_and, o_or, o_xor, o_xnor;
  
 assign o_not = ~a;
 assign o_and = a&b;
 assign o_or = a|b;
 assign o_xor = a^b;
 assign o_xnor = a~^b;
  
endmodule

module bitwise_op_tb;
 reg [3:0]a,b;
 wire [3:0]o_not, o_and, o_or, o_xor, o_xnor;
 bitwise_op b1(a, b, o_not, o_and, o_or, o_xor, o_xnor);

initial
  begin
   a=4'b1011;
   b=4'b0110;
  end

initial
  $monitor("a=%b, b=%b, o_not=%b, o_and=%b, o_or=%b, o_xor=%b, o_xnor=%b",a,b,o_not, o_and, o_or, o_xor, o_xnor);
endmodule

module arithmetic_op(a,b,o_add,o_sub,o_prod,o_div,o_modulo,o_power);
  input [3:0]a,b;
  output [3:0]o_add,o_sub,o_div,o_modulo;
  output [4:0]o_prod;
  output [9:0]o_power;
  
  assign o_add = a+b;
  assign o_sub = a-b;
  assign o_prod = a*b;
  assign o_div = a/b;
  assign o_modulo =a%b;
  assign o_power = a**b;
  
endmodule;

module arithmetic_op_tb;
  reg [3:0]a,b;
  wire [3:0]o_add,o_sub,o_div,o_modulo;
  wire [4:0]o_prod;
  wire [9:0]o_power;
  
  arithmetic_op a1(a,b,o_add,o_sub,o_prod,o_div,o_modulo,o_power);
  
  initial
    begin
      a=4'b1000;
      b=4'b0011;
    end
    
  initial
     $monitor("a=%b, b=%b, o_add=%b, o_sub=%b, o_prod=%b, o_div=%b, o_modulo=%b, o_power=%b",a,b,o_add,o_sub,o_prod,o_div,o_modulo,o_power);
endmodule

module logical_op(a,b,o_Land,o_Lor,o_Anot);
  input [3:0]a,b;
  output [3:0]o_Land,o_Lor,o_Anot;
  
  assign o_Land = a&&b;
  assign o_Lor = a||b;
  assign o_Anot = a!=b;
  
endmodule

module logical_op_tb;
  reg [3:0]a,b;
  wire [3:0]o_Land,o_Lor,o_Anot;
  
  logical_op l1(a,b,o_Land,o_Lor,o_Anot);
  
  initial
    begin
      a=4'b1011;
      b=4'b1010;
    end
    
  initial
    $monitor("a=%b, b=%b, o_Land=%b, o_Lor=%b, o_Anot=%b",a,b,o_Land,o_Lor,o_Anot);
endmodule  
  
module reduction_op(a,o_and,o_or,o_nand,o_nor);
  input [3:0]a;
  output o_and,o_or,o_nand,o_nor;
  
  assign o_and = &a;
  assign o_or = |a;
  assign o_nand = ~&a;
  assign o_nor = ~|a;
  
endmodule

module reduction_op_tb;
  reg [3:0]a;
  wire o_and,o_or,o_nand,o_nor;
  
  reduction_op r1(a,o_and,o_or,o_nand,o_nor);
  
  initial
    a=4'b1011;
    
  initial
    $monitor("a=%b, o_and=%b, o_or=%b, o_nand=%b, o_nor=%b",a,o_and, o_or, o_nand, o_nor);
endmodule  