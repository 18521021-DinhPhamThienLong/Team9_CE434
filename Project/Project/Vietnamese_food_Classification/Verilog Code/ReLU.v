// ReLU is mux 2 to 1
module ReLU(out_ReLU, Din);
	input[31:0] Din;
	output[31:0] out_ReLU;
	
	assign out_ReLU = Din[31] ? 32'b0 : Din;  
	
endmodule
 // so chu ky : 1