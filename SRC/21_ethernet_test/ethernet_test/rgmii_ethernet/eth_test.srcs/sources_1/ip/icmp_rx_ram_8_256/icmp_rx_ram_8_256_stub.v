// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Apr 27 15:29:01 2018
// Host        : ALINX000008-PC running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub -rename_top icmp_rx_ram_8_256 -prefix
//               icmp_rx_ram_8_256_ icmp_rx_ram_8_256_stub.v
// Design      : icmp_rx_ram_8_256
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tfgg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module icmp_rx_ram_8_256(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[7:0],dina[7:0],clkb,addrb[7:0],doutb[7:0]" */;
  input clka;
  input [0:0]wea;
  input [7:0]addra;
  input [7:0]dina;
  input clkb;
  input [7:0]addrb;
  output [7:0]doutb;
endmodule
