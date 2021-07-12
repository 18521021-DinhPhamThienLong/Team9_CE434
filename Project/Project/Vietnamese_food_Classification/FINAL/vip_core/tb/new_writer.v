module ImageWriter_new (
    clock,
    reset,
    fifo_rdreq,
    fifo_data,
    fifo_empty,
    num_data
);
parameter DWIDTH = 32;
parameter output_file = "";
input    clock;
input    reset;

input [31:0] num_data;

output  reg  fifo_rdreq;
input [DWIDTH-1:0]    fifo_data;
input fifo_empty;

//reg [DWIDTH-1:0] data;
reg data_valid;
integer  file_output;
reg [31:0] data_count;

// generate ready signal
// reg[15:0]a;

// always @(posedge clock) begin
//     a <=$urandom%10; 
//     // $display("A %d, B: %d",a,b);
// end
// // 
wire ready;
assign ready = 1;


initial begin
    file_output = $fopen(output_file,"w");
end
always @(posedge clock or posedge reset) begin
    if(reset) begin
        // data_valid <= 1'b0;   
        fifo_rdreq <= 0;  
    end
    else begin
        data_valid <= fifo_rdreq;
        if (fifo_empty==0 && ready==1) begin
            fifo_rdreq <= 1'b1;
        end
        else begin
            fifo_rdreq <= 1'b0;
        end

    end
end
// wire data to text
always @(posedge clock or posedge reset) begin
    if(reset) begin
        data_count <= 0;
    end
    else begin
        if(data_valid) begin
            // for write data to text
            // 
            data_count <= data_count + 1;
            if (data_count == 0) begin
                // add header file
                $fwrite(file_output,"%d\n",num_data) ; // numdata
            end
            if (data_count < num_data) begin               
                $fwrite(file_output,"%b\n",fifo_data) ;
            end
            else begin
                $fclose(file_output);
                $display("writed file done");
                $finish;
            end
        end        
    end
end


endmodule