module HALFADDER(a,b,s,c);
  input a,b;
  output s,c;
  
  XOR a11(a,b,s);
  AND a12(a,b,c);
  
endmodule

module halfadder_tb;
  reg x,y;
  wire s,c;
  HALFADDER h1(x,y,s,c);
  initial
    begin
       x=0; y=0;
     #50  x=0; y=1;
     #50  x=1; y=0;
     #50 x=1; y=1;
   end
   
   
  initial
   $monitor("Time:%d, Value of x = %b, Value of y = %o, Value of s = %b, Value of c=%d", $time,x,y,s,c);
 endmodule
  