module HALFSUBTRACTOR(a,b,d,bor);
  input a,b;
  output d,bor;
  wire w1;
  
  XOR x1(a,b,d);
  NOT n1(a,w1);
  AND a1(w1,b,bor);
endmodule

module halfsubtractor_tb;
  reg x,y;
  wire diff,bor;
  HALFSUBTRACTOR h1(x,y,diff,bor);
  initial
    begin
       x=0; y=0;
     #50  x=0; y=1;
     #50  x=1; y=0;
     #50 x=1; y=1;
   end
   
   
  initial
   $monitor("Time:%d, Value of x = %b, Value of y = %o, Value of diff = %b, Value of bor=%d", $time,x,y,diff,bor);
 endmodule