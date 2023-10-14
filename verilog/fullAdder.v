module fullAdder
  (
   input wire a, b, cin,
   output wire sum, cout
   );

   wire        parity;

   assign parity = a ^ b ^ cin;
   assign sum = (parity==1'b1) ? 1'b1 :
		1'b0;
   assign cout = ((parity & a & b & cin)|((~parity) & (a | b)))==1'b1 ? 1'b1 :
		 1'b0;
endmodule
   
