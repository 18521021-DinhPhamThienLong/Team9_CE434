/*
Muc dich: neu input la so am thi xuat ra 0
*/
module ReLU #(parameter data_width = 32)(out_ReLU, data_in);
	input signed[data_width - 1:0] data_in;
	output[data_width - 1:0] out_ReLU;
	
	assign out_ReLU = data_in[data_width - 1] ? 'd0 : data_in;
	
endmodule

