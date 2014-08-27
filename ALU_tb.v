`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:13:04 08/27/2014
// Design Name:   alu
// Module Name:   /home/steve07-ultra/Proyectos_ISE/TP1_ALU/ALU_tb.v
// Project Name:  TP1_ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_tb;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [5:0] op;

	// Outputs
	wire [7:0] rdo;
	wire carry;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	alu #(8,6) uut(
		.a(a), 
		.b(b), 
		.op(op), 
		.rdo(rdo), 
		.carry(carry), 
		.zero(zero)
	);

	initial begin
		a = 0;
		b = 0;
		op = 0 ;
		// Wait 100 ns for global reset to finish
		#20;

//-------ADD-----------------------------//
		a = 250;
		b = 20;
		op = 6'b100000 ;
		// Wait 100 ns for global reset to finish
		#20;
//-------SUB-----------------------------//
		a = 250;
		b = 20;
		op = 6'b100010 ;
		// Wait 100 ns for global reset to finish
		#20;
//-------SUB_zero-----------------------------//
		a = 250;
		b = 250;
		op = 6'b100010 ;
		// Wait 100 ns for global reset to finish
		#20;
//-------AND-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = 6'b100100 ;
		// Wait 100 ns for global reset to finish
		#20;		
//-------OR-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = 6'b100101 ;
		// Wait 100 ns for global reset to finish
		#20;		
//-------XOR-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = 6'b100110 ;
		// Wait 100 ns for global reset to finish
		#20;
//-------NOR-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = 6'b100111 ;
		// Wait 100 ns for global reset to finish
		#20;		
//-------SRA-----------------------------//
		a = 8'b11000000;
		b = 8'b00000011;
		op = 6'b000011 ;
		// Wait 100 ns for global reset to finish
		#20;		
//-------SRL-----------------------------//
		a = 8'b11000000;
		b = 8'b00000011;
		op = 6'b000010 ;
		// Wait 100 ns for global reset to finish
		#20;		
		// Add stimulus here

	end
      
endmodule

