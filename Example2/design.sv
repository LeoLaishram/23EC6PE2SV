//------------------------------------------------------------------------------
//File       : Design.sv
//Author     : Leo Laishram (1BM23EC126)
//Created    : 2026-02-24
//Module     : mux2to1
//Project    : SystemVerilog and Verification (23EC6PE2SV),
//Faculty    : Prof. Ajaykumar Devarapalli
//Description: 2-input Multipexer used for basic functional coverage example.
//------------------------------------------------------------------------------

module mux2to1 (
  input logic [7:0] a, b,
  input logic sel,
  output logic [7:0] y
);
  assign y = sel ? b : a;
endmodule
