// Ownasaurus
// Designed to simulate a N64/GC controller
// Only has one bidirectional data line
// For NES, lines are actually named d0, d2, and d3, respectively
// For SNES, lines are actually named d0, d1, and I/O, respectively

`include "gc_pulse.v"

module gc_controller(
	input sys_clk,
	inout d,
	input [63:0] data
);

enum { pulse_none, pulse_busy } pulse_state;
enum { bit_none, bit1, bit2, bit3, bit4, bit5, bit6, bit7, bit8} bit_state;
enum { byte_none, byte1, byte2, byte3} byte_state;
enum { read, write } io_state;
enum { controller_none, controller_identity, controller_data } controller_state;

typedef enum bit [1:0] { bit_zero = 2'b00, bit_one = 2'b01, bit_stop = 2'b11 } bit_type;

reg send_pulse_trigger;
wire are_we_transmitting;

gc_pulse gcp(sys_clk, send_pulse_trigger, bit_type, d, are_we_transmitting);

initial begin
	bit_type = bit_one;
	send_pulse_trigger = 1'b0;
    io_state = read; // start off listening for commands from the console
    controller_state = controller_none;
    byte_state = byte_none;
    bit_state = bit_none;
    pulse_state = pulse_none;
end

shift_register_64 sr(clk, lat, data, d);

always @(negedge sys_clk) begin
	case(io_state)
		read: begin
		end
		write: begin
			case(controller_state)
				controller_none: begin
				end
				controller_identity: begin
					case(pulse_state)
						pulse_none: begin
							// send the next bit based on bit_state
						end
						pulse_busy: begin
							if(!are_we_transmitting) begin
								pulse_state <= pulse_none;
								if(bit_state == bit8) bit_state <= bit_none;
								else bit_state <= bit_state + 1;
							end
						end
					endcase
				end
				controller_data: begin
				end
			endcase
		end
	endcase
    //keep track of state
end

endmodule
