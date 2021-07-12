module ImageGenerator_new(
    clock,
    reset,
    
    num_data,
    // fifo write bus
    fifo_full,
    fifo_data,
    fifo_wrreq
);
// paramenters
parameter DWIDTH = 32;
parameter input_file = "";
//

//portmap
input clock;
input reset;
input fifo_full;

output [DWIDTH*3-1:0] fifo_data;
output reg fifo_wrreq;
output reg [31:0] num_data;

integer file_in;
integer status_data, status;
parameter READ_CFG_STATE = 0;
parameter WR_DATA_STATE = 1;
//

reg [31:0] data_count;
reg [DWIDTH*3-1:0] data_read;
reg [1:0] state;

//
assign fifo_data = data_read;
initial begin
  file_in <= $fopen(input_file,"r"); // Read image file    
end 
//
reg [DWIDTH*3-1:0] data;

wire data_valid_in;
assign data_valid_in = 1;

always @(posedge clock or posedge reset) begin
  if (reset) begin
      state <= 0;
  end
  else begin
      if (data_valid_in==1 && fifo_full == 0) begin
        case (state)
            READ_CFG_STATE:
            begin
                status= $fscanf(file_in,"%d",num_data); // 0: video, 1: image
                $display("num_data=%d",num_data);
                $display("Read cfg done");
                data_count <= 0;
                state <= WR_DATA_STATE;
                data_count <= 1;
                fifo_wrreq <= 0;
                data_read <= 0;
            end
            WR_DATA_STATE:
            begin
                    data_count <= data_count + 1;
                    status_data = $fscanf(file_in,"%b",data);
                    if (status_data==1) begin
                        data_read <= data;
                        fifo_wrreq <= 1;
                        if (data_count == num_data) begin
                            $display("end data");
                        end                
                    end
                    else begin
                        fifo_wrreq <= 0;
                    end
            end
            default:
            begin
                $display("finished");
            end 
        endcase
      end 
      else begin
          fifo_wrreq <= 0;
      end
  end
end

endmodule