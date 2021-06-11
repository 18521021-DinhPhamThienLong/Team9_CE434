
module counter_g #(parameter Add_W=4)(
    input CLK,RST,
    input CE,
    input SCLR,
    output reg [Add_W-1:0] Q
    );
    
    always@(posedge CLK)
    begin
    if(RST==0)
        Q<=0;
    else if(SCLR==1)
        Q<=0;
    else if(CE==0)
        Q<=Q;
    else if(CE==1)
        if(Q==8)
          Q <= 'd0;
        else 
        Q<=Q+'d1;
    end
endmodule