// Dewa Raka Bagaskara
// 21120122130060
// SDL A

module mux4to1gate (input a, input b, input c, input d, input [1:0] sel,
output y);
     wire mux1_out, mux2_out;
     mux2to1gate mux1 (.a(a), .b(b), .sel(sel[0]), .y(mux1_out));
     mux2to1gate mux2 (.a(c), .b(d), .sel(sel[0]), .y(mux2_out));
     mux2to1gate mux3 (.a(mux1_out), .b(mux2_out), .sel(sel[1]), .y(y));
endmodule
