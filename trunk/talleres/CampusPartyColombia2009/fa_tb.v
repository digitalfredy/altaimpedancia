module TestBench;
	reg   B1, B2, Cin;
	wire  S, Cout;

	FA FA_1(B1, B2, Cin, S, Cout);

	initial begin
		B1 = 0;
		B2 = 0;
		Cin = 0;

		#1 B1 <= 0;
		   B2 <= 0;
		   Cin <= 1;
		#1 B1 <= 0;
		   B2 <= 1;
		   Cin = 0;
		#1 B1 <= 0;
		   B2 <= 1;
		   Cin = 1;
		#1 B1 <= 1;
		   B2 <= 0;
		   Cin <= 0;
	end

	initial begin
		$dumpfile ("fa.vcd");
		$dumpvars;
	end

endmodule // TestBench

