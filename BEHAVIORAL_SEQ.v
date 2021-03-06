module DLatchWithoutResetEnable(q,q_bar,d,clk);
  output reg q,q_bar;
  input d,clk;
  
  
  always @(clk,d)
  
    if(clk) begin
      q=d;
      q_bar=~d;
    end
 
endmodule

module DLatchWithoutResetEnable_tb;
  reg d,clk;
  wire q,q_bar;
  
  DLatchWithoutResetEnable d1(q,q_bar,d,clk);
  
  initial clk=0;
  always #10 clk=~clk;
  
  always
  begin
    #20 d=0;
    #20 d=1;
  end
endmodule

module DLatchWithReset(q,q_bar,d,reset);
  output reg q,q_bar;
  input d,reset;
  wire clk;
  
  ClkGen1 c1(clk);
  
  always @(clk,d,reset)
  
  if(reset)
     begin
      q=0;
      q_bar=1;
    end
  else
    begin
    if(clk) begin
      q=d;
      q_bar=~d;
    end
    else
      begin
      q=q;
      q_bar=q_bar;
      end
    end
 // end      
endmodule

module DLatchWithReset_tb;
  reg d,reset;
  wire q, q_bar;
  
  DLatchWithReset d1(q,q_bar,d,reset);
  
  initial
  begin
    d=0;
    //q=0;
    reset=0;
  end
  
always
  begin
  #20 d=0;
  #20 d=1;
end

always
  begin
    #30 reset=0;
    #15 reset=1;
  end
endmodule
  
module DLatchWithEnable(q,q_bar,d,enable);
  output reg q,q_bar;
  input d,enable;
  wire clk;
  
  ClkGen1 c1(clk);
  
  always @(clk,d,enable)
  
  if(!enable)
     begin
      q=q;
      q_bar=q_bar;
    end
  else
    begin
    if(clk) begin
      q=d;
      q_bar=~d;
    end
    else
      begin
      q=q;
      q_bar=q_bar;
      end
    end
     
endmodule

module DLatchWithEnable_tb;
  reg d,enable;
  wire q, q_bar;
  
  DLatchWithEnable e1(q,q_bar,d,enable);
  
  initial
  begin
    d=0;
    enable=1;
  end
  
always
  begin
  #20 d=0;
  #20 d=1;
end

always
  begin
    #40 enable=1;
    #15 enable=0;
  end
endmodule

module DLatchWithResetEnable(q,q_bar,d);
  output reg q,q_bar;
  input d;
  wire clk,reset,enable;
  
  ClkGen1 c1(clk);
  RstGen r1(reset);
  EnbGen e1(enable);
  
  always @(d,clk,reset,enable)
    if(enable)
      begin
        if(reset)
          begin
            q=0;
            q_bar=1;
          end
        else
          begin
            q=d;
            q_bar=~d;
          end
      end
endmodule 

module DLatchWithResetEnable_tb;
  reg d;
  wire q,q_bar;
  
  DLatchWithResetEnable re1(q,q_bar,d);
  
  initial
    d=0;
    
  always
    begin
      #20 d=0;
      #20 d=1;
    end
endmodule

module DFlipFlopWithoutResetEnable(q,q_bar,d);
  output reg q,q_bar;
  input d;
  wire clk;
  
  ClkGen1 c1(clk);
  
  initial begin
    q=0;q_bar=1;
  end
  
  always @(posedge clk)
  
    begin
      q=d;
      q_bar=~d;
    end
 
endmodule

module DFlipFlopWithoutResetEnable_tb;
  reg d;
  wire q,q_bar;
  
  DFlipFlopWithoutResetEnable d1(q,q_bar,d);
  
  initial d=0;
  
  always
  begin
    #20 d=0;
    #20 d=1;
  end
endmodule

module DFlipFlopWithReset(q,q_bar,d);
  output reg q,q_bar;
  input d;
  wire clk,reset;
  
  ClkGen1 c1(clk);
  RstGen r1(reset);
  
  initial
  begin q=0;q_bar=1; end
    
  always @(posedge clk,posedge reset)
    if(reset)
      begin
        q=0;
        q_bar=1;
      end
    else
      begin
        q=d;
        q_bar=~d;
      end
endmodule

module DFlipFlopWithReset_tb;
  reg d;
  wire q,q_bar;
  
  DFlipFlopWithReset d1(q,q_bar,d);
  
  initial d=0;
  
  always
  begin
    #20 d=0;        
    #20 d=1;
  end
endmodule 

module DFlipFlopWithEnable(q,q_bar,d);
  output reg q,q_bar;
  input d;
  wire clk,enable;
  
  ClkGen1 c1(clk);
  EnbGen e1(enable);
  
  initial begin q=0; q_bar=1; end
    
  always @(posedge clk)
      if(enable)
        begin
          q=d;
          q_bar=~d;
        end
endmodule

module DFlipFlopWithEnable_tb;
  reg d;
  wire q,q_bar;
  
  DFlipFlopWithEnable d1(q,q_bar,d);
  
  initial d=0;
  
  always
    begin
      #20 d=0;
      #20 d=1;
    end
  endmodule
  
module DFlipFlopWithResetEnable(q,q_bar,d);
  output reg q,q_bar;
  input d;
  wire clk,reset,enable;
  
  ClkGen1 c1(clk);
  RstGen r1(reset);
  EnbGen e1(enable);
  
  initial begin q=0;q_bar=1; end
  
  always @(posedge clk, posedge reset)
    if(enable)
      begin
        if(reset)
          begin
            q=0;
            q_bar=1;
          end
        else
          begin
            q=d;
            q_bar=~d;
          end
      end
endmodule 

module DFlipFlopWithResetEnable_tb;
  reg d;
  wire q,q_bar;
  
  DFlipFlopWithResetEnable d1(q,q_bar,d);
  
  initial
    d=0;
    
  always
    begin
      #20 d=0;
      #20 d=1;
    end
 endmodule
 
module Comparator_1Bit(c,a,b);
   output reg c;
   input a,b;
   
   always @(a,b)
   if(a==b)
     c=1'b1;
   else
     c=1'b0;
endmodule

module Comparator_1Bit_tb;
  reg a,b;
  wire c;
  
  Comparator_1Bit c1(c,a,b);
  
  initial
  begin
   a=0; b=0;
   #15 a=1;
   #12 b=1;
   #22 a=0;
   #20 a=1;
   #22 b=0;
   #20 a=0;
 end
endmodule  

module UpCounter(out,reset);
  output reg [7:0]out;
  input reset;
  wire clk,enable;
  
  ClkGen1 c1(clk);
  EnbGen e1(enable);
  
  always @(posedge clk, posedge reset)
    if(reset)
     out=8'b0;
      
    else if(enable)
      out=out+1;
endmodule

module UpCounter_tb;
  reg reset;
  wire [7:0]out;
  
  UpCounter u1(out,reset);
  initial
  begin
  reset=1;
  #10 reset=0;
  #90 reset=1;
  #20 reset=0;  
end
 initial
 $monitor("reset=%b, out=%b",reset,out);
endmodule