module XOR(a,b,o);
  output o;
  input a,b;
  
  xor o1(o,a,b);
endmodule

module xor_tb;
  reg x,y;
  wire z;
  XOR x1(x,y,z);
  initial
    begin
       x=0; y=0;
     #50  x=0; y=1;
     #50  x=1; y=0;
     #50 x=1; y=1;
   end
   
   initial
   $monitor("Time=%d, x=%d, y=%d, z=%d",$time,x,y,z);
 endmodule