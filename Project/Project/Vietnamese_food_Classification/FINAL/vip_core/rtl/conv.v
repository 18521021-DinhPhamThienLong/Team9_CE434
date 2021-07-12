`include "Floating_Point_Adder.v"
`include "Floating_Point_Multiplier.v"
module conv #(
    parameter DATA_WIDTH = 32,
    parameter k0 = 32'b01000001001000000000000000000000,  //10
    parameter k1 = 32'b01000001001000000000000000000000,  //10
    parameter k2 = 32'b01000001001000000000000000000000,  //10
    parameter k3 = 32'b01000001001000000000000000000000,  //10
    parameter k4 = 32'b01000001001000000000000000000000,  //10
    parameter k5 = 32'b01000001001000000000000000000000,  //10
    parameter k6 = 32'b01000001001000000000000000000000,  //10
    parameter k7 = 32'b01000001001000000000000000000000,  //10
    parameter k8 = 32'b01000001001000000000000000000000  //10  
)(
    input [DATA_WIDTH-1:0] data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8,
    input valid_in, clk, rst,
    output reg [DATA_WIDTH-1:0] data_out,
    output reg valid_out
);
    reg [DATA_WIDTH-1:0] reg1[0:8];
    reg valid_in1;
    wire [DATA_WIDTH-1:0] mul1_0, mul1_1, mul1_2, mul1_3, mul1_4, mul1_5, mul1_6, mul1_7, mul1_8;
    
    Floating_Point_Multiplier mul_inst0(.res(mul1_0), .a(data_in0), .b(k0));
    Floating_Point_Multiplier mul_inst1(.res(mul1_1), .a(data_in1), .b(k1));
    Floating_Point_Multiplier mul_inst2(.res(mul1_2), .a(data_in2), .b(k2));
    Floating_Point_Multiplier mul_inst3(.res(mul1_3), .a(data_in3), .b(k3));
    Floating_Point_Multiplier mul_inst4(.res(mul1_4), .a(data_in4), .b(k4));
    Floating_Point_Multiplier mul_inst5(.res(mul1_5), .a(data_in5), .b(k5));
    Floating_Point_Multiplier mul_inst6(.res(mul1_6), .a(data_in6), .b(k6));
    Floating_Point_Multiplier mul_inst7(.res(mul1_7), .a(data_in7), .b(k7));
    Floating_Point_Multiplier mul_inst8(.res(mul1_8), .a(data_in8), .b(k8));
     
    always @(posedge clk or posedge rst)
    begin
        if(rst)
          begin
              reg1[0] <= 32'd0;
              reg1[1] <= 32'd0;
              reg1[2] <= 32'd0;
              reg1[3] <= 32'd0;
              reg1[4] <= 32'd0;
              reg1[5] <= 32'd0;
              reg1[6] <= 32'd0;
              reg1[7] <= 32'd0;
              reg1[8] <= 32'd0;
              valid_in1 <= 1'd0;
          end
        else if(valid_in)
          begin
              reg1[0] <= mul1_0;
              reg1[1] <= mul1_1;
              reg1[2] <= mul1_2;
              reg1[3] <= mul1_3;
              reg1[4] <= mul1_4;
              reg1[5] <= mul1_5;
              reg1[6] <= mul1_6;
              reg1[7] <= mul1_7;
              reg1[8] <= mul1_8;
              valid_in1 <= valid_in;
          end
        else  valid_in1 <= 1'd0;
    end  

    reg [DATA_WIDTH-1:0] reg2[0:4];
    reg valid_in2;
    wire [DATA_WIDTH-1:0] add1_0, add1_1, add1_2, add1_3;

    Floating_Point_Adder add_inst0(.res(add1_0), .a(reg1[0]), .b(reg1[1]));
    Floating_Point_Adder add_inst1(.res(add1_1), .a(reg1[2]), .b(reg1[3]));
    Floating_Point_Adder add_inst2(.res(add1_2), .a(reg1[4]), .b(reg1[5]));
    Floating_Point_Adder add_inst3(.res(add1_3), .a(reg1[6]), .b(reg1[7]));

    always @(posedge clk or posedge rst)
    begin
        if(rst)
          begin
              reg2[0] <= 32'd0;
              reg2[1] <= 32'd0;
              reg2[2] <= 32'd0;
              reg2[3] <= 32'd0;
              reg2[4] <= 32'd0;
              valid_in2 <= 1'd0;
          end
        else if(valid_in1)
          begin
              reg2[0] <= add1_0;
              reg2[1] <= add1_1;
              reg2[2] <= add1_2;
              reg2[3] <= add1_3;
              reg2[4] <= reg1[8];
              valid_in2 <= valid_in1;
          end
        else  valid_in2 <= 1'd0;
    end  

    reg [DATA_WIDTH-1:0] reg3[0:2];
    reg valid_in3;
    wire [DATA_WIDTH-1:0] add2_0, add2_1;

    Floating_Point_Adder add2_inst0(.res(add2_0), .a(reg2[0]), .b(reg2[1]));
    Floating_Point_Adder add2_inst1(.res(add2_1), .a(reg2[2]), .b(reg2[3]));

    always @(posedge clk or posedge rst)
    begin
        if(rst)
          begin
              reg3[0] <= 32'd0;
              reg3[1] <= 32'd0;
              reg3[2] <= 32'd0;
              valid_in3 <= 1'd0;
          end
        else if(valid_in2)
          begin
              reg3[0] <= add2_0;
              reg3[1] <= add2_1;
              reg3[2] <= reg2[4];
              valid_in3 <= valid_in2;
          end
        else  valid_in3 <= 1'd0;
    end 

    reg [DATA_WIDTH-1:0] reg4[0:1];
    reg valid_in4;
    wire [DATA_WIDTH-1:0] add3;

    Floating_Point_Adder add3_inst0(.res(add3), .a(reg3[0]), .b(reg3[1]));

    always @(posedge clk or posedge rst)
    begin
        if(rst)
          begin
              reg4[0] <= 32'd0;
              reg4[1] <= 32'd0;
              valid_in4 <= 1'd0;
          end
        else if(valid_in3)
          begin
              reg4[0] <= add3;
              reg4[1] <= reg3[2];
              valid_in4 <= valid_in3;
          end
        else  valid_in4 <= 1'd0;
    end 

    wire [DATA_WIDTH-1:0] add4;

    Floating_Point_Adder add4_inst0(.res(add4), .a(reg4[0]), .b(reg4[1]));
    
    always @(posedge clk or posedge rst)
    begin
        if(rst)
          begin
              data_out <= 32'd0;
              valid_out <= 1'd0;
          end
        else if(valid_in4)
          begin
              data_out <= add4;
              valid_out <= valid_in4;
          end
        else  valid_out <= 1'd0;
    end 
endmodule