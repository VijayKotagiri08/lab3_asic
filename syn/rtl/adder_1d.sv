//Full adder in adder_1d

module adder_1d(a,b,cin, sum, carry);

  input [3:0]a;
  input [3:0]b;
  input cin;
  output reg [3:0]sum;
  output reg      carry;

always_comb 
begin 

  {carry,sum} = a + b + cin;

end
endmodule
