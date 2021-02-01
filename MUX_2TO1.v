module MUX_2TO1(i0,i1,s,o);
  input i0,i1,s;
  output o;
  wire w1,w2,w3;
  
  not n1(w1,s);
  and a1(w2,w1,i0);
  and a2(w3,s,i1);
  or o1(o,w2,w3);
endmodule

module mux_2to1_tb;
  reg i0,i1,s;
  wire o;
  MUX_2TO1 m1(i0,i1,s,o);
  initial
    begin
      i0=1;
      i1=0;
      
       s=0;
       #50 s=1;
   end
   
   initial
   $monitor("Time=%d, i0=%d, i1=%d, s=%d, o=%d",$time,i0,i1,s,o);
 endmodule