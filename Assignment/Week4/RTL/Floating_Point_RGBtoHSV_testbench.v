`timescale 1ns/1ps
module Floating_Point_RGBtoHSV_testbench;  
    reg clk, data_val_in, rst;
    reg[31:0] R, G, B;
    wire [31:0] H, S, V;
    wire data_val_out; 
    integer f_id, f1_id;
    initial begin  
	f1_id = $fopen("/home/thienlong/CE434/Assignment/Week4/output/rgb.txt", "r");
	f_id = $fopen("/home/thienlong/CE434/Assignment/Week4/output/hsv.txt","w");
	data_val_in = 1;
	while (! $feof(f1_id))
	begin
		clk = 0;
		rst = 0;
		$fscanf(f1_id, "%b\n%b\n%b\n", R, G, B);
		#10 clk = 1;
		#10
		begin
			$fwrite(f_id, "%b\n%b\n%b\n", H, S, V);
		end
	end

	$fclose(f_id);
	$fclose(f1_id);
	#10
	$finish;
    end 
    Floating_Point_RGBtoHSV convert(H, S, V, data_val_out, R, G, B, data_val_in, clk, rst);
endmodule