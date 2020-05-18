// Ownasaurus
// Designed to turn an input signal into a pulse that fits the N64/GC protocol
// Assumes 48MHz sys_clk

module gc_pulse(
	input sys_clk,
	input trigger,
	input[1:0] digit,
	output reg pulse,
	output reg transmitting
);

integer clk_cnt;

parameter one_us = 48;
//parameter two_us = 96;
parameter three_us = 144;
parameter four_us = 192;

initial begin
	pulse = 1'b1;
	transmitting = 1'b0;
	clk_cnt = 0;
end

always @(posedge trigger) begin
	transmitting <= 1'b1;
end

always @(posedge sys_clk) begin
	case(digit)
		2'b01: // send a 1
			// low for 1 us, then high for 3 us
			if(transmitting) begin
				if(clk_cnt == 0) begin
					pulse <= 1'b0;
					clk_cnt <= clk_cnt + 1;
				end else if(clk_cnt == one_us) begin
					pulse <= 1'b1;
					clk_cnt <= clk_cnt + 1;
				end else if(clk_cnt == four_us) begin
					transmitting <= 1'b0;
					clk_cnt <= 0;
				end else clk_cnt <= clk_cnt + 1;
			end
		2'b00: // send a 0
			// low for 3 us, then high for 1 us
			if(transmitting) begin
				if(clk_cnt == 0) begin
					pulse <= 1'b0;
					clk_cnt <= clk_cnt + 1;
				end else if(clk_cnt == three_us) begin
					pulse <= 1'b1;
					clk_cnt <= clk_cnt + 1;
				end else if(clk_cnt == four_us) begin
					transmitting <= 1'b0;
					clk_cnt <= 0;
				end else clk_cnt <= clk_cnt + 1;
			end
		2'b11: // send a STOP bit
			// low for 1 us, then remain high
			if(transmitting) begin
				if(clk_cnt == 0) begin
					pulse <= 1'b0;
					clk_cnt <= clk_cnt + 1;
				end else if(clk_cnt == one_us) begin
					pulse <= 1'b1;
					transmitting <= 1'b0;
					clk_cnt <= 0;
				end else clk_cnt <= clk_cnt + 1;
			end
	endcase
end

endmodule
