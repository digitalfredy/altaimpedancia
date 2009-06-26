module TestBench;
   reg [2:0] Input;
   wire      S, Cout;

	FA FA_1(Input[1], Input[2], Input[0], S, Cout);

	initial begin
		Input = 000;


		#1 Input[1] <= 1;
		   Input[2] <= 0;
		   Input[0] <= 0;
	        #1 Input[1] <= 0;
		   Input[2] <= 0;
		   Input[0] <= 1;
	end

	initial begin
		$dumpfile ("fa.vcd");
		$dumpvars;
	end

endmodule // TestBench

