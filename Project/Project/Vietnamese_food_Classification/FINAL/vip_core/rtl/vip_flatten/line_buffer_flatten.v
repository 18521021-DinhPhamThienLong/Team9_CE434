module line_buffer_flatten #(
  parameter DATA_WIDTH = 32,
  parameter WIDTH = 5
)(
  output reg[DATA_WIDTH-1:0] data_out,
  input  [DATA_WIDTH-1:0] data_in0,
                          data_in1, 
                          data_in2, 
                          data_in3, 
                          data_in4, 
                          data_in5, 
                          data_in6, 
                          data_in7, 
                          data_in8, 
                          data_in9, 
                          data_in10,
                          data_in11,
                          data_in12,
                          data_in13,
                          data_in14,
                          data_in15,
  input valid_in, clk, rst,
  output reg valid_out
);
  parameter DIN = WIDTH*WIDTH*16;
  reg [DATA_WIDTH-1:0] reg1[0:DIN];
  reg out_valid;

reg [DATA_WIDTH-1:0] i;
always @(posedge clk or posedge rst) 
    begin
        if(rst)begin
            reg1[i+i] <= 32'd0;
            reg1[i+1] <= 32'd0;
            reg1[i+2] <= 32'd0;
            reg1[i+3] <= 32'd0;
            reg1[i+4] <= 32'd0;
            reg1[i+5] <= 32'd0;
            reg1[i+6] <= 32'd0;
            reg1[i+7] <= 32'd0;
            reg1[i+8] <= 32'd0;
            reg1[i+9] <= 32'd0;
            reg1[i+10] <= 32'd0;
            reg1[i+11] <= 32'd0;
            reg1[i+12] <= 32'd0;
            reg1[i+13] <= 32'd0;
            reg1[i+14] <= 32'd0;
            reg1[i+15] <= 32'd0;
            out_valid <= 1'd0;
            i <= 32'b0;
        end
        else if (valid_in)begin
            reg1[i+0] <= data_in0;
            reg1[i+1] <= data_in1;
            reg1[i+2] <= data_in2;
            reg1[i+3] <= data_in3;
            reg1[i+4] <= data_in4;
            reg1[i+5] <= data_in5;
            reg1[i+6] <= data_in6;
            reg1[i+7] <= data_in7;
            reg1[i+8] <= data_in8;
            reg1[i+9] <= data_in9;
            reg1[i+10] <= data_in10;
            reg1[i+11] <= data_in11;
            reg1[i+12] <= data_in12;
            reg1[i+13] <= data_in13;
            reg1[i+14] <= data_in14;
            reg1[i+15] <= data_in15;
            out_valid <= valid_in;
            i <= i + 16;
        end
        else out_valid <= 1'd0;
    end        

  reg [31:0] j;
  always @(posedge clk or posedge rst) begin
      if (rst)begin
        j <= 32'b0;
        data_out <= 32'b0;
        valid_out <= 0;
      end
      else if (out_valid) begin
        data_out <= reg1[j];
        valid_out <= 1;
        j <= j + 1'b1; 
      end
      else
        valid_out <= 0; 
  end 
endmodule