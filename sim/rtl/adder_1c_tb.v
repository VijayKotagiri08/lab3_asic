// Code your testbench here
// or browse Examples
module top();
  
  reg [3:0]a,b;
  reg cin;
  wire [3:0]sum;
  wire carry;
 integer i;

  
  adder_1c u1(a,b,cin, sum, carry);
  
  initial
    begin
      for(i=0; i<512; i=i+1) begin
          {a,b,cin}=i;
#5;
            
          $display("a=%b, b=%b, cin=%b, sum =%b, carry= %b", a,b,cin,sum,carry);
          end
       
    end
endmodule
