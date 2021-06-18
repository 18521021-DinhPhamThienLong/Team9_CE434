module zero_padding#(parameter In_d_W=32, R_N=5, C_N=5, P=1)
  (
  input clk,rst,clr,en_padding,
  input [(C_N*R_N*In_d_W)-1:0] N,
  output reg [((C_N+2*P)*(R_N+2*P)*In_d_W)-1:0] N_P
  );
  parameter C_N_P = C_N+2*P, R_N_P = R_N+2*P; 
  wire [((C_N+2*P)*(R_N+2*P)*In_d_W)-1:0] N_P_tmp;
  
  assign N_P_tmp[31:0] = 32'd0;
  assign N_P_tmp[C_N_P*R_N_P*In_d_W-1:((C_N_P*R_N_P)-1)*In_d_W] = 32'd0;
  
  generate
  genvar i,j,k,m;
    
    for(i=1;i<R_N_P;i=i+1)
    begin:padding0
      assign N_P_tmp[(i+1)*In_d_W-1:i*In_d_W] = 32'd0;
      assign N_P_tmp[((i*C_N_P)+1)*In_d_W-1:(i*C_N_P)*In_d_W] = 32'd0;
    end
    
    for(j=1;j<R_N_P-1;j=j+1)
    begin:padding1
      assign N_P_tmp[(R_N_P*C_N_P-j)*In_d_W-1:(R_N_P*C_N_P-1-j)*In_d_W] = 32'd0;
      assign N_P_tmp[(R_N_P*C_N_P-C_N_P*j)*In_d_W-1:(R_N_P*C_N_P-C_N_P*j-1)*In_d_W] = 32'd0;
    end
    
    for(k=0;k<R_N;k=k+1)
    begin:padding2
      assign N_P_tmp[(R_N_P+k+2)*In_d_W-1:(R_N_P+k+1)*In_d_W] = N[(k+1)*In_d_W-1:k*In_d_W];
      for(m=0;m<R_N-1;m=m+1)
      begin:padding3
        assign N_P_tmp[(R_N_P+k+2+R_N_P*(m+1))*In_d_W-1:(R_N_P+k+1+R_N_P*(m+1))*In_d_W] = N[(R_N*(m+1)+1)*In_d_W-1:R_N*(m+1)*In_d_W];
      end
    end
    
  endgenerate
  
  always@(posedge clk)
    begin
    if(rst==0) N_P <= 32'd0;
    
    else if(clr==1) N_P <= 32'd0;
    
    else if(rst==1 & clr==0 & en_padding==1) N_P <= N_P_tmp;
    
    else N_P <= 32'd0; 
    end
  
endmodule