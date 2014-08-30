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
`include "definiciones.vh"
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
		// Espera 20ns por un reset global o el final
		#20;

//-------ADD-----------------------------//
		a = 250;
		b = 20;
		op = `ADD ;
		// Espera 20ns por un reset global o el final
		#20;
//-------SUB-----------------------------//
		a = 250;
		b = 20;
		op = `SUB ;
		// Espera 20ns por un reset global o el final
		#20;
//-------SUB_zero-----------------------------//
		a = 250;
		b = 250;
		op = `SUB ;
		// Espera 20ns por un reset global o el final
		#20;
//-------AND-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = `AND ;
		// Espera 20ns por un reset global o el final
		#20;		
//-------OR-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = `OR ;
		// Espera 20ns por un reset global o el final
		#20;		
//-------XOR-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = `XOR ;
		// Espera 20ns por un reset global o el final
		#20;
//-------NOR-----------------------------//
		a = 8'b10101010;
		b = 8'b11110000;
		op = `NOR ;
		// Espera 20ns por un reset global o el final
		#20;		
//-------SRA-----------------------------//
		a = 8'b11000000;
		b = 8'b00000011;
		op = `SRA ;
		// Espera 20ns por un reset global o el final
		#20;		
//-------SRL-----------------------------//
		a = 8'b11000000;
		b = 8'b00000011;
		op = `SRL ;
		// Espera 20ns por un reset global o el final
		#20; 

	end
      
endmodule

