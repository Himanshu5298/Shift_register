`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   
// Design Name:   rightshiftregister
// Module Name:   /home/ise/Shiftregister/rightshiftregister_out.v
// Project Name:  Shiftregister
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rightshiftregister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rightshiftregister_out;

	// Inputs
	reg clock;
	reg clear;
	reg A;

	// Outputs
	wire [7:0]out;
	

	// Instantiate the Unit Under Test (UUT)
	rightshiftregister uut (
		.clock(clock), 
		.clear(clear), 
		.A(A), 
		.out(out)
	);

	initial begin
		clock =1'b0;
		repeat (20) begin
		#50 clock =~clock;
		end
	end
 
	initial begin
	clear =1;
	A=0;
	#50 clear =0;
	#100 A=1;
	clear =1; // changed here
	#99 A=0;
	

	
	end
endmodule

