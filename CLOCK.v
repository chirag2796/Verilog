module ClkGen();
  reg clk;
  initial clk=0;
  always #10 clk=~clk;
endmodule

module ClkGen1(clk);
  output reg clk;
  initial clk=0;
  always #10 clk=~clk;
endmodule

module RstGen(reset);
  output reg reset;
  initial reset=0;
  always 
  begin
  #35 reset=1;
  #15 reset=0;
  end
endmodule

module EnbGen(enable);
  output reg enable;
  initial enable=0;
  always 
  begin
  #15 enable=1;
  #45 enable=0;
  end
endmodule


module ClkForever(output reg clk);
  initial begin
    #5 clk=1;
    forever #50 clk=~clk;
    #10 clk=~clk;
  end
endmodule

/*
module AlwaysTest(a,b,o);
  input a,b;
  output reg o;
  //ClkGen a1(a);
 // ClkGen1 a2(b);
  //initial begin o=0;
  always@(a,b)
    o=a&b;
  endmodule
  
  
  module AlwaysTest_tb;
    reg a,b;
    wire o;
    always
    begin
    ClkGen a1(a);
  ClkGen1 a2(b);
    AlwaysTest t1(a,b,o);
    */ 