`timescale 1 ps / 1 ps
// synopsys translate_on
module fifo_32b (
	clock,
	data,
	rdreq,
	wrreq,
	almost_empty,
	almost_full,
	q);

	input	  clock;
	input	[31:0]  data;
	input	  rdreq;
	input	  wrreq;
	output	  almost_empty;
	output	  almost_full;
	output	[31:0]  q;

	wire  sub_wire0;
	wire  sub_wire1;
	wire [31:0] sub_wire2;
	wire  almost_full = sub_wire0;
	wire  almost_empty = sub_wire1;
	wire [31:0] q = sub_wire2[31:0];

	scfifo	scfifo_component (
				.rdreq (rdreq),
				.clock (clock),
				.wrreq (wrreq),
				.data (data),
				.almost_full (sub_wire0),
				.almost_empty (sub_wire1),
				.q (sub_wire2)
				// synopsys translate_off
				,
				.aclr (),
				.empty (),
				.full (),
				.sclr (),
				.usedw ()
				// synopsys translate_on
				);
	defparam
		scfifo_component.add_ram_output_register = "OFF",
		scfifo_component.almost_empty_value = 2,
		scfifo_component.almost_full_value = 16384,
		scfifo_component.intended_device_family = "Cyclone III",
		scfifo_component.lpm_numwords = 16384,
		scfifo_component.lpm_showahead = "OFF",
		scfifo_component.lpm_type = "scfifo",
		scfifo_component.lpm_width = 32,
		scfifo_component.lpm_widthu = 14,
		scfifo_component.overflow_checking = "ON",
		scfifo_component.underflow_checking = "ON",
		scfifo_component.use_eab = "ON";


endmodule