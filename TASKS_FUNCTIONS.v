 module FunctionCalling(a,b,c,d,f);
  input [3:0]a,b,c,d;
  output [7:0]f;
  `include "FUNCTIONS.v"
  
 functions f1();
   assign f = f1.myfunction(a,b,c,d);
  //assign f = (myfunction(a,b,c,d))?1:0;
  
endmodule

module FunctionCalling_tb;
  reg [3:0]a,b,c,d;
  wire [7:0]f;
  
  FunctionCalling f1(a,b,c,d,f);
  
  initial
  begin
    
    a=1;b=2;c=3;d=4;
    #10 a=1;b=0;c=0;d=0;
    #10 a=1;b=1;c=1;d=1;
  end
  
  initial
  $monitor("f=%d",f);
endmodule

module word_aligner(w_in,w_out);
  input [7:0]w_in;
  output [7:0]w_out;
  assign w_out = align(w_in);
  function [7:0]align;
    input [7:0]word;
    begin
      align=word;
      if(align!=0)
        while(align[7]==0)
        align=align<<1;
        end
      endfunction
endmodule        


module word_aligner_tb;
  reg [7:0]w_in;
  wire [7:0]w_out;
  
  word_aligner w1(w_in,w_out);
  
  initial
  begin
    w_in=8'b00001000;
   #10 w_in=8'b01101000;
   #10 w_in=0;
   #10 w_in=1;
   #10 w_in=23;
 end
 
 initial
  $monitor("w_in=%b, w_out=%b", w_in,w_out);
endmodule

module Factorial(n, res);
  input [3:0]n;
  output [31:0]res;
  
  `include "FUNCTIONS.v"
  functions f1();
    
  assign res = f1.factorial(n);
endmodule

module Factorial_tb;
  reg [3:0]n;
  wire [31:0]res;
    
  Factorial f1(n,res);
  
  initial
    begin
      n=5;
      #10 n=2;
      #10 n=8;
      #10 n=0;
    end
    
  initial
    $monitor("n=%d, fact=%d",n,res);
endmodule
    
module Multiply(a,b,ans);
  input [7:0]a,b;
  output [15:0]ans;
  
  `include "FUNCTIONS.v"
  functions f1();
    
  assign ans = f1.mult(a,b);
endmodule

module Multiply_tb;
  reg [7:0]a,b;
  wire [15:0]ans;
  
  Multiply m1(a,b,ans);
  
  initial
  begin
    a=2;b=3;
    #10 a=5; b=3;
    #10 a=6; b=7;
    #10 a=12; b=3;
    #10 a=13; b=7;
    #10 a=4; b=9;
  end
  
  initial
  $monitor("a=%d, b=%d, ans=%d",a,b,ans);
endmodule

module callingtask(temp_a, temp_b);
  input [7:0]temp_a;
  output reg [7:0]temp_b;
  
  `include "FUNCTIONS.v"
  functions f1();
  
  always@(temp_a)
  begin
    f1.convert(temp_a,temp_b);
  end
  /*
  always @(temp_c)
  begin
    f1.convert(temp_c,temp_d);
  end
*/
endmodule

module callingtask_tb;
  reg [7:0]temp_a;
  wire [7:0]temp_b;
  
  callingtask c1(temp_a, temp_b);
  
  initial
  begin
    temp_a= 3;
    //temp_c= 4;
  end
  
  initial
    $monitor("a=%f, b=%f",temp_a,temp_b);
endmodule
  
module bit_counter(data,count);
  input [7:0]data;
  output reg [3:0]count;
  
  always @(data) t(data,count);
  
  task t;
    input [7:0]a; output [3:0]c; reg [3:0]c; reg [7:0]tmp;
    begin c=0;tmp=a;
    while(tmp)
      begin
        c=c+tmp[0];
        tmp=tmp>>1;
      end  
    end
  endtask
endmodule

module bit_counter_tb;
  reg [7:0]data;
  wire [3:0]count;
  
  bit_counter b1(data, count);
  
  initial
  begin
    data=8'b01101101;
    #10 data=27;
  end
  
  initial
  $monitor("data=%b, count=%d",data,count);
endmodule