module demux_one_bit(
    input Y,
    input[1:0] Sel,
    input Enable,
    output A, B, C, D
);
assign A = Enable ? (Sel == 0 ? Y : 0):0;
assign B = Enable ? (Sel == 1 ? Y : 0):0;
assign C = Enable ? (Sel == 2 ? Y : 0):0;
assign D = Enable ? (Sel == 3 ? Y : 0):0;

endmodule
