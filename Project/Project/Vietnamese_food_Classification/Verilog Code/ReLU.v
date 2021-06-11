/*
Muc dich: neu input la so am thi xuat ra 0
*/
module ReLU #(parameter data_width = 32)(out_ReLU, data_in, clk);
	input clk;
	input signed[data_width - 1:0] data_in;
	output reg[data_width - 1:0] out_ReLU;
	
	always @(posedge clk) begin
		if(data_in[data_width - 1])
			out_ReLU <= 'd0;
		else out_ReLU = data_in;
	end
endmodule

