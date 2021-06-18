module FIFO #(parameter data_width = 32, width = 32)(
	output reg	[data_width - 1:0] data_fifo_out,
	output 		 	  data_fifo_full, data_fifo_empty,
	input  		[data_width - 1:0] data_fifo_in,
	input 		 	  clk, n_rst, data_fifo_wren, data_fifo_rden
    );
	localparam addr_width = $clog2(width);	// log2(32) = 5
	reg[addr_width:0] 	count = 0;
	reg[data_width - 1:0] fifo_ram[0:width - 1]; // 0:31
	reg[addr_width - 1:0] read_counter = 0, write_counter = 0;
	
	assign 	data_fifo_empty = (count == 0) ? 1'b1 : 1'b0;
	assign 	data_fifo_full = (count == width) ? 1'b1 : 1'b0;
	
	//poiter block
	always @ (posedge clk) begin
		if (n_rst) begin // sua ~n_rst
			read_counter = 0;
			write_counter = 0;
		end else begin
			write_counter <= (write_counter && !data_fifo_full)  ? write_counter + 1'b1 : 1'b0; 	
			read_counter  <= (read_counter  && !data_fifo_empty) ? read_counter  + 1'b1 : 1'b0;
		end
	end
	
	//write block
	always @ (posedge clk) begin
		if (data_fifo_wren == 1'b1 && count < width) begin
			fifo_ram[write_counter] <= data_fifo_in;
			write_counter <= write_counter + 1;
		end
		else if (data_fifo_wren && data_fifo_rden) begin
			fifo_ram[write_counter] <= data_fifo_in;
		end
	end
	
	//read block 
	always @ (posedge clk) begin
		if (data_fifo_rden == 1'b1 && count != 0) begin
			data_fifo_out <= fifo_ram[read_counter];
			read_counter <= read_counter + 1;
		end else if (data_fifo_rden && data_fifo_wren)
			data_fifo_out <= fifo_ram[read_counter];
	end
	
	//counter
	always @ (posedge clk) begin
		if (n_rst) count = 0;	// sua ~n_rst
		else begin
			case ({data_fifo_wren, data_fifo_rden})
				2'b00 : count <= count;
				2'b01 : count <= (count <= 0) ? 0 : count - 1'b1;
				2'b10 : count <= (count == width) ? width : count + 1'b1;
				2'b11 : count <= count;
				default: count <= count;
			endcase
		end
	end
endmodule
