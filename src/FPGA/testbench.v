// Ownasaurus
// Designed to simulate SNES for testing purposes

// every ~16.66667 ms
// give a 12us latch pulse
// give 16 6us clock pulses

`timescale 10ns / 100ps
`include "snes_controller.v"
`include "gc_pulse.v"
`include "glitch_filter.v"

module main();

reg sys_clk, us_clk, snes_clk_enable, snes_lat, snes_clk;
integer counter_latch_begin, counter_latch_duration_end, clk_counter, clk_half_pulse_count;

parameter cnt_latch_begin = 800000; // 16.667 ms
parameter cnt_latch_end = cnt_latch_begin + 576; // 16.667ms + 12 us
parameter cnt_half_clock = 288; // 6 us

// confirm glitch filtering works
wire sys_clk_f, sys_lat_f;
glitch_filter gf1(sys_clk, snes_lat, snes_lat_f);
glitch_filter gf2(sys_clk, snes_clk, snes_clk_f);

// confirm SNES communication works
wire d0, d1, d2;
reg [31:0] data0, data1, data2;
snes_controller sc(snes_clk_f, snes_lat_f, data0, data1, data2, d0, d1, d2);

// confirm gc pulses work
wire pulse1, pulse0, pulsestop;
wire transmitting1, transmitting0, transmittingstop;
gc_pulse gc_1(sys_clk, snes_lat, 2'b01, pulse1, transmitting1);
gc_pulse gc_0(sys_clk, snes_lat, 2'b00, pulse0, transmitting0);
gc_pulse gc_stop(sys_clk, snes_lat, 2'b11, pulsestop, transmittingstop);

initial begin
	data0 = 32'hAAAAFFFF;
	data1 = 32'hFFFFFFFF;
	data2 = 32'h0000FFFF;
	snes_lat = 1'b0;
	snes_clk = 1'b1;
	counter_latch_begin = 0;
	counter_latch_duration_end = 0;
	sys_clk = 1'b0;
	clk_counter = 0;
	clk_half_pulse_count = 0;
	snes_clk_enable = 1'b0;
end

// simulate a periodic latch
always @(posedge sys_clk) begin
	if (counter_latch_begin == cnt_latch_begin) begin // approximately 16.6667 ms between rising latch edges
		snes_lat <= 1'b1;
		counter_latch_begin <= 0; // reset counter
		counter_latch_duration_end <= counter_latch_duration_end + 1;
	end else if(counter_latch_duration_end == cnt_latch_end) begin // approximately 12us after latch goes high, make it go low
		snes_lat <= 1'b0;
		counter_latch_begin <= counter_latch_begin + 1;
		counter_latch_duration_end <= counter_latch_begin + 1; // reset duration to wherever counter_latch_begin is at
	end else begin
		counter_latch_begin <= counter_latch_begin + 1;
		counter_latch_duration_end <= counter_latch_duration_end + 1;
	end
end

// begin clock pulses, 6us high then 6us low
always @(negedge snes_lat) begin
	snes_clk_enable <= 1'b1;
end

always @(posedge sys_clk) begin
	if(clk_half_pulse_count == 32) begin
		snes_clk_enable <= 1'b0;
		clk_half_pulse_count <= 0;
		$finish;
	end else if(snes_clk_enable) begin
		if(clk_counter == cnt_half_clock) begin
			snes_clk <= !snes_clk;
			clk_counter <= 0;
			clk_half_pulse_count <= clk_half_pulse_count + 1;
		end
		else clk_counter <= clk_counter + 1;
	end
end

// simulate an approximate 48MHz clock, so each cycle is 20.83333333333333ns ~= 21ns
// pulsing every ~21ns. so flipping every 10.41666ns ~= 10.4ns
always #1.04 sys_clk = !sys_clk;

initial begin
 	$display("\t\ttime,\tlat_f,\tclk_f\td0\td1\td2\tpulse1\tpulse0\tpulsestop");
 	$monitor("%d,\t%b,\t%b,\t%b,\t%b,\t%b,\t%b,\t%b,\t%b",$time, snes_lat_f, snes_clk_f, d0, d1, d2, pulse1, pulse0, pulsestop);
 end 

// stop simulation after about 1 second
//initial #100000000 $finish;

endmodule
