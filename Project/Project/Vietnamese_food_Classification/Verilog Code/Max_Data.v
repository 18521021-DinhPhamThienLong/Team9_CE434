/*
In: day so co do dai bang (data_width*R*C), với cu data_width bit tuong ung la 1 so
Muc dich: tim so lon nhat trong tap hop so duoc luu
*/
module Max_Data #(parameter data_width = 32, R = 3, C = 3)(max_data, In);
	input[data_width*R*C:0] In;	// tat ca gia tri pixel can xet, 1 pixel tuong ung 32 bit
	output[data_width-1:0] max_data;
	
	wire[data_width-1:0] reg_in[0:(R*C)-1];	// noi luu tru gia tri tung pixel dau vao
	wire[data_width-1:0] reg_out[0:(R*C)-1];	// noi luu tru gia tri tung pixel dau ra
	
	// tien hanh luu tru input
	genvar i;
	generate
		// chay vong for tu dau den pixel cuoi cung
		// 32bit la 1 pixel nen i = i + data_width
		for(i = 0; i <(data_width*R*C); i = i + data_width) begin
			// do buoc nhay i = data_width nen reg_in[i/data_width]
			assign reg_in[i/data_width] = In[i + data_width -1:i];	
		end 	
	endgenerate
	
	genvar j;
	generate
		assign reg_out[0] = reg_in[0]; 
		for(j = 0; j < (R*C) - 1; j = j + 1) begin
			Max_Value #(data_width) DUT(.max_value(reg_out[j+1]), .In1(reg_out[j]), .In2(reg_in[j+1]));
		end
		
		assign max_data = reg_out[(R*C) - 1];
	
	endgenerate
	
endmodule
