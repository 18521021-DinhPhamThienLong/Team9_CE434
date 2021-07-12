module add_bias_8_channel #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b01000000000000000000000000000000
)(
    input [DATA_WIDTH-1:0] data_out_conv2d_channel0,
                           data_out_conv2d_channel1,
                           data_out_conv2d_channel2,
                           data_out_conv2d_channel3,
                           data_out_conv2d_channel4,
                           data_out_conv2d_channel5,
                           data_out_conv2d_channel6,
                           data_out_conv2d_channel7,
    input valid_in_adder, clk, rst,
    output reg [DATA_WIDTH-1:0] data_out,
    output reg valid_out
);
  
    reg [DATA_WIDTH-1:0] reg1[0:3];
    reg valid_in1;
    wire [DATA_WIDTH-1:0] y1_0;
    wire [DATA_WIDTH-1:0] y1_1;
    wire [DATA_WIDTH-1:0] y1_2;
    wire [DATA_WIDTH-1:0] y1_3;
    
    Floating_Point_Adder a0(.a(data_out_conv2d_channel0), .b(data_out_conv2d_channel1), .res(y1_0));
    Floating_Point_Adder a1(.a(data_out_conv2d_channel2), .b(data_out_conv2d_channel3), .res(y1_1));  
    Floating_Point_Adder a2(.a(data_out_conv2d_channel4), .b(data_out_conv2d_channel5), .res(y1_2));
    Floating_Point_Adder a3(.a(data_out_conv2d_channel6), .b(data_out_conv2d_channel7), .res(y1_3));
    
    always @(posedge clk or posedge rst) 
    begin
        if(rst)begin
            reg1[0] <= 32'd0;
            reg1[1] <= 32'd0;
            reg1[2] <= 32'd0;
            reg1[3] <= 32'd0;
            valid_in1 <= 1'd0;
        end
        else if (valid_in_adder)begin
            reg1[0] <= y1_0;
            reg1[1] <= y1_1;
            reg1[2] <= y1_2;
            reg1[3] <= y1_3;
            valid_in1 <= valid_in_adder;
        end
        else valid_in1 <= 1'd0;
    end        

    reg [DATA_WIDTH-1:0] reg2[0:1];
    reg valid_in2;
    wire [DATA_WIDTH-1:0] y2_0;
    wire [DATA_WIDTH-1:0] y2_1;
    
    Floating_Point_Adder a4(.a(reg1[0]), .b(reg1[1]), .res(y2_0));
    Floating_Point_Adder a5(.a(reg1[2]), .b(reg1[3]), .res(y2_1));
  
    always @(posedge clk or posedge rst) 
    begin
        if(rst)begin
            reg2[0] <= 32'd0;
            reg2[1] <= 32'd0;
            valid_in2 <= 1'd0;
        end
        else if (valid_in1)begin
            reg2[0] <= y2_0;
            reg2[1] <= y2_1;
            valid_in2 <= valid_in1;
        end
        else valid_in2 <= 1'd0;
    end  

    reg [DATA_WIDTH-1:0] reg3;
    reg valid_in3;
    wire [DATA_WIDTH-1:0] y3_0;
    
    Floating_Point_Adder a6(.a(reg2[0]), .b(reg2[1]), .res(y3_0));
  
    always @(posedge clk or posedge rst) 
    begin
        if(rst)begin
            reg3 <= 32'd0;
            valid_in3 <= 1'd0;
        end
        else if (valid_in2)begin
            reg3 <= y3_0;
            valid_in3 <= valid_in2;
        end
        else valid_in3 <= 1'd0;
    end  

    reg [DATA_WIDTH-1:0] reg4;
    reg valid_in4;
    wire [DATA_WIDTH-1:0] y4_0;
    
    Floating_Point_Adder a7(.a(reg3), .b(bias), .res(y4_0));
  
    always @(posedge clk or posedge rst) 
    begin
        if(rst)begin
            reg4 <= 32'd0;
            valid_in4 <= 1'd0;
        end
        else if (valid_in3)begin
            reg4 <= y4_0;
            valid_in4 <= valid_in3;
        end
        else valid_in4 <= 1'd0;
    end 
    
    wire [DATA_WIDTH-1:0] y5_0;
    
    ReLU relu(reg4, y5_0);
  
    always @(posedge clk or posedge rst) 
    begin
        if(rst)begin
            data_out <= 32'd0;
            valid_out <= 1'd0;
        end
        else if (valid_in4)begin
            data_out <= y5_0;
            valid_out <= valid_in4;
        end
        else valid_out <= 1'd0;
    end      
endmodule