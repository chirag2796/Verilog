module OR(a,b,o);
  output o;
  input a,b;
  
  or o1(o,a,b);
endmodule
  
  module or_tb;
    reg x,y;
    wire z;
    OR o11(x,y,z);
    initial
      begin
         x=0; y=0;
     #50  x=0; y=1;
     #50  x=1; y=0;
     #50 x=1; y=1;
  end
  
  initial
   $monitor("Time:%d, Value of x = %b, Value of y = %o, Value of z = %b", $time,x,y,z);
    
endmodule
