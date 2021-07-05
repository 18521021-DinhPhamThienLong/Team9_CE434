module line_buffer #(
  parameter DATA_WIDTH = 32,
  parameter WIDTH = 5
)(
  output [DATA_WIDTH-1:0] data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7, data_out8,
  input  [DATA_WIDTH-1:0] data_in,
  input            valid_in, clk, rst,
  output reg valid_out
);
  parameter DIN = WIDTH*2+3;
  reg [DATA_WIDTH-1:0] regs[0:DIN-1];

  genvar i;
  generate 
      for (i=0; i < DIN; i = i + 1)begin
          always @(posedge clk) begin
              if (valid_in)begin
                  if(i == 0)
                      regs[i] <= data_in;    
                  else
                      regs[i] <= regs[i-1];
              end
         end
     end
  endgenerate
  

  reg [7:0] k,j;
  always @(posedge clk or posedge rst)begin
      if(rst)begin
          k <= 8'b0;
          j <= 8'b0;
      end
      else if(valid_in)begin 
          if(k >= DIN)begin
              j <= j + 1'b1;
              if((j % WIDTH == (WIDTH-1))||(j % WIDTH == (WIDTH-2)))   // j % 7 == 6 || j % 7 == 5 => j = 13 || j = 12
                      valid_out <= 0; 
              else valid_out <= 1; 
          end 
          else begin 
              valid_out <= 0; 
              k <= k + 1'b1;
          end
      end 
      else  valid_out <= 0;   
  end     
      
          //Row 1
          assign data_out0 = regs[DIN-1];        //16
          assign data_out1 = regs[DIN-2];        //15
          assign data_out2 = regs[DIN-3];        //14
          //Row2
          assign data_out3 = regs[DIN-WIDTH-1];
          assign data_out4 = regs[DIN-WIDTH-2];
          assign data_out5 = regs[DIN-WIDTH-3];
          //Row3
          assign data_out6 = regs[DIN-2*WIDTH-1];
          assign data_out7 = regs[DIN-2*WIDTH-2];
          assign data_out8 = regs[DIN-2*WIDTH-3];
endmodule
