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
`define BUS 8 				//ancho del bus de datos 
`define BUS_MAX `BUS-1 	//ancho del bus de datos MENOS UNO
`define OP 6 				//cantidad de bits de operaciones
`define OP_MAX `OP-1 	//cantidad MENOS UNO de bits de operaciones
module calculadora(entrada,boton_a,boton_b,boton_op,rdo,carry,zero);
	input [`BUS_MAX:0] entrada;
	input boton_a,boton_b,boton_op;
	output [`BUS_MAX:0] rdo;
	output carry,zero;
	wire [`BUS_MAX:0] a,b;
	wire [`OP_MAX:0] op;
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
