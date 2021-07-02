module zero_padding#(
    parameter DATA_WIDTH = 32
)(
    input en_padding,
    input [DATA_WIDTH-1:0] data_in,
    output [DATA_WIDTH-1:0] data_out
);

    assign data_out = en_padding ? {DATA_WIDTH{1'b0}} : data_in;

endmodule