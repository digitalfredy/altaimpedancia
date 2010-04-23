`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:20:59 07/10/2009 
// Design Name: 
// Module Name:    nombre 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
`define decimal
module nombre(
    input clk_in,
    input [2:0] freq,
    output clk_out
    );
	 
reg [31:0] clk_set;
reg [31:0] acc = 0;

always @ ( freq )
		case ( freq )
			3'b000: clk_set = 10440; // 261 hz
			3'b001: clk_set = 11760; // 294 hz
			3'b010: clk_set = 13160; // 329 hz
			3'b011: clk_set = 13960; // 349 hz
			3'b100: clk_set = 15680; // 392 hz
			3'b101: clk_set = 17600; // 440 hz
			3'b110: clk_set = 19720; // 493 hz
			3'b111: clk_set = 20920; // 523 hz
			//3'b111: clk_set = 40;
			//default: clk_set = 40;
		endcase

`ifdef decimal
	always @(posedge clk_in) begin
		if (clk_set < 1000000000)
			begin
				if (acc + clk_set < 1000000000) // determine normal or overflow acc increment
					acc = acc + clk_set;         // normal increment   
				else
					acc = (acc + clk_set) - 1000000000;  // overflow increment
			end
	end
	assign clk_out = (acc >= 500000000);
`endif

`ifdef binary
	always @(posedge clk_in)
		acc = acc + 1; 
	assign clk_out = acc[31];
`endif

endmodule
