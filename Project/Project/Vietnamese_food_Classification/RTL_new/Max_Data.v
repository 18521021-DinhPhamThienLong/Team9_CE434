module Max_Data #(parameter data_width = 32)(max_data, valid_out, In1, In2, In3, In4, clk, reset, valid_in);
	input[data_width - 1:0] In1, In2, In3, In4;	
	input clk, reset, valid_in;
	output reg valid_out;
	output reg[data_width-1:0] max_data;
	
	reg valid_op;
	reg[data_width - 1:0] reg1, reg2;
	wire[data_width - 1:0] out_temp1, out_temp2, out_temp3;
	
	Max_Value #(data_width) m1(.max_value(out_temp1), .In1(In1), .In2(In2));
	Max_Value #(data_width) m2(.max_value(out_temp2), .In1(In3), .In2(In4));

	always @(posedge clk) begin
		if(reset) begin
			reg1 <= 'd0;
			reg2 <= 'd0;
			valid_op <= 'b0;
		end
		else if(valid_in) begin
			reg1 <= out_temp1;
			reg2 <= out_temp2;
			valid_op <= valid_in;
		end
		else valid_op <= 'b0;
	end

	Max_Value #(data_width) m3(.max_value(out_temp3), .In1(reg1), .In2(reg2));

	always @(posedge clk) begin
		if(reset) begin
			max_data <= 'd0;
			valid_out <= 'b0;
		end
		else if(valid_op) begin
			max_data <= out_temp3;
			valid_out <= valid_op;
		end
		else valid_out <= 'b0;
	end
