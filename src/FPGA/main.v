// Ownasaurus
// Designed to simulate SNES for testing purposes

// every ~16.66667 ms
// give a 12us latch pulse
// give 16 6us clock pulses

`timescale 10ns / 100ps

module main();


reg sys_clk, clk_enable, snes_lat, snes_clk;
integer counter, duration, clk_counter, clk_half_pulse_count;

initial begin
	snes_lat = 1'b0;
	snes_clk = 1'b1;
	counter = 0;
	duration = 0;
	sys_clk = 1'b0;
	clk_counter = 0;
	clk_half_pulse_count = 0;
	clk_enable = 1'b0;
end

// simulate a periodic latch
always @(posedge sys_clk) begin
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
always @(negedge snes_lat) begin
	clk_enable <= 1'b1;
end

always @(posedge sys_clk) begin
	if(clk_half_pulse_count == 32) begin
		clk_enable <= 1'b0;
		clk_half_pulse_count <= 0;
	end else if(clk_enable) begin
		if(clk_counter == 286) begin
			snes_clk <= !snes_clk;
			clk_counter <= 0;
			clk_half_pulse_count <= clk_half_pulse_count + 1;
		end
		else clk_counter <= clk_counter + 1;
	end
end

// simulate an approximate 48MHz clock, so each cycle is 20.83333333333333ns ~= 21ns
// pulsing every ~21ns. so flipping every ~10.5ns
always #1.05 sys_clk = !sys_clk;

initial  begin
 	$display("\t\ttime,\tlat,\tclk"); 
 	$monitor("%d,\t%b,\t%b",$time, snes_lat, snes_clk); 
 end 

// stop simulation after about 1 second
initial #100000000 $finish;

endmodule
