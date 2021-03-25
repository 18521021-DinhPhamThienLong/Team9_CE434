module rgbtohsv(
    input [7:0] r,
    input [7:0] g,
    input [7:0] b,
    input data_val_in,
    input clk,
    input rst,
    output reg [8:0] h,
    output reg [7:0] s,
    output reg [7:0] v,
    output reg data_val_out
    );

    reg [7:0]cmax;
	reg [7:0]cmin;
	reg [7:0]diff;

	always @(posedge clk)
	begin
		if (rst)
			begin
				cmax = 8'd0;
				cmin = 8'd0;
				diff = 8'd0;
				data_val_out = 0;
			end
		else
		    begin
				if(data_val_in == 1)begin	
					cmax = (r >= g) ? r : g;
					cmax = (b >= cmax) ? b : cmax;
					cmax = (g >= cmax) ? g : cmax;
				
					cmin = (r <= g) ? r : g;
					cmin = (b <= cmin) ? b : cmin;
					cmin = (g <= cmin) ? g : cmin;
					diff = cmax - cmin;
			
					if (cmax == cmin)
						h = 8'd0; 
					else if (cmax == r)
						h = (g - b) * 60 / diff + ((g < b) ? 8'd360 : 8'd0) ;
					else if (cmax == g)
						h = (b - r) * 60 / diff + 8'd120;
					else if (cmax == b)
						h = (r - g) * 60 / diff + 8'd240;
			
					s = (cmax == 0) ? 8'd0 : diff * 100 / cmax;
				
					v = cmax * 100 / 255;

					data_val_out = 1;
				end
				else begin
					h = 8'd0;
					s = 8'd0;
					v = 8'd0;
					data_val_out = 0;
				end
			end
	end
endmodule
