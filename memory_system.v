module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

wire [7:0]w0;
wire [7:0]w1;
wire [7:0]w2;
wire [7:0]w3;
wire [7:0]w4;

wire [7:0]w5;
wire [7:0]w6;
wire [7:0]w7;

wire w9;
wire w10;
wire w11;
wire w12;

byte_memory byte0(
    .data(w0),
    .store(w9),
    .memory(w4)
);

byte_memory byte1(
    .data(w1),
    .store(w10),
    .memory(w5)
);

byte_memory byte2(
    .data(w2),
    .store(w11),
    .memory(w6)
);

byte_memory byte3(
    .data(w3),
    .store(w12),
    .memory(w7)
);

demux_one_bit dob(
    .A(w9),
    .B(w10),
    .C(w11),
    .D(w12),
    .Sel(addr),
    .Enable(1),
    .Y(store)
);

demux_t demux0(
    .A(w0),
    .B(w1),
    .C(w2),
    .D(w3),
    .Y(data),
    .Enable(1),
    .Sel(addr)
);

mux mux0(
    .A(w4),
    .B(w5),
    .C(w6),
    .D(w7),
    .Sel(addr),
    .Enable(1),
    .Y(memory)
);

endmodule