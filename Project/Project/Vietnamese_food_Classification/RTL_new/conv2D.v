module conv2D #(
    parameter DATA_WIDTH = 32,
    parameter WIDTH = 5,
    parameter k0 = 32'b01000001001000000000000000000000,  //10
    parameter k1 = 32'b01000001001000000000000000000000,  //10
    parameter k2 = 32'b01000001001000000000000000000000,  //10
    parameter k3 = 32'b01000001001000000000000000000000,  //10
    parameter k4 = 32'b01000001001000000000000000000000,  //10
    parameter k5 = 32'b01000001001000000000000000000000,  //10
    parameter k6 = 32'b01000001001000000000000000000000,  //10
    parameter k7 = 32'b01000001001000000000000000000000,  //10
    parameter k8 = 32'b01000001001000000000000000000000   //10  
)(
    input [DATA_WIDTH-1:0] data_in,
    input clk, rst, valid_in,
    output valid_out, data_fifo_rden,
    output [DATA_WIDTH-1:0] data_out
);
    wire [DATA_WIDTH-1:0] data_in0, data_in1, data_in2, data_in3, data_in4, data_in5, data_in6, data_in7, data_in8, data_lines;
    wire valid_out_line_buffer, valid_data_fifo_rden, valid_in_padding;
    reg En, padding_valid;

    or o1 (valid_in_padding, valid_in, padding_valid);
    and a2(valid_data_fifo_rden, valid_in, ~En);            //Khi khong padding thi doc tín hieu tu fifo

    assign data_fifo_rden = valid_data_fifo_rden;

    zero_padding#(
        .DATA_WIDTH(DATA_WIDTH)
    )padding_inst(
        .en_padding(En),
        .data_in(data_in),
        .data_out(data_lines)
    );

    line_buffer #(
        .DATA_WIDTH(DATA_WIDTH),
        .WIDTH(WIDTH)
    )line_buffer_inst(
        .data_out0(data_in0), 
        .data_out1(data_in1), 
        .data_out2(data_in2), 
        .data_out3(data_in3), 
        .data_out4(data_in4), 
        .data_out5(data_in5), 
        .data_out6(data_in6), 
        .data_out7(data_in7), 
        .data_out8(data_in8),
        .data_in(data_lines),
        .valid_in(valid_in_padding), .clk(clk), .rst(rst),
        .valid_out(valid_out_line_buffer)
    );

    conv #(
        .DATA_WIDTH(DATA_WIDTH),
        .k0(k0),  //10
        .k1(k1),  //10
        .k2(k2),  //10
        .k3(k3),  //10
        .k4(k4),  //10
        .k5(k5),  //10
        .k6(k6),  //10
        .k7(k7),  //10
        .k8(k8)  //10  
    )conv_inst(
        .data_in0(data_in0), 
        .data_in1(data_in1), 
        .data_in2(data_in2), 
        .data_in3(data_in3), 
        .data_in4(data_in4), 
        .data_in5(data_in5), 
        .data_in6(data_in6), 
        .data_in7(data_in7), 
        .data_in8(data_in8),
        .valid_in(valid_out_line_buffer), .clk(clk), .rst(rst),
        .data_out(data_out),
        .valid_out(valid_out)
    );

    reg [7:0] i, j;
    always @(posedge clk) 
    begin
        if(rst) begin
            i <=  8'd0;
            j <=  8'd0;
            end
        else if (valid_in_padding) begin
            i <= i + 1'd1;
                if(i == WIDTH) begin  
                i <= 1;
                j <= j + 1'b1;
                if(j == (WIDTH-1))
                    padding_valid <= 0;
                end
                else if((j == 0) || (j == (WIDTH-1)))  
                En <= 1'd1;  
                else if (i == WIDTH-1)
                En <= 1'd1; 
                else  begin
                En <= 1'd0;
                padding_valid <= 1;
                end 
        end
    end
endmodule