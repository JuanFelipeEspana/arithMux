module fullAdder4b
  (
   input wire cin,
   input wire[3:0] a, b,
   output wire[3:0] sum,
   output wire cout
   );
   wire [4:0]  carrys;
   genvar      i;

   assign carrys[0] = cin;
   generate
      for(i = 0; i < 4; i = i + 1) begin
	 fullAdder singleFullAdder (.a(a[i]),.b(b[i]),.cin(carrys[i]),.sum(sum[i]),.cout(carrys[i+1]));
      end
   endgenerate

   assign cout = carrys[4];
endmodule
   
	 
