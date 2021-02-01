module NOT(a,o);
  output o;
  input a;
  
  not o1(o,a);
endmodule

module not_tb;
  reg x;
  wire z;
  NOT n1(x,z);
  initial
    begin
      x=0;
      #50 x=1;
    
      x=0;
      #50 x=1;
    end
    
    initial
    $monitor("Time:%d, x=%d, z=%d",$time,x,z);
  endmodule