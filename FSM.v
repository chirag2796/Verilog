module seq_det(det,A,clk,rst);
  input A,clk,rst;
  output reg det;
  reg [1:0]ps,ns;
  
  parameter A1=0;
  parameter B=1;
  parameter C=2;
  parameter D=3;
  
  always @(A,ps)
    begin
      det=0;
      case(ps)
    
        A1: ns=A?B:A1;
        B: ns=A?C:A1;
        C: ns=A?C:D;
        D: ns=A?B:A1;
      endcase
    end
    
  always @(posedge clk)
   begin
  if(rst)
    ps<=A1;
  else
    ps<=ns;
  end
    
  always #10 @(A,ps)
  if(ps==D && A==1)
    det=1;
  else
    det=0;
    
  endmodule
  
  module seq_det_tb;
    reg A,clk,rst;
    wire det;
    
    seq_det s1(det,A,clk,rst);
    
    always
    begin
     #10 clk=0;
     #10 clk=1;
    end
   
    initial
    begin
      rst=1;
      #30 rst=0;
    end
    
    initial
    begin
     // A=1;
      #40 A=1;
      #20 A=1;
      #20 A=0;
      #20 A=1;
    end
    
    initial
    $monitor("Clk=%b,A=%b,Det=%b",clk,A,det);
  endmodule