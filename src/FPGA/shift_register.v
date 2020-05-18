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
parameter line_high = 8'hFF;

// initial state is all 1's
// no buttons pressed means all bits high in (S)NES land
initial begin
    bit_data = line_high;
    bit_out = bit_data[7];
end

// handle the actual loading and shifting
always @(posedge load or posedge clk) begin
    if(load) bit_data <= next_frame; // load
    else begin
        bit_data <= {bit_data[6:0], overread}; // lshift of 1. fill with overread as it empties.
        bit_out <= bit_data[7]; // highest bit that is getting "clocked out" will be stored in the output register
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
parameter line_high = 16'hFFFF;

// initial state is all 1's
// no buttons pressed means all bits high in (S)NES land
initial begin
    bit_data = line_high;
    bit_out = bit_data[15];
end

// handle the actual loading and shifting
always @(posedge load or posedge clk) begin
    if(load) bit_data <= next_frame; // load
    else begin
        bit_data <= {bit_data[14:0], overread}; // lshift of 1. fill with overread as it empties.
        bit_out <= bit_data[15]; // highest bit that is getting "clocked out" will be stored in the output register
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
parameter line_high = 32'hFFFFFFFF;

// initial state is all 1's
// no buttons pressed means all bits high in (S)NES land
initial begin
    bit_data = line_high;
    bit_out = bit_data[31];
end

// handle the actual loading and shifting
always @(posedge load or posedge clk) begin
    if(load) bit_data <= next_frame; // load
    else begin
        bit_data <= {bit_data[30:0], overread}; // lshift of 1. fill with overread as it empties.
        bit_out <= bit_data[31]; // highest bit that is getting "clocked out" will be stored in the output register
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
parameter line_high = 64'hFFFFFFFFFFFFFFFF;

// initial state is all 1's
// no buttons pressed means all bits high in (S)NES land
initial begin
    bit_data = line_high;
    bit_out = bit_data[63];
end

// handle the actual loading and shifting
always @(posedge load or posedge clk) begin
    if(load) bit_data <= next_frame; // load
    else begin
        bit_data <= {bit_data[62:0], overread}; // lshift of 1. fill with overread as it empties.
        bit_out <= bit_data[63]; // highest bit that is getting "clocked out" will be stored in the output register
    end
end

endmodule
