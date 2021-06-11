`timescale 1ns/1ps

module Max_Value_tb();
  parameter data_width = 32;
  parameter t = 10;
  reg[data_width - 1: 0] In1, In2;
  wire[data_width - 1: 0] max_value;
  
  initial begin
    #t In1 <= 'b01000000010010100001101011011111; In2 <= 'b0; // In1 = 3.xxxx; In2 = 0
    #t In1 <= 'b0; In2 <= 'b01000000010010100001101011011111; // In1 = 0; In2 = 3.xxx
    #t In1 <= 'b001000000010010100001101011011111; In2 <= 'b01000000100000000000000000000000; // In1 = 3.xxx; In2 = 4
    #(t*2) $finish;
  end
  Max_Value #(data_width)DUT (max_value, In1, In2);
endmodule
