//Full adder in adder_1a

module adder_1a(a,b,cin, sum, carry);

  input [3:0]a;
  input [3:0]b;
  input cin;
  output reg [3:0]sum;
  output reg      carry;

 wire w1, w2, w3;
 // instantiating 4 1-bit full adders in Verilog
 FA u1(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .carry(w1));
 FA u2(.a(a[1]), .b(b[1]), .cin(w1), .sum(sum[1]), .carry(w2));
 FA u3(.a(a[2]), .b(b[2]), .cin(w2), .sum(sum[2]), .carry(w3));
 FA u4(.a(a[3]), .b(b[3]), .cin(w3), .sum(sum[3]), .carry(carry));


endmodule


module FA(a,b,cin, sum, carry);

input a, b, cin;
output reg sum, carry;


assign sum = a ^ b ^ cin;
assign carry = (a&b | b&cin | cin& a);

endmodule
