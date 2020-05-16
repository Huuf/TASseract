// Ownasaurus
// Designed to simulate a 3-data-line (S)NES controller
// We refer to these as d0, d1, and d2 for simplicity
// For NES, lines are actually named d0, d2, and d3, respectively
// For SNES, lines are actually named d0, d1, and I/O, respectively

module snes_controller(
  input clk,
  input lat,
  input [31:0] data0,
  input [31:0] data1,
  input [31:0] data2,
  output d0,
  output d1,
  output d2
);

shift_register_32 sr0(clk, lat, data0, 1, d0);
shift_register_32 sr1(clk, lat, data1, 1, d1);
shift_register_32 sr2(clk, lat, data2, 1, d2);

endmodule
