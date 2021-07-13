/*
Muc dich: tim so lon nhat trong 2 so
*/
module max_value #(parameter data_width = 32)(
	input [data_width - 1:0] In1, In2,
	output[data_width - 1:0] max_value
);

	assign max_value = (In1 > In2) ? In1 : In2;
endmodule