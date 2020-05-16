// Ownasaurus
// Designed to turn an input signal into a pulse that fits the N64/GC protocol

`timescale 1us / 10ns

module gc_pulse(
  input trigger,
  input[1:0] digit,
  output pulse,
  output transmitting
);

initial begin
	pulse = 1'b1;
	transmitting = 1'b0;
end

always @(posedge trigger) begin
	case(digit)
		2'b01: // send a 1
			// low for 1 us, then high for 3 us
			transmitting <= 1'b1;
			pulse <= 1'b0;
			pulse <= #1 1'b1;
			transmitting <= #4 1'b0;
		2'b00: // send a 0
			// low for 3 us, then high for 1 us
			transmitting <= 1'b1;
			pulse <= 1'b0;
			pulse <= #3 1'b1;
			transmitting <= #4 1'b0;
		2'b11: // send a STOP bit
			// low for 1 us, then remain high
			transmitting <= 1'b1;
			pulse <= 1'b0;
			pulse <= #1 1'b1;
			transmitting <= #1 1'b0;
	endcase
end

endmodule