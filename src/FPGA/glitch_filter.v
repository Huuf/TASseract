// Ownasaurus
// Designed to filter a signal to eliminate any tiny glitches, faking a rising/falling edge

module glitch_filter(
	input sys_clk,
	input line_in,
	output line_out
);

integer sample_counter;
reg filtered_output;

initial begin
	filtered_output = line_in;
	sample_counter = 0;
end

always @(posedge sys_clk) begin
	if(filtered_output == line_in) begin // they match, so reset counter
		sample_counter <= 0;
	end else if(sample_counter == 5) begin // they don't match, and it's been a a few samples. so let the change go through
		filtered_output <= line_in;
		sample_counter <= 0;
	end else begin // they don't match, but it hasn't been enough time yet
		sample_counter <= sample_counter + 1;
	end
end

assign line_out = filtered_output;

endmodule
