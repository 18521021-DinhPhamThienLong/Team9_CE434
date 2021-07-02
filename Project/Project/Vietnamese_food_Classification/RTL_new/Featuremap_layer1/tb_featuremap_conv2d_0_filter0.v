`timescale 1ns/1ps
module tb_featuremap_conv2d_0_filter0();
  
  parameter DATA_WIDTH = 32; 
  reg       [DATA_WIDTH*3-1:0] data_in;
  reg                          clk, rst, data_fifo_wren;
  wire      [DATA_WIDTH-1:0] data_out;
  wire                       valid_out;
  

  parameter WIDTH = 32;
  parameter t = 10;
  localparam DIM = (WIDTH)*(WIDTH);
  
  always @(*) 
      #(t/2) clk <= ~clk;
      
    featuremap_conv2d_0_filter0 dut(clk, rst, data_in, data_fifo_wren, data_out, valid_out);  
  
    reg [95:0] rom[0:DIM-1];
    initial begin
      $readmemb("D:/IC_DESIGN1/Nhom_9/Result/img_txt/img.txt", rom);
    end
     // Output ram
    reg  [31:0]             out_ram0[0:DIM-1];
    wire [31:0]             din0;
    reg  [$clog2(DIM)-1:0]  addr;


    always @ (posedge clk) begin
        if (valid_out)
            out_ram0[addr] <= din0;
    end

    always @ (posedge clk or posedge rst) begin
        if (rst)
            addr <= 0;
        else if (valid_out)
            addr <= (addr == (DIM - 1)) ? 0 : (addr + 1);
    end

    assign din0 = data_out;

    integer i;
    initial begin
        clk <= 0;
        rst <= 1;
        data_fifo_wren <= 0;
        #t;
        rst <= 0;
        #5;
        for (i = 0; i < DIM; i = i + 1) begin
                data_in <= rom[i];
                data_fifo_wren <= 1'b1;
                #t;
        end
        data_fifo_wren <= 1'b0;
        #(t*1000);
        
        $writememb("banh_mi.txt", out_ram0);
        $stop;
    end
endmodule