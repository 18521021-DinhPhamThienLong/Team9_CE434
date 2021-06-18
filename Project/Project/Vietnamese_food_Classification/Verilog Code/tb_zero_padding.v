// import zero around the matrix
/*
--input matrix 3x3 : 288'dx8x7x6x5x4x3x2x1x0
  x0 x1 x2
  x3 x4 x5
  x6 x7 x8
--output matrix 5x5 : 800'd{00000}{0}{x8}{x7}{x6}{0}{x5}{x4}{x3}{0}{x2}{x1}{x0}{0}{000000}
  0  0  0  0 0
  0 x0 x1 x2 0
  0 x3 x4 x5 0
  0 x6 x7 x8 0
  0  0  0  0 0
*/
module tb_zero_padding();
  parameter In_d_W=32, R_N=3, C_N=3, P=1;
  parameter C_N_P = C_N+2*P, R_N_P = R_N+2*P;
  reg clk,rst,clr,en_padding;
  reg [(C_N*R_N*In_d_W)-1:0] N;
  wire [((C_N+2*P)*(R_N+2*P)*In_d_W)-1:0] N_P;
  
  wire [In_d_W-1:0] tmp [0:C_N_P*R_N_P-1];
  reg [In_d_W-1:0] x0,x1,x2,x3,x4,x5,x6,x7,x8;
    
  zero_padding #(In_d_W, R_N, C_N, P) inst(
  .clk(clk),.rst(rst),.clr(clr),.en_padding(en_padding),
  .N(N),
  .N_P(N_P)
  );
  
  generate
    genvar i;
    
    for(i=0;i<R_N_P;i=i+1)
    begin:gen_padding
      assign tmp[i*R_N_P] = N_P[(i*R_N_P+1)*In_d_W-1:i*R_N_P*In_d_W];
      assign tmp[i*R_N_P+1] = N_P[(i*R_N_P+2)*In_d_W-1:(i*R_N_P+1)*In_d_W];
      assign tmp[i*R_N_P+2] = N_P[(i*R_N_P+3)*In_d_W-1:(i*R_N_P+2)*In_d_W];
      assign tmp[i*R_N_P+3] = N_P[(i*R_N_P+4)*In_d_W-1:(i*R_N_P+3)*In_d_W];
      assign tmp[i*R_N_P+4] = N_P[(i*R_N_P+5)*In_d_W-1:(i*R_N_P+4)*In_d_W];
    end
    
  endgenerate
  
  integer file,j;
  initial begin
    x0 = $urandom%20;
    x1 = $urandom%20;
    x2 = $urandom%20;
    x3 = $urandom%20;
    x4 = $urandom%20;
    x5 = $urandom%20;
    x6 = $urandom%20;
    x7 = $urandom%20;
    x8 = $urandom%20;
    clk = 0;
    file = $fopen("sample_matrix.txt","w");
    en_padding = 1;
    rst = 0;
    clr = 0;
    #10 rst = 1;
    N = {x8,x7,x6,x5,x4,x3,x2,x1,x0};
    
    #100
    for(j=0;j<R_N_P;j=j+1)
      $fwrite(file,"%d\t%d\t%d\t%d\t%d\n",tmp[j*R_N_P],tmp[j*R_N_P+1],tmp[j*R_N_P+2],tmp[j*R_N_P+3],tmp[j*R_N_P+4]);
    $stop;
  end
  
  always #5 clk = !clk;
  
  
endmodule