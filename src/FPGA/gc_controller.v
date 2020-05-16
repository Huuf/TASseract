// Ownasaurus
// Designed to simulate a N64/GC controller
// Only has one bidirectional data line
// For NES, lines are actually named d0, d2, and d3, respectively
// For SNES, lines are actually named d0, d1, and I/O, respectively

module gc_controller(
  inout d,
  input [63:0] data
);

enum { bit1, bit2, bit3, bit4, bit5, bit6, bit7, bit8} bit_state;
enum { byte1, byte2, byte3} byte_state;
enum { read, write } io_state;

//TODO: create latch signal when need to push new frame of data
reg in_out_mode; // let 0 be input and 1 be output, arbitrarily 

initial begin
    in_out_mode = io_state.read; // start off listening for console commands
end

shift_register_64 sr(clk, lat, data, d);

always @(negedge d) begin
    //keep track of state
end

endmodule
