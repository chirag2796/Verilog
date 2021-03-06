module AND(a,b,o);
  output o;
  input a,b;
  
  and a1(o,a,b);  //positional mapping
endmodule

module and_tb;
  reg x,y;
  wire z;
  AND a11(x,y,z);
  initial
    begin
         x=0; y=0;
     #2  x=0; y=1;
     #5  x=1; y=0;
     #10 x=1; y=1;
     
   end
   
   initial
    $monitor("Time:%d, Value of x = %b, Value of y = %o, Value of z = %b", $time,x,y,z);
 endmodule