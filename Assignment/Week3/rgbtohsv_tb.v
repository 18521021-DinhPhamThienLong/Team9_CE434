`timescale 1ns/1ps
module rgbtohsv_tb;
    reg [7:0] r;
    reg [7:0] g;
    reg [7:0] b;
    reg data_val_in;
    reg clk;
    reg rst;
    wire [8:0] h;
    wire [7:0] s;
    wire [7:0] v;
    wire data_val_out;
    integer fi, fj;

    initial begin
        fi = $fopen("/home/thienlong/CE434/Assignment/Week3/rgb.txt","r");
        fj = $fopen("/home/thienlong/CE434/Assignment/Week3/hsv.txt","w");   
        while(! $feof(fi))
        begin
            clk <= 0;
	        rst <= 0;
	        data_val_in <= 1;
            $fscanf(fi, "%d %d %d\n", r,g,b);
            #10
            clk <= 1;
            #10
            $fwrite(fj, "%d\n%d\n%d\n", h,s,v);
        end
        #10
        $fclose(fj);
        $fclose(fi);
        #10
        $finish;
    end 
    rgbtohsv r1(r,g,b,data_val_in,clk,rst,h,s,v,data_val_out);
endmodule