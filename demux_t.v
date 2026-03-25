module demux_t(
    input[7:0]Y,
    input[1:0] Sel,
    input Enable,
    output [7:0] A, [7:0] B, [7:0] C, [7:0] D
);
assign A = Enable ? (Sel == 0 ? Y : 0):0;
assign B = Enable ? (Sel == 1 ? Y : 0):0;
assign C = Enable ? (Sel == 2 ? Y : 0):0;
assign D = Enable ? (Sel == 3 ? Y : 0):0;

endmodule
