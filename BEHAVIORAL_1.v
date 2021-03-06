module Bh_HalfAdder(a,b,s,c);
  output reg s,c;
  input a,b;
    always @(a or b)
    begin
      s=a^b;
      c=a&b;
    end
endmodule

module Bh_HalfAdder_tb;
  reg a,b;
  wire s,c;
  Bh_HalfAdder h1(a,b,s,c);
   
  always#10
    begin
      a=0;b=0;
      #10 a=0;b=1;
      #10 a=1;b=0;
      #10 a=1;b=1;
    end
endmodule

module Bh_FullAdder(a,b,cin,s,cout);
  input a,b,cin;
  output reg s,cout;
  
  always @(a,b,cin)
  begin
    s=a^b^cin;
    cout= ((a&b) + (b&cin) + (cin&a));
  end
endmodule

module Bh_FullAdder_tb;
  reg a,b,cin;
  wire s,cout;
  Bh_FullAdder f1(a,b,cin,s,cout);
  
  always 
  begin
    #10 a=0;b=0;cin=0;
    #10 a=0;b=0;cin=1;
    #10 a=0;b=1;cin=0;
    #10 a=0;b=1;cin=1;
    #10 a=1;b=0;cin=0;
    #10 a=1;b=0;cin=1;
    #10 a=1;b=1;cin=0;
    #10 a=1;b=1;cin=1;
  end
endmodule