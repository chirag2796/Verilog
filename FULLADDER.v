module FULLADDER(a,b,cin,s,cout);
  input a,b,cin;
  output s,cout;
  
  wire w1,w2,w3,w4,w5,w6,w7;
  
  XOR sum_1(a,b,w1);
  XOR sum(cin,w1,s);
  
  AND a11(a,b,w2);
  AND a12(b,cin,w3);
  AND a13(cin,a,w4); 
  //or o1(cout,w2,w3,w4);
OR o11(w2,w3,w5);
OR o12(w4,w5,cout);

endmodule
  
module fulladder_tb;
  reg x,y,cin;
  wire s,cout;
  FULLADDER h1(x,y,cin,s,cout);
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
   $monitor("Time:%d, Value of x = %b, Value of y = %o, Value of cin = %b, Value of s=%d,Value of cout=%d", $time,x,y,cin,s,cout);
 endmodule
