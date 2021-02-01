module FULLADDER_USING_HALFADDER(a,b,cin,s,cout);
  input a,b,cin;
  output s,cout;
  
  wire w1,w2,w3;
  
  HALFADDER h1(a,b,w1,w2);
  HALFADDER h2(w1,cin,s,w3);
  
  OR o1(w2,w3,cout);

endmodule

module fulladder_using_halfadder_tb;
  reg x,y,cin;
  wire s,cout;
  FULLADDER_USING_HALFADDER f1(x,y,cin,s,cout);
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