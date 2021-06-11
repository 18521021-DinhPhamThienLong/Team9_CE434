module tb_conv();
  parameter In_d_W=32, R=3, C=3, In_Add_W=4, Timeperiod=10;
  reg clk,clk_en,rst,clr,en_wr,en_rd,wr,en_MAC,en_MAC_out;   //wr=1 (Write), wr=0 (Read)
  reg [(C*R*In_d_W)-1:0] A; //[71:0] A as 9*8=72
  reg [(C*R*In_d_W)-1:0] B; //[71:0] B as 9*8=72
  wire [((2*In_d_W)+2)-1:0] Y;
  reg signed [31:0] N[0:8],F [0:8];
  
  conv inst(
  .clk(clk),
  .clk_en(clk_en),
  .rst(rst),
  .clr(clr),
  .en_wr(en_wr),
  .en_rd(en_rd),
  .wr(wr),
  .en_MAC(en_MAC),
  .en_MAC_out(en_MAC_out),
  .A(A),
  .B(B),
  .Y(Y)
  );
  integer i,j;
  initial begin
    rst = 1;
    clr = 1;
    clk = 1;
    for(i = 0;i < 9;i = i + 1)
    begin
      N[i] = $random%20;
      F[i] = $random%20;
    end
    for (j = 0;j < 9; j = j + 1)
    begin
      A[(32*j)+:32] = N[j];
      B[(32*j)+:32] = F[j];
    end
    #10  // write
  	 clr = 0;
    clk_en = 1;
    en_wr = 1;
    en_rd = 0;
    wr = 1;
    en_MAC = 0;
    en_MAC_out = 0;
    
    
    
    
    #90
    en_wr = 0;
    en_rd = 1;
    wr = 0;
    #10
    en_MAC = 1;
    en_MAC_out = 1;
    
    #500 $stop;
  end
  
  always #5 clk = !clk;
  
endmodule
