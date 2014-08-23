`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:06:30 08/22/2014 
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
module alu(a,b,op,rdo,carry,zero); 
//module alu(a,b,cin,alu,carry,zero,op);
	input [7:0] a,b; 
	//input cin ; 
	output [7:0] rdo; 
	output carry; 
	output zero ; 
	input [5:0] op ; 
	wire [8:0] resultado;

	assign resultado = funcion_alu(a,b,op); 
	//assign result = funcion_alu(a,b,cin,op); 
	assign rdo = resultado[7:0]; 
	assign carry = resultado[8] ; 
	assign zero = bandera_Z(resultado) ; 

function [8:0] funcion_alu; 
	input [7:0] a,b ; 
	//input cin ; 
	input [5:0] op ; 
	case ( op ) 
		6'b100000: funcion_alu = a + b;
		6'b100010: funcion_alu = a - b;
		6'b100100: funcion_alu = a & b;
		6'b100101: funcion_alu = a | b;
		6'b100110: funcion_alu = a ^ b;
		6'b000011: funcion_alu = $signed(a) >>> 1;
		6'b000010: funcion_alu = a >> 1;
		6'b100111: funcion_alu = ~(a | b);
		default : begin 
			funcion_alu=5'bxxxxx; 
			$display("Operacion Ilegal Detectada!!"); 
		end
	endcase
endfunction

function bandera_Z ; 
	input [8:0] a8 ; 
	begin 
	bandera_Z = ~(a8[0]|a8[1]|a8[2]|a8[3]|a8[4]|a8[5]|a8[6]|a8[7]) ; // si todos los bits del rdo son ceros entonces pone la bandera en 1
	end 
endfunction 

endmodule