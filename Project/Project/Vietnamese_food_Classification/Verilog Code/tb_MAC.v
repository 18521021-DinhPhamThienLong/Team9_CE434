module tb_MAC();
  parameter I_W = 32;
  
  reg clk, rst, clr, en_MAC, en_MAC_out;
  reg signed [I_W-1:0] A, B;
  wire signed [(2*I_W)+1:0] Y;
  
  MAC #(I_W) inst(
  .clk(clk),
  .rst(rst),
  .clr(clr),
  .en_MAC(en_MAC),
  .A(A),
  .B(B),
  .en_MAC_out(en_MAC_out),
  .Y(Y)
  );
  
  integer i;
  initial begin
    clk = 1'b1;
    rst = 1'b0;
    clr = 1'b0;
    en_MAC = 1'b1;
    en_MAC_out = 1'b1;
    A = $random%20;
    B = $random%20;
    
    #10 rst = 1'b1;
    
    for(i = 0;i < 10 ;i = i + 1)
    begin
      #10
      A = $random%20;
      B = $random%20;
    end
    #500 $stop;
    
  end
  
  always #5 clk = !clk;
  
endmodule
