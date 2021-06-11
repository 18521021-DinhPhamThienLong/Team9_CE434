module tb_matrix_multiplier();
  parameter In_W=32,In_D_Add_W=4,In_Items=6,Timeperiod=10;
  
  reg clk,rst,clr,en_wr,en_rd,wr,en_MAC,en_MAC_out;
  reg signed [In_W-1:0] din_r,din_c;
  reg [In_D_Add_W-1:0] addr_comm;
  wire signed [((2*In_W)+2)-1:0] y;
  
  matrix_multiplier #(In_W,In_D_Add_W,In_Items,Timeperiod) inst
  (
  .clk(clk),
  .rst(rst),
  .clr(clr),
  .ena_r(en_wr),
  .ena_c(en_wr),
  .enb_r(en_rd),
  .enb_c(en_rd),
  .wea_r(wr),
  .wea_c(wr),
  .din_r(din_r),
  .din_c(din_c),
  .addra_r(addr_comm),
  .addrb_r(addr_comm),
  .addra_c(addr_comm),
  .addrb_c(addr_comm),
  .en_MAC(en_MAC),
  .en_MAC_out(en_MAC_out),
  .y(y)
  );
  
  integer i,j;
  initial begin
    clk = 1'b1;
    rst = 1'b0;
    clr = 1'b0;
    en_MAC = 1'b1;
    en_MAC_out = 1'b1;
    
    
    #10 rst = 1'b1;
    en_wr = 1'b1;
    wr = 1'b1;
    for(i = 0;i < 16;i = i + 1)
    begin
      #10
      addr_comm = i;
      din_r = $random%20;
      din_c = $random%20;
    end
    
    rst = 1'b0;
    en_wr = 1'b0;
    en_rd = 1'b1;
    wr = 1'b0;
    addr_comm = 'd0;
  
    
    for(j = 1;j < 16;j = j + 1)
    begin
      #10
      if(!rst) rst = 1'b1;
      addr_comm = j;
    end
    
    #500 $stop;
  end
  
  always #5 clk = !clk;
  
endmodule
