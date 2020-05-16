// Ownasaurus
// Designed to turn an input signal into a pulse

`timescale 100ns / 1ns

module pulse_generator_500ns(
  input trigger,
  output pulse
);

initial begin
	pulse = 1'b0;
end

always @(posedge trigger) begin
	pulse <= 1'b1;
	pulse <= #5 1'b0;
end

endmodule

module pulse_generator_100ns(
  input trigger,
  output pulse
);

initial begin
	pulse = 1'b0;
end

always @(posedge trigger) begin
	pulse <= 1'b1;
	pulse <= #1 1'b0;
end

endmodule

module pulse_generator_1us(
  input trigger,
  output pulse
);

initial begin
	pulse = 1'b0;
end

always @(posedge trigger) begin
	pulse <= 1'b1;
	pulse <= #10 1'b0;
end

endmodule
