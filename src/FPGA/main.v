// Ownasaurus
// Designed to simulate SNES for testing purposes

// every ~16.66667 ms
// give a 12us latch pulse
// give 16 6us clock pulses

// simulate an approximate 48MHz clock, so each cycle is 20.83333333333333ns ~= 21ns
`timescale 10ns / 1ns

module main(
	output snes_lat,
	output snes_clk);

wire sys_clk;
int counter, duration, clk_counter, clk_half_pulse_count;

initial begin
	snes_lat = 1'b0;
	snes_clk = 1'b1;
	sys_clk = 1'b0;
	counter = 0;
	duration = 0;
	clk_counter = 0;
	clk_half_pulse_count = 0;
end

// simulate a periodic latch
always @(posedge sys_clk)
	if (counter == 793651) begin // approximately 16.6667 ms between rising latch edges
		snes_lat <= 1'b1;
		counter <= 0; // reset counter
		duration <= duration + 1;
	end else if(duration == 794223) begin // approximately 12us after latch goes high, make it go low
		snes_lat <= 1'b0;
		counter <= counter + 1;
		duration <= counter + 1; // reset duration to wherever counter is at
	end else begin
		counter <= counter + 1;
		duration <= duration + 1;
	end
end

// about 572 cycles is about 12us
// about 286 cycles is about 6us

// begin clock pulses, 6us high then 6us low
// TODO: complete logic
/*always @(negedge snes_lat)
	if(clk_counter == 286) begin
		snes_clk <= !snes_clk;
		clk_counter <= 0;
		clk_half_pulse_count <= clk_half_pulse_count + 1;
	end
	else clk_counter <= clk_counter + 1;
end*/

// simulate a 48MHz system clock
assign #2.1 sys_clk = !sys_clk;

// stop simulation after a bit over 1 second
initial #50000000 $finish;

endmodule
