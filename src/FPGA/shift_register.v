// Ownasaurus
// Many different bit-width shift registers

module shift_register_8(
  input clk,
  input load, // latch
  input [7:0] next_frame,
  input overread,
  output reg bit_out
);

reg [7:0] bit_data;

// initial state is all 1's
// no buttons pressed means all bits high in (S)NES land
initial begin
    bit_data = 8'hF; 
    bit_out = 1'b1;
end

// handle the actual loading and shifting
always @(posedge load or posedge clk) begin
    if(load) bit_data <= next_frame; // load
    else begin
        bit_data <= {bit_data[6:0], overread}; // lshift of 1. fill with overread as it empties.
        bit_out <= bit_data[7] // highest bit that is getting "clocked out" will be stored in the output register
    end
end

endmodule

module shift_register_16(
  input clk,
  input load, // latch
  input [15:0] next_frame,
  input overread,
  output reg bit_out
);

reg [15:0] bit_data;

// initial state is all 1's
// no buttons pressed means all bits high in (S)NES land
initial begin
    bit_data = 16'hFF; 
    bit_out = 1'b1;
end

// handle the actual loading and shifting
always @(posedge load or posedge clk) begin
    if(load) bit_data <= next_frame; // load
    else begin
        bit_data <= {bit_data[14:0], overread}; // lshift of 1. fill with overread as it empties.
        bit_out <= bit_data[15] // highest bit that is getting "clocked out" will be stored in the output register
    end
end

endmodule

module shift_register_32(
  input clk,
  input load, // latch
  input [31:0] next_frame,
  input overread,
  output reg bit_out
);

reg [31:0] bit_data; // 32 bits wide to support peripherals such as SNES mouse

// initial state is all 1's
// no buttons pressed means all bits high in (S)NES land
initial begin
    bit_data = 32'hFFFF; 
    bit_out = 1'b1;
end

// handle the actual loading and shifting
always @(posedge load or posedge clk) begin
    if(load) bit_data <= next_frame; // load
    else begin
        bit_data <= {bit_data[30:0], overread}; // lshift of 1. fill with overread as it empties.
        bit_out <= bit_data[31] // highest bit that is getting "clocked out" will be stored in the output register
    end
end

endmodule

module shift_register_64(
  input clk,
  input load, // latch
  input [63:0] next_frame,
  input overread,
  output reg bit_out
);

reg [63:0] bit_data; // 32 bits wide to support gamecube data width

// initial state is all 1's
// no buttons pressed means all bits high in (S)NES land
initial begin
    bit_data = 64'hFFFFFFFF; 
    bit_out = 1'b1;
end

// handle the actual loading and shifting
always @(posedge load or posedge clk) begin
    if(load) bit_data <= next_frame; // load
    else begin
        bit_data <= {bit_data[62:0], overread}; // lshift of 1. fill with overread as it empties.
        bit_out <= bit_data[63] // highest bit that is getting "clocked out" will be stored in the output register
    end
end

endmodule
