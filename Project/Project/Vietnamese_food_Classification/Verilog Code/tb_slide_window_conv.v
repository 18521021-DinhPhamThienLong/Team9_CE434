module tb_slide_window_conv();
  parameter In_d_W=32, In_Add_W=4, R_N=3, C_N=3, R_F=3, C_F=3, P=1, S=1, Timeperiod=10;
  reg clk,clk_en,rst,clr,en_wr,en_rd,wr,en_MAC,en_MAC_out;
  reg [((C_N+2*P)*(R_N+2*P)*In_d_W)-1:0] N;
  reg [(C_F*R_F*In_d_W)-1:0] F;
  wire [(In_d_W*(((R_N+(2*P)-R_F)/S)+1)*(((C_N+(2*P)-C_F)/S)+1))-1:0] Y;
  
  reg [In_d_W-1:0] A[0:(R_N+2*P)*(C_N+2*P)-1],B [0:R_F*C_F-1];
  
  slide_window_conv #(In_d_W,In_Add_W,R_N, C_N, R_F, C_F, P, S, Timeperiod) inst(
    .clk(clk),
    .clk_en(clk_en),
    .rst(rst),
    .clr(clr),
    .en_wr(en_wr),
    .en_rd(en_rd),
    .wr(wr),
    .en_MAC(en_MAC),
    .en_MAC_out(en_MAC_out),
    .N(N),
    .F(F),
    .Y(Y) 
    );
  
  integer i,j;
  initial begin
    rst = 1;
    clr = 1;
    clk = 1;
    for(i = 0;i < 25;i = i + 1)
    begin
      A[i] = $urandom%20;
      if(i < 9) B[i] = $urandom%20;
    end
    for (j = 0;j < 25; j = j + 1)
    begin
      N[(32*j)+:32] = A[j];
      if(j < 9) 
        F[(32*j)+:32] = B[j];
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