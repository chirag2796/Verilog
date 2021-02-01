module ParamCounter #(parameter n=4)(count,clk,rst);
  //localparam n=4;
  
  output reg [n-1:0]count;
  input clk,rst;
  
  always @(posedge clk) begin
    if(rst)
      count=0;
    else
      begin
        if(count==5)
          count=0;
        else
          count=count+1;
        end
    end
endmodule

module ParamCounter_tb;
  wire [c1.n-1:0] count;
  reg clk,rst;
  
 // defparam c1.n = 16;
  ParamCounter c1(count,clk,rst);
  initial clk=0;
  always #2 clk=~clk;
  initial
  begin
    rst=1;
    #4 rst=0;
  end
  
  initial
  $monitor("Reset=%b, Clock=%b, Count=%b",rst,clk,count);
endmodule