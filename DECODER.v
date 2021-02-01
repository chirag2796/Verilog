module DECODER(a,b,o1,o2,o3,o4);
  input a,b;
  output o1,o2,o3,o4;
  wire w1,w2,w3,w4;
  
  NOT n1(a,w1);
  NOT n2(b,w2);
 // NOT n3(w1,w3);
//  NOT n4(w2,w4);
  
  and a11(o1,w1,w2);
  and a12(o2,w1,b);
  and a13(o3,a,w2);
  and a14(o4,a,b);
  
  
endmodule

module decoder_tb;
  reg x,y;
  wire o0,o1,o2,o3;
  DECODER d1(x,y,o0,o1,o2,o3);
  initial
    begin
       x=0; y=0;
     #50  x=0; y=1;
     #50  x=1; y=0;
     #50 x=1; y=1;
   end
   
   initial
   $monitor("Time=%d, x=%d, y=%d, o0=%d, o1=%d, o2=%d, o3=%d",$time,x,y,o0,o1,o2,o3);
 endmodule