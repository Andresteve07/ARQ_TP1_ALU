`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:26:35 08/25/2014
// Design Name:   calculadora
// Module Name:   /home/santi/Escritorio/ARQUITECTURA DE COMPUTADORAS/FPGA/TP1_ALU/ALU_tb.v
// Project Name:  TP1_ALU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: calculadora
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
	reg [7:0] entrada;
	reg boton_a;
	reg boton_b;
	reg boton_op;

	// Outputs
	wire [7:0] rdo;
	wire carry;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	calculadora uut (
		.entrada(entrada), 
		.boton_a(boton_a), 
		.boton_b(boton_b), 
		.boton_op(boton_op), 
		.rdo(rdo), 
		.carry(carry), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		entrada = 7;
		boton_a = 1;
		#20
		boton_a = 0;
		entrada = 5;
		boton_b = 1;
		#20
		boton_b = 0;
		entrada = 8'b00100000; //ADD
		boton_op = 1;

		// Wait 100 ns for global reset to finish
		#20;
        
		// Add stimulus here

	end
      
endmodule


