////////////////////////////////////////////////// FILTER0 //////////////////////////////////////////////////
module fc0_dense32_filter0 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011011000111001011111110010

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
module fc0_dense32_filter1 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111001000100101111111111000000

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
////////////////////////////////////////////////// FILTER2 //////////////////////////////////////////////////
module fc0_dense32_filter2 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011001101111101010010100111

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
////////////////////////////////////////////////// FILTER3 //////////////////////////////////////////////////
module fc0_dense32_filter3 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111001100010011000100111011110

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
////////////////////////////////////////////////// FILTER4 //////////////////////////////////////////////////
module fc0_dense32_filter4 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100001101100100101001011

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
////////////////////////////////////////////////// FILTER5 //////////////////////////////////////////////////
module fc0_dense32_filter5 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100010010010010100110010

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
////////////////////////////////////////////////// FILTER6 //////////////////////////////////////////////////
module fc0_dense32_filter6 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100101100000110011100111

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
////////////////////////////////////////////////// FILTER7 //////////////////////////////////////////////////
module fc0_dense32_filter7 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011101001010101011110001101

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
////////////////////////////////////////////////// FILTER8 //////////////////////////////////////////////////
module fc0_dense32_filter8 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111001110111011110110111001001

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
////////////////////////////////////////////////// FILTER9 //////////////////////////////////////////////////
module fc0_dense32_filter9 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100110000011000100111000

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
////////////////////////////////////////////////// FILTER10 //////////////////////////////////////////////////
module fc0_dense32_filter10 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111001011111101110000100110011

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
////////////////////////////////////////////////// FILTER11 //////////////////////////////////////////////////
module fc0_dense32_filter11 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010100001111011000000101001

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
////////////////////////////////////////////////// FILTER12 //////////////////////////////////////////////////
module fc0_dense32_filter12 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100100100001111000110100

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
////////////////////////////////////////////////// FILTER13 //////////////////////////////////////////////////
module fc0_dense32_filter13 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111001000011011000111001110100

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
////////////////////////////////////////////////// FILTER14 //////////////////////////////////////////////////
module fc0_dense32_filter14 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100100100111110111111110

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
////////////////////////////////////////////////// FILTER15 //////////////////////////////////////////////////
module fc0_dense32_filter15 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010101000000000111100010110

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
////////////////////////////////////////////////// FILTER16 //////////////////////////////////////////////////
module fc0_dense32_filter16 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011101000110000100011110010

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
////////////////////////////////////////////////// FILTER17 //////////////////////////////////////////////////
module fc0_dense32_filter17 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010001010111100110000111001

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
////////////////////////////////////////////////// FILTER18 //////////////////////////////////////////////////
module fc0_dense32_filter18 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011011111100110111111001001

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
////////////////////////////////////////////////// FILTER19 //////////////////////////////////////////////////
module fc0_dense32_filter19 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111001101001001100101111101011

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
////////////////////////////////////////////////// FILTER20 //////////////////////////////////////////////////
module fc0_dense32_filter20 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010000100110110000101000111

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
////////////////////////////////////////////////// FILTER21 //////////////////////////////////////////////////
module fc0_dense32_filter21 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010011000111000110110100100

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
////////////////////////////////////////////////// FILTER22 //////////////////////////////////////////////////
module fc0_dense32_filter22 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010011001010111100001110110

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
////////////////////////////////////////////////// FILTER23 //////////////////////////////////////////////////
module fc0_dense32_filter23 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100011110110100101101011

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
////////////////////////////////////////////////// FILTER24 //////////////////////////////////////////////////
module fc0_dense32_filter24 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100100110011011010111010

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
////////////////////////////////////////////////// FILTER25 //////////////////////////////////////////////////
module fc0_dense32_filter25 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100110111111100101100011

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
////////////////////////////////////////////////// FILTER26 //////////////////////////////////////////////////
module fc0_dense32_filter26 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011100100010101101000000110

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
////////////////////////////////////////////////// FILTER27 //////////////////////////////////////////////////
module fc0_dense32_filter27 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010001010010110011111101111

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
////////////////////////////////////////////////// FILTER28 //////////////////////////////////////////////////
module fc0_dense32_filter28 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011010111011001100100001111

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
////////////////////////////////////////////////// FILTER29 //////////////////////////////////////////////////
module fc0_dense32_filter29 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111000111110110101110001110110

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
////////////////////////////////////////////////// FILTER30 //////////////////////////////////////////////////
module fc0_dense32_filter30 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b10111010010110010100001000101101

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
////////////////////////////////////////////////// FILTER31 //////////////////////////////////////////////////
module fc0_dense32_filter31 #(
    parameter DATA_WIDTH = 32,
    parameter bias = 32'b00111011101000101100011111111011

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