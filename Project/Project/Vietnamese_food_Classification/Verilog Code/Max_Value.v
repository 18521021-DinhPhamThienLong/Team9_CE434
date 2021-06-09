module Max_Value #(parameter data_width = 32)(max_value, In1, In2);
	input [data_width - 1:0] In1, In2;
	output reg [data_width - 1:0] max_value;

	always @(In1, In2) begin
		if(In1 > In2) max_value = In1;
		else max_value = In2;
	end
endmodule
