module functions();
function [7:0]myfunction;
  input [3:0]a,b,c,d;
  begin
    myfunction = ((a+b)+(c-d));
end
endfunction

function [31:0]factorial;
  input [3:0]operand;
  reg [3:0]index;
  begin
    if(operand==0)
      factorial=1;
    else
      begin
      factorial=operand?1:0;
      for(index=2;index<=operand;index=index+1)
        factorial=index*factorial;
      end
    end
endfunction

function [15:0]mult;
  input [7:0]a,b;
  reg [15:0]r;
  integer i;
  begin
    if(a[0]==1) r=b;
      else r=0;
    for(i=1;i<8;i=i+1)
      begin
        if(a[i]==1)
          begin
          r=r+(b<<i);
         
          end
      end
    mult=r;
    end
endfunction

/*
function [15:0]adder_out;
  input [15:0]mult_out, q_out;
  */

task convert;
  input [7:0]temp_in;
  output [7:0]temp_out;
  begin
    temp_out = (9/5)*(temp_in+32);
  end
endtask  
          
endmodule
