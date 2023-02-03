//Full adder in adder_1c

module adder_1c(a,b,cin, sum, carry);


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

always_comb 
begin 

case({a, b, cin})

3'b000 : {sum,carry} = 2'b00 ; 
3'b001 : {sum,carry} = 2'b10 ; 
3'b010 : {sum,carry} = 2'b10 ; 
3'b011 : {sum,carry} = 2'b01 ; 
3'b100 : {sum,carry} = 2'b10 ; 
3'b101 : {sum,carry} = 2'b01 ; 
3'b110 : {sum,carry} = 2'b01 ; 
3'b111 : {sum,carry} = 2'b11 ; 
default : {sum,carry} = 2'b00 ;

endcase

end


endmodule
