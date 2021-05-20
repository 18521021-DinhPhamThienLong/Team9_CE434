module Max_Value(max_value, In1, In2);
	input [31:0] In1, In2;
	output reg [31:0] max_value;

	always @(In1, In2) begin
		if(In1 > In2) max_value = In1;
		else max_value = In2;
	end
endmodule
// so chu ky : 1