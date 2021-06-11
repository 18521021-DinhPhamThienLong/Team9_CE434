module mem #(parameter In_W=32,In_D_Add_W=4)
  (
  input clka,
  input ena,
  input wea,                        //wea = 1 (write), wea = 0 (read)
  input wire [In_D_Add_W-1:0] addra,
  input wire signed [In_W-1:0] dina,
  input clkb,
  input enb,
  input [In_D_Add_W-1:0] addrb,
  output reg signed [In_W-1:0] doutb
  );
  
  reg signed [In_W-1:0] memory [0:(2**In_D_Add_W)-1];
  
  always @(posedge clka or posedge clkb)
  begin
    case ({clka,clkb})
      2'b10:
      begin
        if(ena && wea) // enable port a and write enable
          memory[addra] <= dina;
      end
      
      2'b01:
      begin
        if(enb && !wea)
          doutb <= memory[addrb];
      end
      
      2'b11:
      begin
        if(ena && wea) 
          memory[addra] <= dina;
        else if(enb && !wea)
        doutb <= memory[addrb];
      end
      
    endcase
  end
  
endmodule