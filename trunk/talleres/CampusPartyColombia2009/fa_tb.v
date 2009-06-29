module TestBench;
   reg [2:0] Input;
   wire      S, Cout;

   FA FA_Instancia1(Input[1], Input[2], Input[0], S, Cout);

   initial begin
      Input = 000;
   end

   initial begin
      repeat (8) begin
	 #1 Input <= Input+1;
      end
      
   end

   initial begin
      $dumpfile ("fa.vcd");
      $dumpvars;
   end

endmodule // TestBench

