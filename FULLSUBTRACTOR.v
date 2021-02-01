module FULLSUBTRACTOR(a,b,c,diff,bor);
  input a,b,c;
  output diff,bor;
  
  wire w1;
  
  xor x1(diff,a,b,c);
  not n1(w1,a);
  and a1(w2,w1,b);
  and a2(w3,w1,c);
  and a3(w4,b,c);
  or o1(bor,w2,w3,w4);
endmodule

module fullsubtractor_tb;
  reg x,y,cin;
  wire diff,bor;
  FULLSUBTRACTOR f1(x,y,cin,diff,bor);
  initial
    begin
       x=0; y=0; cin=0;
     #50  x=0; y=0; cin=1;
     #50  x=0; y=1; cin=0;
     #50  x=0; y=1; cin=1;
     #50  x=1; y=0; cin=0;
     #50  x=1; y=0; cin=1;
     #50  x=1; y=1; cin=0;
     #50  x=1; y=1; cin=1;
     
   end
   
   
  initial
   $monitor("Time:%d, Value of x = %b, Value of y = %o, Value of cin = %b, Value of diff=%d,Value of bor=%d", $time,x,y,cin,diff,bor);
 endmodule