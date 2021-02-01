//repeat
module RepeatCounter;
integer count;
initial begin
  count=0;
  repeat(128)
  begin
    $display("count=%d\n",count);
    count=count+1;
  end
end
endmodule

module RepeatMemory;
  reg [31:0]memory;
  integer w_address;
  
  initial 
  w_address = 0;
  
  initial
  begin
  repeat(32)
  begin
    memory[w_address] = 1;
    w_address = w_address+1;
  end
end
  
  initial
  #1 $display("memory=%b",memory);
endmodule

module while_example;
  reg [5:0]loc;
  reg [7:0]data;
  always @(data,loc)
    begin
      loc=0;
      if(data==0) begin
        loc=32;
      end else begin
        while(data[0]==0) begin
          loc=loc+1;
          data=data>>1;
        end
      end
end

initial begin
        #10 data = 8'b11;
        #10 data = 8'b100;
        #10 data = 8'b1000;
        #10 data = 8'b1000_0000;
        #10 data = 8'b0;
      //  #10 $finish;
      end
      
 initial
      $monitor("time=%d,loc=%d",$time,loc);
      
endmodule

module for_example;
  integer i;
  reg [7:0] ram[0:255];
   initial
  begin
    for(i=0;i<256;i=i+1) begin
      #10 $display("Address=%g Data=%b", i,ram[i]);
      ram[i]<=0;
      #10 $display("Address=%g Data=%b", i,ram[i]);
    end
  end
endmodule

module disable_example(flag,i);
  output reg [3:0]i;
  input [15:0]flag;
  
  always @(*) begin
    i=0;
    begin: block1
      while(i<16) begin
        if(flag[i]) begin
          $display("Encountered a 1 at bit number %d",i);
          disable block1;
        end
        i=i+1;
      end
    end
  end
endmodule

module disable_example_tb;
  reg [15:0]flag;
  wire [3:0]i;
  
  disable_example d1(flag,i);
  
  initial
  begin
    flag=1;
 //   flag=16'b0000000000000000;
    #10 flag=16'b0000000000100000;
    #10 flag=113;
    #10 flag=1430;
  end
endmodule

