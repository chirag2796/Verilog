module MUX_4TO1(i0,i1,i2,i3,s0,s1,o);
  input i0,i1,i2,i3,s0,s1;
  output o;
  wire w1,w2,w3,w4,w5,w6;
  
  not n1(w1,s0);
  not n2(w2,s1);
  and a1(w3,w1,w2,i0);
  and a2(w4,w2,s0,i1);
  and a3(w5,s1,w1,i2);
  and a4(w6,s1,s0,i3);
  or o1(o,w3,w4,w5,w6);
endmodule

module mux_4to1_tb;
  reg i0,i1,i2,i3,s0,s1;
  wire o;
  MUX_4TO1 m1(i0,i1,i2,i3,s0,s1,o);
  initial
    begin
      i0=1;
      i1=0;
      i2=1;
      i3=0;
      
       s1=0; s0=0;
     #50  s1=0; s0=1;
     #50  s1=1; s0=0;
     #50 s1=1; s0=1;
   end
   
   initial
   $monitor("Time=%d, i0=%d, i1=%d, i2=%d, i3=%d, s1=%d, s0=%d, o=%d",$time,i0,i1,i2,i3,s1,s0,o);
 endmodule
