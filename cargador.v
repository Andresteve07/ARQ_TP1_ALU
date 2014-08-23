`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:31:08 08/22/2014 
// Design Name: 
// Module Name:    cargador 
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
module cargador(entrada,boton_a,boton_b,boton_op,a,b,op);
	 
	 input [7:0] entrada;
	 input boton_a,boton_b,boton_op;
	 output reg [7:0] a,b;
	 output reg [5:0] op;
	 
//	 reg [7:0] a_val,b_val;
//	 reg [5:0] op_val;
//	 
//	 initial a_val = 8'b00000000;
//	 initial b_val = 8'b00000000;
//	 initial op_val = 6'b000000;
//	 
//	 assign a = a_val;
//	 assign b = b_val;
//	 assign op = op_val;
	 
	always @(boton_a or boton_b or boton_op or entrada)
		begin
			/*
			a = 8'b00000000;
			b = 8'b00000000;
			op = 6'b000000;
			*/
//			a = a;
//			b = b;
//			op = op;
			
			if(boton_a)
			begin
				a = entrada;
//				b = b;
//				op= op;
			end
			else if(boton_b)
				begin
//					a = a;
					b = entrada;
//					op = op;
				end
			else if(boton_op)
				begin
//					b = b;
//					a = a;
					op = entrada[5:0];
				end
//			else
//				begin
//					b = b;
//					a = a;
//					op = op;
//				end
		end
		
//	always @(boton_a, entrada)
//		begin
//			if(boton_a) 
//				begin
//					a = entrada;
//					b = b;
//					op = op;
//				end
//		end
//	always @(boton_b, entrada)
//		begin
//			if(boton_b) begin b = entrada; end
//		end
//	always @(boton_op, entrada)
//		begin
//			op = entrada; 
//		end

endmodule
