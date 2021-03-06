module HalfAdderOp(a,b,s,c);
  input a,b;
  output s,c;
  assign s = a^b;
  assign c = a&b;
endmodule

module HalfAdderOp_tb;
  reg a,b;
  wire s,c;
  HalfAdderOp h1(a,b,s,c);
  initial
  begin
    a=0;b=0;
    #50 a=0;b=1;
    #50 a=1;b=0;
    #50 a=1;b=1;
  end
  
  initial
  $monitor("a=%b, b=%b, s=%b, c=%b",a,b,s,c);
endmodule

module Decoder2to4Op(a,b,o0,o1,o2,o3);
  input a,b;
  output o0,o1,o2,o3;
  assign o0 = ~a&~b;
  assign o1 = ~a&b;
  assign o2 = a&~b;
  assign o3 = a&b;
endmodule

module Decoder2to4Op_tb;
  reg a,b;
  wire o0,o1,o2,o3;
  Decoder2to4Op d1(a,b,o0,o1,o2,o3);
  initial
  begin
     a=0;b=0;
    #50 a=0;b=1;
    #50 a=1;b=0;
    #50 a=1;b=1;
  end
  
  initial
  $monitor("a=%b, b=%b, o0=%b, o1=%b, o2=%b, o3=%b",a,b,o0,o1,o2,o3);
endmodule