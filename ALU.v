`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:0BUS_OP:30 08/22/2014 
// Design Name: 
// Module Name:    ALU 
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
`define BUS_DAT 8 				//ancho del bus de datos 
`define BUS_DAT_MSB `BUS_DAT-1 	//ancho del bus de datos MENOS UNO
`define BUS_OP 6 				//cantidad de bits de operaciones
`define BUS_OP_MSB `BUS_OP-1 	//cantidad MENOS UNO de bits de operaciones
module alu(a,b,op,rdo,carry,zero); 
//module alu(a,b,cin,alu,carry,zero,op);
	input [`BUS_DAT_MSB:0] a,b; 
	//input cin ; 
	output [`BUS_DAT_MSB:0] rdo; 
	output carry; 
	output zero ; 
	input [`BUS_OP_MSB:0] op ; 
	wire [`BUS_DAT_MSB+1:0] resultado;

	assign resultado = funcion_alu(a,b,op); 
	//assign result = funcion_alu(a,b,cin,op); 
	assign rdo = resultado[`BUS_DAT_MSB:0]; 
	assign carry = resultado[8] ; 
	assign zero = bandera_Z(resultado) ; 

function [8:0] funcion_alu; 
	input [`BUS_DAT_MSB:0] a,b ; 
	//input cin ; 
	input [`BUS_OP_MSB:0] op ; 
	case ( op ) 
		`BUS_OP'b100000: funcion_alu = a + b;
		`BUS_OP'b100010: funcion_alu = a - b;
		`BUS_OP'b100100: funcion_alu = a & b;
		`BUS_OP'b100101: funcion_alu = a | b;
		`BUS_OP'b100110: funcion_alu = a ^ b;
		`BUS_OP'b000011: funcion_alu = $signed(a) >>> 1;
		`BUS_OP'b000010: funcion_alu = a >> 1;
		`BUS_OP'b100111: funcion_alu = ~(a | b);
		default : begin 
			funcion_alu=`BUS_DAT+1'b000000000; 
			$display("Operacion Ilegal Detectada!!"); 
		end
	endcase
endfunction

function bandera_Z ; 
	input [`BUS_DAT_MSB+1:0] a8 ; 
	begin 
	bandera_Z = ~(a8[0]|a8[1]|a8[2]|a8[3]|a8[4]|a8[5]|a8[6]|a8[7]) ; // si todos los bits del rdo son ceros entonces pone la bandera en 1
	end 
endfunction 

endmodule