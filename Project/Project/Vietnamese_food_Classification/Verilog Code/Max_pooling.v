module Max_pooling #(parameter data_width = 32, width = 5)(data_out, valid_out, data_in, valid_in, clk, reset);
	input[data_width - 1:0] data_in;
	input valid_in, clk, reset;
	output[data_width - 1: 0] data_out;
	output valid_out;
	
	wire[data_width - 1:0] data_out0, data_out1, data_out2, data_out3;
	wire valid_op;
	
	LineBuff #(data_width, width) Buff(.data_out0(data_out0), .data_out1(data_out1), .data_out2(data_out2), .data_out3(data_out3), .valid_out(valid_op), .data_in(data_in), .clk(clk), .reset(~reset), .valid_in(valid_in));

	Max_Data #(data_width) DUT(.max_data(data_out), .valid_out(valid_out), .In1(data_out0), .In2(data_out1), .In3(data_out2), .In4(data_out3), .clk(clk), .reset(~reset), .valid_in(valid_op));
	
endmodule
 
// Line buffer Block
module LineBuff#(parameter data_width = 32, width = 4)(data_out0, data_out1, data_out2, data_out3, valid_out, data_in, clk, reset, valid_in);
	input[data_width - 1: 0] data_in;
	input clk, reset, valid_in;
	output reg valid_out;
	//output reg[1:0] s;
	//output reg[data_width - 1:0] count;
	output[data_width - 1:0] data_out0, data_out1, data_out2, data_out3;
	
	parameter din = width + 2;
	reg[data_width - 1:0] line_buff[0: din - 1];
	reg[1:0] next_stage, s;
	reg[data_width - 1:0] cout, count;
	
	genvar i;
  	generate 
      for (i=0; i < din; i = i + 1)begin
          always @(posedge clk) begin
              if (valid_in)begin
                	if(i == 0)
                    	line_buff[i] <= data_in;    
                	else
                    	line_buff[i] <= line_buff[i-1];
            	end
        	end
		end
  	endgenerate
  
  	always @(*)begin
    	if(reset)begin
        	s  <= 'b01;
    	end
    	else begin
        	s <= next_stage;
      	end
 	end
     
  	always @(posedge clk)begin
      	if(reset) begin
        	count <= 'd0;
        	cout <= 'd0;
        	valid_out <= 0;
    	end
    	else if(valid_in)begin
        case(s)
        	'b00: begin
            	count <= 'd0;
                cout <= 'd0;
                valid_out <= 0; 
          	end 
          	'b01: begin
                count <= count + 1;
                cout <= 'd0;
                valid_out <= 0;
         	end
          	'b10: begin
                count <= 'd0;
                cout = cout + 1;
                valid_out <= 0;
          	end
          	'b11: begin
                count <= 'd0;
                cout = cout + 1;
                valid_out <= 1;
          	end
        endcase
      	end
      	else valid_out <= 0;
    end
    
	always @(*) begin
    	case(s)
        'b00: begin
            if(valid_in)
                next_stage = 'b01;
            else
                next_stage = 'b00;
        end
        'b01: begin
            if(count == din - 1)
                next_stage = 'b10;
            else
                next_stage = 'b01;
        end
        'b10: begin
            if(cout % 2 == 0) next_stage = 'b11;
            else if(cout == width - 1 ) next_stage = 'b01;
            else next_stage = 'b10;
        end
        'b11: begin
            if(cout % 2 == 1)  next_stage = 'b10;
           	else if(cout == width - 1 )  next_stage = 'b01;
            else next_stage = 'b11;
        end
      endcase
  	end  
      
	assign data_out0 = line_buff[0];
 	assign data_out1 = line_buff[1];
	assign data_out2 = line_buff[din - 2];
	assign data_out3 = line_buff[din- 1];

endmodule
