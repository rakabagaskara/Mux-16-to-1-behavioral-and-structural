// Dewa Raka Bagaskara
// 21120122130060
// SDL A

module mux2to1gate (input a, input b, input sel, output y);
     wire sel_not, a_and, b_and;
     not (sel_not, sel);
     and (a_and, a, sel_not);
     and (b_and, b, sel);
     or (y, a_and, b_and);
endmodule
