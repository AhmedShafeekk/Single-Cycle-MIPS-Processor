`timescale 1ns / 1ps

module Instruction_Mem(IR,PC,clk);
	output reg [31:0] IR; //next Instruction to be executed 
	input [31:0] PC; //address of next intstruction to be executed
	input clk;
	
	reg [31:0] Inst_MEM [1023:0];
	always @(posedge clk)
		begin
			IR = Inst_MEM[PC];
		end
endmodule