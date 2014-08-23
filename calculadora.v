`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:05 08/22/2014 
// Design Name: 
// Module Name:    calculadora 
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
module calculadora(entrada,boton_a,boton_b,boton_op,rdo,carry,zero);
	input [7:0] entrada;
	input boton_a,boton_b,boton_op;
	output [7:0] rdo;
	output carry,zero;
	wire [7:0] a,b;
	wire [5:0] op;
	cargador inst_cargador(.entrada(entrada),
									.boton_a(boton_a),
									.boton_b(boton_b),
									.boton_op(boton_op),
									.a(a),
									.b(b),
									.op(op));
	alu inst_alu(.a(a),
					.b(b),
					.op(op),
					.rdo(rdo),
					.carry(carry),
					.zero(zero));
endmodule
