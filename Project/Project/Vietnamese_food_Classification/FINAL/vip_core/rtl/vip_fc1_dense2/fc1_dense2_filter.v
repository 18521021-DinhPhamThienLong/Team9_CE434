////////////////////////////////////////////////// FILTER0 //////////////////////////////////////////////////
module fc1_dense2_filter0 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111100100000110100100010000001

)(
    input clk, rst, valid_in,
    input [DATA_WIDTH-1:0] data_in,
    input [DATA_WIDTH-1:0] weight,
    output reg valid_out,
    output reg [DATA_WIDTH-1:0] data_out
    );
    reg [DATA_WIDTH-1:0] temp1, temp2;
    wire [DATA_WIDTH-1:0] Sum, Out;
    
    Floating_Point_Adder inst_adder(.res(Sum), .a(temp2), .b(Out));
    Floating_Point_Multiplier inst_multi(.res(Out), .a(data_in), .b(weight));
    
    always@(posedge clk or posedge rst)
    begin
        if(rst) begin 
            temp1<=0; 
            temp2<=bias; 
            data_out<=0;
            valid_out <=0; 
        end
        else if (valid_in) begin
            temp1<=Out; 
            temp2<=Sum; 
            data_out<=temp2; 
            valid_out<=1;
        end
    end
endmodule

////////////////////////////////////////////////// FILTER1 //////////////////////////////////////////////////
module fc1_dense2_filter1 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111100100000110100100010000000

)(
    input clk, rst, valid_in,
    input [DATA_WIDTH-1:0] data_in,
    input [DATA_WIDTH-1:0] weight,
    output reg valid_out,
    output reg [DATA_WIDTH-1:0] data_out
    );
    reg [DATA_WIDTH-1:0] temp1, temp2;
    wire [DATA_WIDTH-1:0] Sum, Out;
    
    Floating_Point_Adder inst_adder(.res(Sum), .a(temp2), .b(Out));
    Floating_Point_Multiplier inst_multi(.res(Out), .a(data_in), .b(weight));
    
    always@(posedge clk or posedge rst)
    begin
        if(rst) begin 
            temp1<=0; 
            temp2<=bias; 
            data_out<=0;
            valid_out <=0; 
        end
        else if (valid_in) begin
            temp1<=Out; 
            temp2<=Sum; 
            data_out<=temp2; 
            valid_out<=1;
        end
    end
endmodule