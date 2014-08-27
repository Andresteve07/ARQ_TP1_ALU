`define BUS_DAT 8 				//ancho del bus de datos 
`define BUS_DAT_MSB `BUS_DAT-1 	//ancho del bus de datos MENOS UNO
`define BUS_OP 6 				//cantidad de bits de operaciones
`define BUS_OP_MSB `BUS_OP-1 	//cantidad MENOS UNO de bits de operaciones

`define ADD  `BUS_OP'b100000
`define SUB  `BUS_OP'b100010
`define AND  `BUS_OP'b100100
`define OR  `BUS_OP'b100101
`define XOR  `BUS_OP'b100110
`define SRA  `BUS_OP'b000011
`define SRL  `BUS_OP'b000010
`define NOR  `BUS_OP'b100111
