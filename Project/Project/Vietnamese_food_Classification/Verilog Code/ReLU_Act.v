/*
Muc dich: dua 1 tam anh voi kich thuoc R*C, tim pixel nao co gia tri am thi chuyen thanh gia tri 0
*/
module ReLU_Act #(parameter data_width = 32, R = 3, C = 3)(out_ReLU_Act, data_in, clk);
	input clk;
	input[(data_width*R*C) - 1: 0] data_in;
	output[(data_width*R*C) - 1: 0] out_ReLU_Act;
	
	// noi luu tru input
	wire[data_width - 1:0] reg_in[0 : R*C - 1];
	// noi luu tru output
	wire[data_width - 1:0] reg_out[0: R*C - 1];
	
	// nap tung gia tri pixel vao reg_in
	genvar i;
	generate
		for(i = 0; i < R*C; i = i + 1) begin
			assign reg_in[i] = data_in[data_width*(i + 1) - 1: data_width*i];
		end
	endgenerate

	// thuc thi ReLU va luu lai vao reg_out
	genvar j;
	generate
		for(j = 0; j < R*C; j = j + 1) begin
			ReLU #(data_width) DUT(.out_ReLU(reg_out[j]), .data_in(reg_in[j]), .clk(clk));
		end
	endgenerate
	
	genvar k;
	generate
		for(k = 0; k < R*C; k = k + 1) begin
			assign out_ReLU_Act[data_width*(k + 1) - 1: data_width*k] = reg_out[k];
		end
	endgenerate
endmodule

