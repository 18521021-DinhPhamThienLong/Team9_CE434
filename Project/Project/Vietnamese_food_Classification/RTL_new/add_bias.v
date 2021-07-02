module add_bias#(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b01000000000000000000000000000000
)(
    input [DATA_WIDTH-1:0] data_out_conv_R, data_out_conv_G, data_out_conv_B,
    input valid_in_adder, clk, rst,
    output reg [DATA_WIDTH-1:0] data_out,
    output reg valid_out
);
  
    reg [DATA_WIDTH-1:0] reg1[0:1];
    reg valid_in1;
    wire [DATA_WIDTH-1:0] y1_0;
    wire [DATA_WIDTH-1:0] y1_1;
    
    Floating_Point_Adder a1(.a(data_out_conv_R), .b(data_out_conv_G), .res(y1_0));
    Floating_Point_Adder a2(.a(data_out_conv_B), .b(bias) , .res(y1_1));  
    
    always @(posedge clk or posedge rst) 
    begin
        if(rst)begin
            reg1[0] <= 32'd0;
            reg1[1] <= 32'd0;
            valid_in1 <= 1'd0;
        end
        else if (valid_in_adder)begin
            reg1[0] <= y1_0;
            reg1[1] <= y1_1;
            valid_in1 <= valid_in_adder;
        end
        else valid_in1 <= 1'd0;
    end        

    reg [DATA_WIDTH-1:0] reg2;
    reg valid_in2;
    wire [DATA_WIDTH-1:0] y2_0;
    
    Floating_Point_Adder a3(.a(reg1[0]), .b(reg1[1]), .res(y2_0));
  
    always @(posedge clk or posedge rst) 
    begin
        if(rst)begin
            reg2 <= 32'd0;
            valid_in2 <= 1'd0;
        end
        else if (valid_in1)begin
            reg2 <= y2_0;
            valid_in2 <= valid_in1;
        end
        else valid_in2 <= 1'd0;
    end  

    wire [DATA_WIDTH-1:0] y3_0;
    
    ReLU relu(reg2, y3_0);
  
    always @(posedge clk or posedge rst) 
    begin
        if(rst)begin
            data_out <= 32'd0;
            valid_out <= 1'd0;
        end
        else if (valid_in2)begin
            data_out <= y3_0;
            valid_out <= valid_in2;
        end
        else valid_out <= 1'd0;
    end      
endmodule