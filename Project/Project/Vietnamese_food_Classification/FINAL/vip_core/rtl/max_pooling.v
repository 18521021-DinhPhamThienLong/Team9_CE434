module max_pooling #(parameter data_width = 32, width = 112
)(
	input[data_width - 1:0] data_in,
	input valid_in, clk, reset,
	output[data_width - 1: 0] data_out,
	output valid_out
);
	wire[data_width - 1:0] data_out0, data_out1, data_out2, data_out3;
	wire valid_op;
	
	LineBuff #(.data_width(data_width), .width(width)) Buff(.data_out0(data_out0), .data_out1(data_out1), .data_out2(data_out2), .data_out3(data_out3), .valid_out(valid_op), .data_in(data_in), .clk(clk), .reset(reset), .valid_in(valid_in));

	max_data #(.data_width(data_width)) DUT(.max_data(data_out), .valid_out(valid_out), .In1(data_out0), .In2(data_out1), .In3(data_out2), .In4(data_out3), .clk(clk), .reset(reset), .valid_in(valid_op));
	
endmodule