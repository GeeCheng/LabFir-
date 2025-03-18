// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Tue Mar 18 00:29:16 2025
// Host        : ubuntu2004 running 64-bit Ubuntu 20.04.4 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/ubuntu/Vivado/Fir/Fir.sim/sim_1/synth/func/xsim/fir_tb_func_synth.v
// Design      : fir
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* APDONE = "2'b10" *) (* APIDLE = "2'b01" *) (* APINIT = "2'b00" *) 
(* SMDONE = "1" *) (* SMIDLE = "0" *) (* SSDONE = "1'b1" *) 
(* SSIDLE = "1'b0" *) (* Tape_Num = "32" *) (* pADDR_WIDTH = "12" *) 
(* pDATA_WIDTH = "32" *) 
(* NotValidForBitStream *)
module fir
   (awready,
    wready,
    awvalid,
    awaddr,
    wvalid,
    wdata,
    arready,
    rready,
    arvalid,
    araddr,
    rvalid,
    rdata,
    ss_tvalid,
    ss_tdata,
    ss_tlast,
    ss_tready,
    sm_tready,
    sm_tvalid,
    sm_tdata,
    sm_tlast,
    tap_WE,
    tap_EN,
    tap_Di,
    tap_A,
    tap_Do,
    data_WE,
    data_EN,
    data_Di,
    data_A,
    data_Do,
    axis_clk,
    axis_rst_n);
  output awready;
  output wready;
  input awvalid;
  input [11:0]awaddr;
  input wvalid;
  input [31:0]wdata;
  output arready;
  input rready;
  input arvalid;
  input [11:0]araddr;
  output rvalid;
  output [31:0]rdata;
  input ss_tvalid;
  input [31:0]ss_tdata;
  input ss_tlast;
  output ss_tready;
  input sm_tready;
  output sm_tvalid;
  output [31:0]sm_tdata;
  output sm_tlast;
  output [3:0]tap_WE;
  output tap_EN;
  output [31:0]tap_Di;
  output [11:0]tap_A;
  input [31:0]tap_Do;
  output [3:0]data_WE;
  output data_EN;
  output [31:0]data_Di;
  output [11:0]data_A;
  input [31:0]data_Do;
  input axis_clk;
  input axis_rst_n;

  wire [9:0]A;
  wire [31:0]RAM_0x10;
  wire RAM_0x100;
  wire RAM_0x140;
  wire \RAM_0x14[31]_i_2_n_0 ;
  wire \RAM_0x14_reg_n_0_[0] ;
  wire \RAM_0x14_reg_n_0_[10] ;
  wire \RAM_0x14_reg_n_0_[11] ;
  wire \RAM_0x14_reg_n_0_[12] ;
  wire \RAM_0x14_reg_n_0_[13] ;
  wire \RAM_0x14_reg_n_0_[14] ;
  wire \RAM_0x14_reg_n_0_[15] ;
  wire \RAM_0x14_reg_n_0_[16] ;
  wire \RAM_0x14_reg_n_0_[17] ;
  wire \RAM_0x14_reg_n_0_[18] ;
  wire \RAM_0x14_reg_n_0_[19] ;
  wire \RAM_0x14_reg_n_0_[1] ;
  wire \RAM_0x14_reg_n_0_[20] ;
  wire \RAM_0x14_reg_n_0_[21] ;
  wire \RAM_0x14_reg_n_0_[22] ;
  wire \RAM_0x14_reg_n_0_[23] ;
  wire \RAM_0x14_reg_n_0_[24] ;
  wire \RAM_0x14_reg_n_0_[25] ;
  wire \RAM_0x14_reg_n_0_[26] ;
  wire \RAM_0x14_reg_n_0_[27] ;
  wire \RAM_0x14_reg_n_0_[28] ;
  wire \RAM_0x14_reg_n_0_[29] ;
  wire \RAM_0x14_reg_n_0_[2] ;
  wire \RAM_0x14_reg_n_0_[30] ;
  wire \RAM_0x14_reg_n_0_[31] ;
  wire \RAM_0x14_reg_n_0_[3] ;
  wire \RAM_0x14_reg_n_0_[4] ;
  wire \RAM_0x14_reg_n_0_[5] ;
  wire \RAM_0x14_reg_n_0_[6] ;
  wire \RAM_0x14_reg_n_0_[7] ;
  wire \RAM_0x14_reg_n_0_[8] ;
  wire \RAM_0x14_reg_n_0_[9] ;
  wire \ap_control[1]_i_2_n_0 ;
  wire \ap_control[2]_i_2_n_0 ;
  wire \ap_control[2]_i_3_n_0 ;
  wire [2:0]ap_control_next;
  wire \ap_control_reg_n_0_[0] ;
  wire ap_done;
  wire ap_idle;
  wire [1:0]ap_state;
  wire \ap_state[0]_i_1_n_0 ;
  wire \ap_state[1]_i_1_n_0 ;
  wire [11:0]araddr;
  wire [11:0]araddr_IBUF;
  wire [11:0]araddr_buffer;
  wire araddr_buffer0;
  wire araddr_buffer_is_full;
  wire araddr_buffer_is_full_i_1_n_0;
  wire arready;
  wire arready_OBUF;
  wire arready_reg0;
  wire arvalid;
  wire arvalid_IBUF;
  wire [11:0]awaddr;
  wire [11:0]awaddr_IBUF;
  wire [11:0]awaddr_buffer;
  wire awaddr_buffer0;
  wire awaddr_buffer_is_full;
  wire awaddr_buffer_is_full_i_1_n_0;
  wire awready;
  wire awready_OBUF;
  wire awready_reg0;
  wire awvalid;
  wire awvalid_IBUF;
  wire axis_clk;
  wire axis_clk_IBUF;
  wire axis_clk_IBUF_BUFG;
  wire axis_rst_n;
  wire axis_rst_n_IBUF;
  wire [11:0]data_A;
  wire [11:2]data_A_OBUF;
  wire \data_A_OBUF[11]_inst_i_10_n_0 ;
  wire \data_A_OBUF[11]_inst_i_11_n_0 ;
  wire \data_A_OBUF[11]_inst_i_12_n_0 ;
  wire \data_A_OBUF[11]_inst_i_13_n_0 ;
  wire \data_A_OBUF[11]_inst_i_14_n_0 ;
  wire \data_A_OBUF[11]_inst_i_14_n_1 ;
  wire \data_A_OBUF[11]_inst_i_14_n_2 ;
  wire \data_A_OBUF[11]_inst_i_14_n_3 ;
  wire \data_A_OBUF[11]_inst_i_15_n_0 ;
  wire \data_A_OBUF[11]_inst_i_15_n_1 ;
  wire \data_A_OBUF[11]_inst_i_15_n_2 ;
  wire \data_A_OBUF[11]_inst_i_15_n_3 ;
  wire \data_A_OBUF[11]_inst_i_16_n_0 ;
  wire \data_A_OBUF[11]_inst_i_17_n_0 ;
  wire \data_A_OBUF[11]_inst_i_18_n_0 ;
  wire \data_A_OBUF[11]_inst_i_19_n_0 ;
  wire \data_A_OBUF[11]_inst_i_20_n_0 ;
  wire \data_A_OBUF[11]_inst_i_20_n_1 ;
  wire \data_A_OBUF[11]_inst_i_20_n_2 ;
  wire \data_A_OBUF[11]_inst_i_20_n_3 ;
  wire \data_A_OBUF[11]_inst_i_21_n_0 ;
  wire \data_A_OBUF[11]_inst_i_21_n_1 ;
  wire \data_A_OBUF[11]_inst_i_21_n_2 ;
  wire \data_A_OBUF[11]_inst_i_21_n_3 ;
  wire \data_A_OBUF[11]_inst_i_22_n_0 ;
  wire \data_A_OBUF[11]_inst_i_22_n_1 ;
  wire \data_A_OBUF[11]_inst_i_22_n_2 ;
  wire \data_A_OBUF[11]_inst_i_22_n_3 ;
  wire \data_A_OBUF[11]_inst_i_23_n_0 ;
  wire \data_A_OBUF[11]_inst_i_24_n_0 ;
  wire \data_A_OBUF[11]_inst_i_25_n_0 ;
  wire \data_A_OBUF[11]_inst_i_26_n_0 ;
  wire \data_A_OBUF[11]_inst_i_27_n_0 ;
  wire \data_A_OBUF[11]_inst_i_27_n_1 ;
  wire \data_A_OBUF[11]_inst_i_27_n_2 ;
  wire \data_A_OBUF[11]_inst_i_27_n_3 ;
  wire \data_A_OBUF[11]_inst_i_28_n_0 ;
  wire \data_A_OBUF[11]_inst_i_29_n_0 ;
  wire \data_A_OBUF[11]_inst_i_2_n_0 ;
  wire \data_A_OBUF[11]_inst_i_2_n_1 ;
  wire \data_A_OBUF[11]_inst_i_2_n_2 ;
  wire \data_A_OBUF[11]_inst_i_2_n_3 ;
  wire \data_A_OBUF[11]_inst_i_30_n_0 ;
  wire \data_A_OBUF[11]_inst_i_31_n_0 ;
  wire \data_A_OBUF[11]_inst_i_32_n_0 ;
  wire \data_A_OBUF[11]_inst_i_33_n_0 ;
  wire \data_A_OBUF[11]_inst_i_34_n_0 ;
  wire \data_A_OBUF[11]_inst_i_35_n_0 ;
  wire \data_A_OBUF[11]_inst_i_36_n_0 ;
  wire \data_A_OBUF[11]_inst_i_36_n_1 ;
  wire \data_A_OBUF[11]_inst_i_36_n_2 ;
  wire \data_A_OBUF[11]_inst_i_36_n_3 ;
  wire \data_A_OBUF[11]_inst_i_37_n_0 ;
  wire \data_A_OBUF[11]_inst_i_37_n_1 ;
  wire \data_A_OBUF[11]_inst_i_37_n_2 ;
  wire \data_A_OBUF[11]_inst_i_37_n_3 ;
  wire \data_A_OBUF[11]_inst_i_38_n_0 ;
  wire \data_A_OBUF[11]_inst_i_39_n_0 ;
  wire \data_A_OBUF[11]_inst_i_3_n_3 ;
  wire \data_A_OBUF[11]_inst_i_40_n_0 ;
  wire \data_A_OBUF[11]_inst_i_41_n_0 ;
  wire \data_A_OBUF[11]_inst_i_42_n_0 ;
  wire \data_A_OBUF[11]_inst_i_42_n_1 ;
  wire \data_A_OBUF[11]_inst_i_42_n_2 ;
  wire \data_A_OBUF[11]_inst_i_42_n_3 ;
  wire \data_A_OBUF[11]_inst_i_43_n_0 ;
  wire \data_A_OBUF[11]_inst_i_44_n_0 ;
  wire \data_A_OBUF[11]_inst_i_45_n_0 ;
  wire \data_A_OBUF[11]_inst_i_46_n_0 ;
  wire \data_A_OBUF[11]_inst_i_47_n_0 ;
  wire \data_A_OBUF[11]_inst_i_48_n_0 ;
  wire \data_A_OBUF[11]_inst_i_49_n_0 ;
  wire \data_A_OBUF[11]_inst_i_4_n_0 ;
  wire \data_A_OBUF[11]_inst_i_4_n_1 ;
  wire \data_A_OBUF[11]_inst_i_4_n_2 ;
  wire \data_A_OBUF[11]_inst_i_4_n_3 ;
  wire \data_A_OBUF[11]_inst_i_50_n_0 ;
  wire \data_A_OBUF[11]_inst_i_51_n_0 ;
  wire \data_A_OBUF[11]_inst_i_51_n_1 ;
  wire \data_A_OBUF[11]_inst_i_51_n_2 ;
  wire \data_A_OBUF[11]_inst_i_51_n_3 ;
  wire \data_A_OBUF[11]_inst_i_52_n_0 ;
  wire \data_A_OBUF[11]_inst_i_52_n_1 ;
  wire \data_A_OBUF[11]_inst_i_52_n_2 ;
  wire \data_A_OBUF[11]_inst_i_52_n_3 ;
  wire \data_A_OBUF[11]_inst_i_53_n_0 ;
  wire \data_A_OBUF[11]_inst_i_54_n_0 ;
  wire \data_A_OBUF[11]_inst_i_55_n_0 ;
  wire \data_A_OBUF[11]_inst_i_56_n_0 ;
  wire \data_A_OBUF[11]_inst_i_57_n_0 ;
  wire \data_A_OBUF[11]_inst_i_57_n_1 ;
  wire \data_A_OBUF[11]_inst_i_57_n_2 ;
  wire \data_A_OBUF[11]_inst_i_57_n_3 ;
  wire \data_A_OBUF[11]_inst_i_58_n_0 ;
  wire \data_A_OBUF[11]_inst_i_59_n_0 ;
  wire \data_A_OBUF[11]_inst_i_5_n_2 ;
  wire \data_A_OBUF[11]_inst_i_5_n_3 ;
  wire \data_A_OBUF[11]_inst_i_60_n_0 ;
  wire \data_A_OBUF[11]_inst_i_61_n_0 ;
  wire \data_A_OBUF[11]_inst_i_62_n_0 ;
  wire \data_A_OBUF[11]_inst_i_63_n_0 ;
  wire \data_A_OBUF[11]_inst_i_64_n_0 ;
  wire \data_A_OBUF[11]_inst_i_65_n_0 ;
  wire \data_A_OBUF[11]_inst_i_66_n_0 ;
  wire \data_A_OBUF[11]_inst_i_66_n_1 ;
  wire \data_A_OBUF[11]_inst_i_66_n_2 ;
  wire \data_A_OBUF[11]_inst_i_66_n_3 ;
  wire \data_A_OBUF[11]_inst_i_67_n_0 ;
  wire \data_A_OBUF[11]_inst_i_67_n_1 ;
  wire \data_A_OBUF[11]_inst_i_67_n_2 ;
  wire \data_A_OBUF[11]_inst_i_67_n_3 ;
  wire \data_A_OBUF[11]_inst_i_68_n_0 ;
  wire \data_A_OBUF[11]_inst_i_69_n_0 ;
  wire \data_A_OBUF[11]_inst_i_6_n_0 ;
  wire \data_A_OBUF[11]_inst_i_6_n_1 ;
  wire \data_A_OBUF[11]_inst_i_6_n_2 ;
  wire \data_A_OBUF[11]_inst_i_6_n_3 ;
  wire \data_A_OBUF[11]_inst_i_70_n_0 ;
  wire \data_A_OBUF[11]_inst_i_71_n_0 ;
  wire \data_A_OBUF[11]_inst_i_72_n_0 ;
  wire \data_A_OBUF[11]_inst_i_73_n_0 ;
  wire \data_A_OBUF[11]_inst_i_74_n_0 ;
  wire \data_A_OBUF[11]_inst_i_75_n_0 ;
  wire \data_A_OBUF[11]_inst_i_76_n_0 ;
  wire \data_A_OBUF[11]_inst_i_77_n_0 ;
  wire \data_A_OBUF[11]_inst_i_78_n_0 ;
  wire \data_A_OBUF[11]_inst_i_79_n_0 ;
  wire \data_A_OBUF[11]_inst_i_7_n_0 ;
  wire \data_A_OBUF[11]_inst_i_80_n_0 ;
  wire \data_A_OBUF[11]_inst_i_80_n_1 ;
  wire \data_A_OBUF[11]_inst_i_80_n_2 ;
  wire \data_A_OBUF[11]_inst_i_80_n_3 ;
  wire \data_A_OBUF[11]_inst_i_81_n_0 ;
  wire \data_A_OBUF[11]_inst_i_81_n_1 ;
  wire \data_A_OBUF[11]_inst_i_81_n_2 ;
  wire \data_A_OBUF[11]_inst_i_81_n_3 ;
  wire \data_A_OBUF[11]_inst_i_82_n_0 ;
  wire \data_A_OBUF[11]_inst_i_83_n_0 ;
  wire \data_A_OBUF[11]_inst_i_84_n_0 ;
  wire \data_A_OBUF[11]_inst_i_85_n_0 ;
  wire \data_A_OBUF[11]_inst_i_87_n_0 ;
  wire \data_A_OBUF[11]_inst_i_88_n_0 ;
  wire \data_A_OBUF[11]_inst_i_89_n_0 ;
  wire \data_A_OBUF[11]_inst_i_8_n_0 ;
  wire \data_A_OBUF[11]_inst_i_90_n_0 ;
  wire \data_A_OBUF[11]_inst_i_9_n_0 ;
  wire \data_A_OBUF[5]_inst_i_10_n_0 ;
  wire \data_A_OBUF[5]_inst_i_2_n_0 ;
  wire \data_A_OBUF[5]_inst_i_2_n_1 ;
  wire \data_A_OBUF[5]_inst_i_2_n_2 ;
  wire \data_A_OBUF[5]_inst_i_2_n_3 ;
  wire \data_A_OBUF[5]_inst_i_3_n_0 ;
  wire \data_A_OBUF[5]_inst_i_4_n_0 ;
  wire \data_A_OBUF[5]_inst_i_5_n_0 ;
  wire \data_A_OBUF[5]_inst_i_6_n_0 ;
  wire \data_A_OBUF[5]_inst_i_7_n_0 ;
  wire \data_A_OBUF[5]_inst_i_8_n_0 ;
  wire \data_A_OBUF[5]_inst_i_9_n_0 ;
  wire \data_A_OBUF[9]_inst_i_10_n_0 ;
  wire \data_A_OBUF[9]_inst_i_11_n_0 ;
  wire \data_A_OBUF[9]_inst_i_2_n_0 ;
  wire \data_A_OBUF[9]_inst_i_2_n_1 ;
  wire \data_A_OBUF[9]_inst_i_2_n_2 ;
  wire \data_A_OBUF[9]_inst_i_2_n_3 ;
  wire \data_A_OBUF[9]_inst_i_3_n_0 ;
  wire \data_A_OBUF[9]_inst_i_4_n_0 ;
  wire \data_A_OBUF[9]_inst_i_5_n_0 ;
  wire \data_A_OBUF[9]_inst_i_6_n_0 ;
  wire \data_A_OBUF[9]_inst_i_7_n_0 ;
  wire \data_A_OBUF[9]_inst_i_8_n_0 ;
  wire \data_A_OBUF[9]_inst_i_9_n_0 ;
  wire [31:0]data_Di;
  wire [31:0]data_Di_OBUF;
  wire [31:0]data_Do;
  wire [31:0]data_Do_IBUF;
  wire data_EN;
  wire [3:0]data_WE;
  wire [0:0]data_WE_OBUF;
  wire \data_input_length[0]_i_1_n_0 ;
  wire \data_input_length[0]_i_3_n_0 ;
  wire \data_input_length[0]_i_4_n_0 ;
  wire \data_input_length[0]_i_5_n_0 ;
  wire \data_input_length[0]_i_6_n_0 ;
  wire \data_input_length[0]_i_7_n_0 ;
  wire \data_input_length[12]_i_2_n_0 ;
  wire \data_input_length[12]_i_3_n_0 ;
  wire \data_input_length[12]_i_4_n_0 ;
  wire \data_input_length[12]_i_5_n_0 ;
  wire \data_input_length[16]_i_2_n_0 ;
  wire \data_input_length[16]_i_3_n_0 ;
  wire \data_input_length[16]_i_4_n_0 ;
  wire \data_input_length[16]_i_5_n_0 ;
  wire \data_input_length[20]_i_2_n_0 ;
  wire \data_input_length[20]_i_3_n_0 ;
  wire \data_input_length[20]_i_4_n_0 ;
  wire \data_input_length[20]_i_5_n_0 ;
  wire \data_input_length[24]_i_2_n_0 ;
  wire \data_input_length[24]_i_3_n_0 ;
  wire \data_input_length[24]_i_4_n_0 ;
  wire \data_input_length[24]_i_5_n_0 ;
  wire \data_input_length[28]_i_2_n_0 ;
  wire \data_input_length[28]_i_3_n_0 ;
  wire \data_input_length[28]_i_4_n_0 ;
  wire \data_input_length[28]_i_5_n_0 ;
  wire \data_input_length[4]_i_2_n_0 ;
  wire \data_input_length[4]_i_3_n_0 ;
  wire \data_input_length[4]_i_4_n_0 ;
  wire \data_input_length[4]_i_5_n_0 ;
  wire \data_input_length[8]_i_2_n_0 ;
  wire \data_input_length[8]_i_3_n_0 ;
  wire \data_input_length[8]_i_4_n_0 ;
  wire \data_input_length[8]_i_5_n_0 ;
  wire [31:0]data_input_length_reg;
  wire \data_input_length_reg[0]_i_2_n_0 ;
  wire \data_input_length_reg[0]_i_2_n_1 ;
  wire \data_input_length_reg[0]_i_2_n_2 ;
  wire \data_input_length_reg[0]_i_2_n_3 ;
  wire \data_input_length_reg[0]_i_2_n_4 ;
  wire \data_input_length_reg[0]_i_2_n_5 ;
  wire \data_input_length_reg[0]_i_2_n_6 ;
  wire \data_input_length_reg[0]_i_2_n_7 ;
  wire \data_input_length_reg[12]_i_1_n_0 ;
  wire \data_input_length_reg[12]_i_1_n_1 ;
  wire \data_input_length_reg[12]_i_1_n_2 ;
  wire \data_input_length_reg[12]_i_1_n_3 ;
  wire \data_input_length_reg[12]_i_1_n_4 ;
  wire \data_input_length_reg[12]_i_1_n_5 ;
  wire \data_input_length_reg[12]_i_1_n_6 ;
  wire \data_input_length_reg[12]_i_1_n_7 ;
  wire \data_input_length_reg[16]_i_1_n_0 ;
  wire \data_input_length_reg[16]_i_1_n_1 ;
  wire \data_input_length_reg[16]_i_1_n_2 ;
  wire \data_input_length_reg[16]_i_1_n_3 ;
  wire \data_input_length_reg[16]_i_1_n_4 ;
  wire \data_input_length_reg[16]_i_1_n_5 ;
  wire \data_input_length_reg[16]_i_1_n_6 ;
  wire \data_input_length_reg[16]_i_1_n_7 ;
  wire \data_input_length_reg[20]_i_1_n_0 ;
  wire \data_input_length_reg[20]_i_1_n_1 ;
  wire \data_input_length_reg[20]_i_1_n_2 ;
  wire \data_input_length_reg[20]_i_1_n_3 ;
  wire \data_input_length_reg[20]_i_1_n_4 ;
  wire \data_input_length_reg[20]_i_1_n_5 ;
  wire \data_input_length_reg[20]_i_1_n_6 ;
  wire \data_input_length_reg[20]_i_1_n_7 ;
  wire \data_input_length_reg[24]_i_1_n_0 ;
  wire \data_input_length_reg[24]_i_1_n_1 ;
  wire \data_input_length_reg[24]_i_1_n_2 ;
  wire \data_input_length_reg[24]_i_1_n_3 ;
  wire \data_input_length_reg[24]_i_1_n_4 ;
  wire \data_input_length_reg[24]_i_1_n_5 ;
  wire \data_input_length_reg[24]_i_1_n_6 ;
  wire \data_input_length_reg[24]_i_1_n_7 ;
  wire \data_input_length_reg[28]_i_1_n_1 ;
  wire \data_input_length_reg[28]_i_1_n_2 ;
  wire \data_input_length_reg[28]_i_1_n_3 ;
  wire \data_input_length_reg[28]_i_1_n_4 ;
  wire \data_input_length_reg[28]_i_1_n_5 ;
  wire \data_input_length_reg[28]_i_1_n_6 ;
  wire \data_input_length_reg[28]_i_1_n_7 ;
  wire \data_input_length_reg[4]_i_1_n_0 ;
  wire \data_input_length_reg[4]_i_1_n_1 ;
  wire \data_input_length_reg[4]_i_1_n_2 ;
  wire \data_input_length_reg[4]_i_1_n_3 ;
  wire \data_input_length_reg[4]_i_1_n_4 ;
  wire \data_input_length_reg[4]_i_1_n_5 ;
  wire \data_input_length_reg[4]_i_1_n_6 ;
  wire \data_input_length_reg[4]_i_1_n_7 ;
  wire \data_input_length_reg[8]_i_1_n_0 ;
  wire \data_input_length_reg[8]_i_1_n_1 ;
  wire \data_input_length_reg[8]_i_1_n_2 ;
  wire \data_input_length_reg[8]_i_1_n_3 ;
  wire \data_input_length_reg[8]_i_1_n_4 ;
  wire \data_input_length_reg[8]_i_1_n_5 ;
  wire \data_input_length_reg[8]_i_1_n_6 ;
  wire \data_input_length_reg[8]_i_1_n_7 ;
  wire \data_output_length[0]_i_1_n_0 ;
  wire \data_output_length[0]_i_3_n_0 ;
  wire \data_output_length[0]_i_4_n_0 ;
  wire \data_output_length[0]_i_5_n_0 ;
  wire \data_output_length[0]_i_6_n_0 ;
  wire \data_output_length[0]_i_7_n_0 ;
  wire \data_output_length[12]_i_2_n_0 ;
  wire \data_output_length[12]_i_3_n_0 ;
  wire \data_output_length[12]_i_4_n_0 ;
  wire \data_output_length[12]_i_5_n_0 ;
  wire \data_output_length[16]_i_2_n_0 ;
  wire \data_output_length[16]_i_3_n_0 ;
  wire \data_output_length[16]_i_4_n_0 ;
  wire \data_output_length[16]_i_5_n_0 ;
  wire \data_output_length[20]_i_2_n_0 ;
  wire \data_output_length[20]_i_3_n_0 ;
  wire \data_output_length[20]_i_4_n_0 ;
  wire \data_output_length[20]_i_5_n_0 ;
  wire \data_output_length[24]_i_2_n_0 ;
  wire \data_output_length[24]_i_3_n_0 ;
  wire \data_output_length[24]_i_4_n_0 ;
  wire \data_output_length[24]_i_5_n_0 ;
  wire \data_output_length[28]_i_2_n_0 ;
  wire \data_output_length[28]_i_3_n_0 ;
  wire \data_output_length[28]_i_4_n_0 ;
  wire \data_output_length[28]_i_5_n_0 ;
  wire \data_output_length[4]_i_2_n_0 ;
  wire \data_output_length[4]_i_3_n_0 ;
  wire \data_output_length[4]_i_4_n_0 ;
  wire \data_output_length[4]_i_5_n_0 ;
  wire \data_output_length[8]_i_2_n_0 ;
  wire \data_output_length[8]_i_3_n_0 ;
  wire \data_output_length[8]_i_4_n_0 ;
  wire \data_output_length[8]_i_5_n_0 ;
  wire [31:0]data_output_length_reg;
  wire \data_output_length_reg[0]_i_2_n_0 ;
  wire \data_output_length_reg[0]_i_2_n_1 ;
  wire \data_output_length_reg[0]_i_2_n_2 ;
  wire \data_output_length_reg[0]_i_2_n_3 ;
  wire \data_output_length_reg[0]_i_2_n_4 ;
  wire \data_output_length_reg[0]_i_2_n_5 ;
  wire \data_output_length_reg[0]_i_2_n_6 ;
  wire \data_output_length_reg[0]_i_2_n_7 ;
  wire \data_output_length_reg[12]_i_1_n_0 ;
  wire \data_output_length_reg[12]_i_1_n_1 ;
  wire \data_output_length_reg[12]_i_1_n_2 ;
  wire \data_output_length_reg[12]_i_1_n_3 ;
  wire \data_output_length_reg[12]_i_1_n_4 ;
  wire \data_output_length_reg[12]_i_1_n_5 ;
  wire \data_output_length_reg[12]_i_1_n_6 ;
  wire \data_output_length_reg[12]_i_1_n_7 ;
  wire \data_output_length_reg[16]_i_1_n_0 ;
  wire \data_output_length_reg[16]_i_1_n_1 ;
  wire \data_output_length_reg[16]_i_1_n_2 ;
  wire \data_output_length_reg[16]_i_1_n_3 ;
  wire \data_output_length_reg[16]_i_1_n_4 ;
  wire \data_output_length_reg[16]_i_1_n_5 ;
  wire \data_output_length_reg[16]_i_1_n_6 ;
  wire \data_output_length_reg[16]_i_1_n_7 ;
  wire \data_output_length_reg[20]_i_1_n_0 ;
  wire \data_output_length_reg[20]_i_1_n_1 ;
  wire \data_output_length_reg[20]_i_1_n_2 ;
  wire \data_output_length_reg[20]_i_1_n_3 ;
  wire \data_output_length_reg[20]_i_1_n_4 ;
  wire \data_output_length_reg[20]_i_1_n_5 ;
  wire \data_output_length_reg[20]_i_1_n_6 ;
  wire \data_output_length_reg[20]_i_1_n_7 ;
  wire \data_output_length_reg[24]_i_1_n_0 ;
  wire \data_output_length_reg[24]_i_1_n_1 ;
  wire \data_output_length_reg[24]_i_1_n_2 ;
  wire \data_output_length_reg[24]_i_1_n_3 ;
  wire \data_output_length_reg[24]_i_1_n_4 ;
  wire \data_output_length_reg[24]_i_1_n_5 ;
  wire \data_output_length_reg[24]_i_1_n_6 ;
  wire \data_output_length_reg[24]_i_1_n_7 ;
  wire \data_output_length_reg[28]_i_1_n_1 ;
  wire \data_output_length_reg[28]_i_1_n_2 ;
  wire \data_output_length_reg[28]_i_1_n_3 ;
  wire \data_output_length_reg[28]_i_1_n_4 ;
  wire \data_output_length_reg[28]_i_1_n_5 ;
  wire \data_output_length_reg[28]_i_1_n_6 ;
  wire \data_output_length_reg[28]_i_1_n_7 ;
  wire \data_output_length_reg[4]_i_1_n_0 ;
  wire \data_output_length_reg[4]_i_1_n_1 ;
  wire \data_output_length_reg[4]_i_1_n_2 ;
  wire \data_output_length_reg[4]_i_1_n_3 ;
  wire \data_output_length_reg[4]_i_1_n_4 ;
  wire \data_output_length_reg[4]_i_1_n_5 ;
  wire \data_output_length_reg[4]_i_1_n_6 ;
  wire \data_output_length_reg[4]_i_1_n_7 ;
  wire \data_output_length_reg[8]_i_1_n_0 ;
  wire \data_output_length_reg[8]_i_1_n_1 ;
  wire \data_output_length_reg[8]_i_1_n_2 ;
  wire \data_output_length_reg[8]_i_1_n_3 ;
  wire \data_output_length_reg[8]_i_1_n_4 ;
  wire \data_output_length_reg[8]_i_1_n_5 ;
  wire \data_output_length_reg[8]_i_1_n_6 ;
  wire \data_output_length_reg[8]_i_1_n_7 ;
  wire final_Y;
  wire [31:0]h_reg;
  wire [31:0]h_reg4;
  wire \h_reg[0]_i_1_n_0 ;
  wire \h_reg[10]_i_1_n_0 ;
  wire \h_reg[11]_i_1_n_0 ;
  wire \h_reg[12]_i_1_n_0 ;
  wire \h_reg[13]_i_1_n_0 ;
  wire \h_reg[14]_i_1_n_0 ;
  wire \h_reg[15]_i_1_n_0 ;
  wire \h_reg[16]_i_1_n_0 ;
  wire \h_reg[17]_i_1_n_0 ;
  wire \h_reg[18]_i_1_n_0 ;
  wire \h_reg[19]_i_1_n_0 ;
  wire \h_reg[1]_i_1_n_0 ;
  wire \h_reg[20]_i_1_n_0 ;
  wire \h_reg[21]_i_1_n_0 ;
  wire \h_reg[22]_i_1_n_0 ;
  wire \h_reg[23]_i_1_n_0 ;
  wire \h_reg[24]_i_1_n_0 ;
  wire \h_reg[25]_i_1_n_0 ;
  wire \h_reg[26]_i_1_n_0 ;
  wire \h_reg[27]_i_1_n_0 ;
  wire \h_reg[28]_i_1_n_0 ;
  wire \h_reg[29]_i_1_n_0 ;
  wire \h_reg[2]_i_1_n_0 ;
  wire \h_reg[30]_i_1_n_0 ;
  wire \h_reg[31]_i_1_n_0 ;
  wire \h_reg[3]_i_1_n_0 ;
  wire \h_reg[4]_i_1_n_0 ;
  wire \h_reg[5]_i_1_n_0 ;
  wire \h_reg[6]_i_1_n_0 ;
  wire \h_reg[7]_i_1_n_0 ;
  wire \h_reg[8]_i_1_n_0 ;
  wire \h_reg[9]_i_1_n_0 ;
  wire [7:2]init_addr;
  wire \init_addr[2]_i_1_n_0 ;
  wire \init_addr[3]_i_1_n_0 ;
  wire \init_addr[4]_i_1_n_0 ;
  wire \init_addr[5]_i_1_n_0 ;
  wire \init_addr[6]_i_1_n_0 ;
  wire \init_addr[7]_i_1_n_0 ;
  wire \init_addr[7]_i_2_n_0 ;
  wire \init_addr[7]_i_3_n_0 ;
  wire [5:0]k;
  wire \k[0]_i_2_n_0 ;
  wire \k[1]_i_2_n_0 ;
  wire \k[2]_i_2_n_0 ;
  wire \k[3]_i_2_n_0 ;
  wire \k[4]_i_2_n_0 ;
  wire \k[5]_i_10_n_0 ;
  wire \k[5]_i_11_n_0 ;
  wire \k[5]_i_17_n_0 ;
  wire \k[5]_i_19_n_0 ;
  wire \k[5]_i_1_n_0 ;
  wire \k[5]_i_22_n_0 ;
  wire \k[5]_i_23_n_0 ;
  wire \k[5]_i_3_n_0 ;
  wire \k[5]_i_4_n_0 ;
  wire \k[5]_i_5_n_0 ;
  wire \k[5]_i_6_n_0 ;
  wire \k[5]_i_7_n_0 ;
  wire \k[5]_i_8_n_0 ;
  wire \k[5]_i_9_n_0 ;
  wire [5:0]k_next;
  wire \k_reg[5]_i_12_n_0 ;
  wire \k_reg[5]_i_12_n_1 ;
  wire \k_reg[5]_i_12_n_2 ;
  wire \k_reg[5]_i_12_n_3 ;
  wire \k_reg[5]_i_12_n_4 ;
  wire \k_reg[5]_i_12_n_5 ;
  wire \k_reg[5]_i_12_n_6 ;
  wire \k_reg[5]_i_12_n_7 ;
  wire \k_reg[5]_i_13_n_0 ;
  wire \k_reg[5]_i_13_n_1 ;
  wire \k_reg[5]_i_13_n_2 ;
  wire \k_reg[5]_i_13_n_3 ;
  wire \k_reg[5]_i_13_n_4 ;
  wire \k_reg[5]_i_13_n_5 ;
  wire \k_reg[5]_i_13_n_6 ;
  wire \k_reg[5]_i_13_n_7 ;
  wire \k_reg[5]_i_14_n_0 ;
  wire \k_reg[5]_i_14_n_1 ;
  wire \k_reg[5]_i_14_n_2 ;
  wire \k_reg[5]_i_14_n_3 ;
  wire \k_reg[5]_i_14_n_4 ;
  wire \k_reg[5]_i_14_n_5 ;
  wire \k_reg[5]_i_14_n_6 ;
  wire \k_reg[5]_i_14_n_7 ;
  wire \k_reg[5]_i_15_n_2 ;
  wire \k_reg[5]_i_15_n_3 ;
  wire \k_reg[5]_i_15_n_5 ;
  wire \k_reg[5]_i_15_n_6 ;
  wire \k_reg[5]_i_15_n_7 ;
  wire \k_reg[5]_i_16_n_0 ;
  wire \k_reg[5]_i_16_n_1 ;
  wire \k_reg[5]_i_16_n_2 ;
  wire \k_reg[5]_i_16_n_3 ;
  wire \k_reg[5]_i_16_n_4 ;
  wire \k_reg[5]_i_16_n_5 ;
  wire \k_reg[5]_i_16_n_6 ;
  wire \k_reg[5]_i_16_n_7 ;
  wire \k_reg[5]_i_18_n_0 ;
  wire \k_reg[5]_i_18_n_1 ;
  wire \k_reg[5]_i_18_n_2 ;
  wire \k_reg[5]_i_18_n_3 ;
  wire \k_reg[5]_i_18_n_4 ;
  wire \k_reg[5]_i_18_n_5 ;
  wire \k_reg[5]_i_18_n_6 ;
  wire \k_reg[5]_i_20_n_0 ;
  wire \k_reg[5]_i_20_n_1 ;
  wire \k_reg[5]_i_20_n_2 ;
  wire \k_reg[5]_i_20_n_3 ;
  wire \k_reg[5]_i_20_n_4 ;
  wire \k_reg[5]_i_20_n_5 ;
  wire \k_reg[5]_i_20_n_6 ;
  wire \k_reg[5]_i_20_n_7 ;
  wire \k_reg[5]_i_21_n_0 ;
  wire \k_reg[5]_i_21_n_1 ;
  wire \k_reg[5]_i_21_n_2 ;
  wire \k_reg[5]_i_21_n_3 ;
  wire \k_reg[5]_i_21_n_4 ;
  wire \k_reg[5]_i_21_n_5 ;
  wire \k_reg[5]_i_21_n_6 ;
  wire \k_reg[5]_i_21_n_7 ;
  wire [31:0]m_tmp_reg;
  wire m_tmp_reg1__0_n_100;
  wire m_tmp_reg1__0_n_101;
  wire m_tmp_reg1__0_n_102;
  wire m_tmp_reg1__0_n_103;
  wire m_tmp_reg1__0_n_104;
  wire m_tmp_reg1__0_n_105;
  wire m_tmp_reg1__0_n_58;
  wire m_tmp_reg1__0_n_59;
  wire m_tmp_reg1__0_n_60;
  wire m_tmp_reg1__0_n_61;
  wire m_tmp_reg1__0_n_62;
  wire m_tmp_reg1__0_n_63;
  wire m_tmp_reg1__0_n_64;
  wire m_tmp_reg1__0_n_65;
  wire m_tmp_reg1__0_n_66;
  wire m_tmp_reg1__0_n_67;
  wire m_tmp_reg1__0_n_68;
  wire m_tmp_reg1__0_n_69;
  wire m_tmp_reg1__0_n_70;
  wire m_tmp_reg1__0_n_71;
  wire m_tmp_reg1__0_n_72;
  wire m_tmp_reg1__0_n_73;
  wire m_tmp_reg1__0_n_74;
  wire m_tmp_reg1__0_n_75;
  wire m_tmp_reg1__0_n_76;
  wire m_tmp_reg1__0_n_77;
  wire m_tmp_reg1__0_n_78;
  wire m_tmp_reg1__0_n_79;
  wire m_tmp_reg1__0_n_80;
  wire m_tmp_reg1__0_n_81;
  wire m_tmp_reg1__0_n_82;
  wire m_tmp_reg1__0_n_83;
  wire m_tmp_reg1__0_n_84;
  wire m_tmp_reg1__0_n_85;
  wire m_tmp_reg1__0_n_86;
  wire m_tmp_reg1__0_n_87;
  wire m_tmp_reg1__0_n_88;
  wire m_tmp_reg1__0_n_89;
  wire m_tmp_reg1__0_n_90;
  wire m_tmp_reg1__0_n_91;
  wire m_tmp_reg1__0_n_92;
  wire m_tmp_reg1__0_n_93;
  wire m_tmp_reg1__0_n_94;
  wire m_tmp_reg1__0_n_95;
  wire m_tmp_reg1__0_n_96;
  wire m_tmp_reg1__0_n_97;
  wire m_tmp_reg1__0_n_98;
  wire m_tmp_reg1__0_n_99;
  wire m_tmp_reg1__1_n_100;
  wire m_tmp_reg1__1_n_101;
  wire m_tmp_reg1__1_n_102;
  wire m_tmp_reg1__1_n_103;
  wire m_tmp_reg1__1_n_104;
  wire m_tmp_reg1__1_n_105;
  wire m_tmp_reg1__1_n_106;
  wire m_tmp_reg1__1_n_107;
  wire m_tmp_reg1__1_n_108;
  wire m_tmp_reg1__1_n_109;
  wire m_tmp_reg1__1_n_110;
  wire m_tmp_reg1__1_n_111;
  wire m_tmp_reg1__1_n_112;
  wire m_tmp_reg1__1_n_113;
  wire m_tmp_reg1__1_n_114;
  wire m_tmp_reg1__1_n_115;
  wire m_tmp_reg1__1_n_116;
  wire m_tmp_reg1__1_n_117;
  wire m_tmp_reg1__1_n_118;
  wire m_tmp_reg1__1_n_119;
  wire m_tmp_reg1__1_n_120;
  wire m_tmp_reg1__1_n_121;
  wire m_tmp_reg1__1_n_122;
  wire m_tmp_reg1__1_n_123;
  wire m_tmp_reg1__1_n_124;
  wire m_tmp_reg1__1_n_125;
  wire m_tmp_reg1__1_n_126;
  wire m_tmp_reg1__1_n_127;
  wire m_tmp_reg1__1_n_128;
  wire m_tmp_reg1__1_n_129;
  wire m_tmp_reg1__1_n_130;
  wire m_tmp_reg1__1_n_131;
  wire m_tmp_reg1__1_n_132;
  wire m_tmp_reg1__1_n_133;
  wire m_tmp_reg1__1_n_134;
  wire m_tmp_reg1__1_n_135;
  wire m_tmp_reg1__1_n_136;
  wire m_tmp_reg1__1_n_137;
  wire m_tmp_reg1__1_n_138;
  wire m_tmp_reg1__1_n_139;
  wire m_tmp_reg1__1_n_140;
  wire m_tmp_reg1__1_n_141;
  wire m_tmp_reg1__1_n_142;
  wire m_tmp_reg1__1_n_143;
  wire m_tmp_reg1__1_n_144;
  wire m_tmp_reg1__1_n_145;
  wire m_tmp_reg1__1_n_146;
  wire m_tmp_reg1__1_n_147;
  wire m_tmp_reg1__1_n_148;
  wire m_tmp_reg1__1_n_149;
  wire m_tmp_reg1__1_n_150;
  wire m_tmp_reg1__1_n_151;
  wire m_tmp_reg1__1_n_152;
  wire m_tmp_reg1__1_n_153;
  wire m_tmp_reg1__1_n_58;
  wire m_tmp_reg1__1_n_59;
  wire m_tmp_reg1__1_n_60;
  wire m_tmp_reg1__1_n_61;
  wire m_tmp_reg1__1_n_62;
  wire m_tmp_reg1__1_n_63;
  wire m_tmp_reg1__1_n_64;
  wire m_tmp_reg1__1_n_65;
  wire m_tmp_reg1__1_n_66;
  wire m_tmp_reg1__1_n_67;
  wire m_tmp_reg1__1_n_68;
  wire m_tmp_reg1__1_n_69;
  wire m_tmp_reg1__1_n_70;
  wire m_tmp_reg1__1_n_71;
  wire m_tmp_reg1__1_n_72;
  wire m_tmp_reg1__1_n_73;
  wire m_tmp_reg1__1_n_74;
  wire m_tmp_reg1__1_n_75;
  wire m_tmp_reg1__1_n_76;
  wire m_tmp_reg1__1_n_77;
  wire m_tmp_reg1__1_n_78;
  wire m_tmp_reg1__1_n_79;
  wire m_tmp_reg1__1_n_80;
  wire m_tmp_reg1__1_n_81;
  wire m_tmp_reg1__1_n_82;
  wire m_tmp_reg1__1_n_83;
  wire m_tmp_reg1__1_n_84;
  wire m_tmp_reg1__1_n_85;
  wire m_tmp_reg1__1_n_86;
  wire m_tmp_reg1__1_n_87;
  wire m_tmp_reg1__1_n_88;
  wire m_tmp_reg1__1_n_89;
  wire m_tmp_reg1__1_n_90;
  wire m_tmp_reg1__1_n_91;
  wire m_tmp_reg1__1_n_92;
  wire m_tmp_reg1__1_n_93;
  wire m_tmp_reg1__1_n_94;
  wire m_tmp_reg1__1_n_95;
  wire m_tmp_reg1__1_n_96;
  wire m_tmp_reg1__1_n_97;
  wire m_tmp_reg1__1_n_98;
  wire m_tmp_reg1__1_n_99;
  wire m_tmp_reg1_n_100;
  wire m_tmp_reg1_n_101;
  wire m_tmp_reg1_n_102;
  wire m_tmp_reg1_n_103;
  wire m_tmp_reg1_n_104;
  wire m_tmp_reg1_n_105;
  wire m_tmp_reg1_n_106;
  wire m_tmp_reg1_n_107;
  wire m_tmp_reg1_n_108;
  wire m_tmp_reg1_n_109;
  wire m_tmp_reg1_n_110;
  wire m_tmp_reg1_n_111;
  wire m_tmp_reg1_n_112;
  wire m_tmp_reg1_n_113;
  wire m_tmp_reg1_n_114;
  wire m_tmp_reg1_n_115;
  wire m_tmp_reg1_n_116;
  wire m_tmp_reg1_n_117;
  wire m_tmp_reg1_n_118;
  wire m_tmp_reg1_n_119;
  wire m_tmp_reg1_n_120;
  wire m_tmp_reg1_n_121;
  wire m_tmp_reg1_n_122;
  wire m_tmp_reg1_n_123;
  wire m_tmp_reg1_n_124;
  wire m_tmp_reg1_n_125;
  wire m_tmp_reg1_n_126;
  wire m_tmp_reg1_n_127;
  wire m_tmp_reg1_n_128;
  wire m_tmp_reg1_n_129;
  wire m_tmp_reg1_n_130;
  wire m_tmp_reg1_n_131;
  wire m_tmp_reg1_n_132;
  wire m_tmp_reg1_n_133;
  wire m_tmp_reg1_n_134;
  wire m_tmp_reg1_n_135;
  wire m_tmp_reg1_n_136;
  wire m_tmp_reg1_n_137;
  wire m_tmp_reg1_n_138;
  wire m_tmp_reg1_n_139;
  wire m_tmp_reg1_n_140;
  wire m_tmp_reg1_n_141;
  wire m_tmp_reg1_n_142;
  wire m_tmp_reg1_n_143;
  wire m_tmp_reg1_n_144;
  wire m_tmp_reg1_n_145;
  wire m_tmp_reg1_n_146;
  wire m_tmp_reg1_n_147;
  wire m_tmp_reg1_n_148;
  wire m_tmp_reg1_n_149;
  wire m_tmp_reg1_n_150;
  wire m_tmp_reg1_n_151;
  wire m_tmp_reg1_n_152;
  wire m_tmp_reg1_n_153;
  wire m_tmp_reg1_n_24;
  wire m_tmp_reg1_n_25;
  wire m_tmp_reg1_n_26;
  wire m_tmp_reg1_n_27;
  wire m_tmp_reg1_n_28;
  wire m_tmp_reg1_n_29;
  wire m_tmp_reg1_n_30;
  wire m_tmp_reg1_n_31;
  wire m_tmp_reg1_n_32;
  wire m_tmp_reg1_n_33;
  wire m_tmp_reg1_n_34;
  wire m_tmp_reg1_n_35;
  wire m_tmp_reg1_n_36;
  wire m_tmp_reg1_n_37;
  wire m_tmp_reg1_n_38;
  wire m_tmp_reg1_n_39;
  wire m_tmp_reg1_n_40;
  wire m_tmp_reg1_n_41;
  wire m_tmp_reg1_n_42;
  wire m_tmp_reg1_n_43;
  wire m_tmp_reg1_n_44;
  wire m_tmp_reg1_n_45;
  wire m_tmp_reg1_n_46;
  wire m_tmp_reg1_n_47;
  wire m_tmp_reg1_n_48;
  wire m_tmp_reg1_n_49;
  wire m_tmp_reg1_n_50;
  wire m_tmp_reg1_n_51;
  wire m_tmp_reg1_n_52;
  wire m_tmp_reg1_n_53;
  wire m_tmp_reg1_n_58;
  wire m_tmp_reg1_n_59;
  wire m_tmp_reg1_n_60;
  wire m_tmp_reg1_n_61;
  wire m_tmp_reg1_n_62;
  wire m_tmp_reg1_n_63;
  wire m_tmp_reg1_n_64;
  wire m_tmp_reg1_n_65;
  wire m_tmp_reg1_n_66;
  wire m_tmp_reg1_n_67;
  wire m_tmp_reg1_n_68;
  wire m_tmp_reg1_n_69;
  wire m_tmp_reg1_n_70;
  wire m_tmp_reg1_n_71;
  wire m_tmp_reg1_n_72;
  wire m_tmp_reg1_n_73;
  wire m_tmp_reg1_n_74;
  wire m_tmp_reg1_n_75;
  wire m_tmp_reg1_n_76;
  wire m_tmp_reg1_n_77;
  wire m_tmp_reg1_n_78;
  wire m_tmp_reg1_n_79;
  wire m_tmp_reg1_n_80;
  wire m_tmp_reg1_n_81;
  wire m_tmp_reg1_n_82;
  wire m_tmp_reg1_n_83;
  wire m_tmp_reg1_n_84;
  wire m_tmp_reg1_n_85;
  wire m_tmp_reg1_n_86;
  wire m_tmp_reg1_n_87;
  wire m_tmp_reg1_n_88;
  wire m_tmp_reg1_n_89;
  wire m_tmp_reg1_n_90;
  wire m_tmp_reg1_n_91;
  wire m_tmp_reg1_n_92;
  wire m_tmp_reg1_n_93;
  wire m_tmp_reg1_n_94;
  wire m_tmp_reg1_n_95;
  wire m_tmp_reg1_n_96;
  wire m_tmp_reg1_n_97;
  wire m_tmp_reg1_n_98;
  wire m_tmp_reg1_n_99;
  wire \m_tmp_reg[0]_i_1_n_0 ;
  wire \m_tmp_reg[10]_i_1_n_0 ;
  wire \m_tmp_reg[11]_i_1_n_0 ;
  wire \m_tmp_reg[12]_i_1_n_0 ;
  wire \m_tmp_reg[13]_i_1_n_0 ;
  wire \m_tmp_reg[14]_i_1_n_0 ;
  wire \m_tmp_reg[15]_i_1_n_0 ;
  wire \m_tmp_reg[19]_i_2_n_0 ;
  wire \m_tmp_reg[19]_i_3_n_0 ;
  wire \m_tmp_reg[19]_i_4_n_0 ;
  wire \m_tmp_reg[19]_i_5_n_0 ;
  wire \m_tmp_reg[19]_i_6_n_0 ;
  wire \m_tmp_reg[19]_i_7_n_0 ;
  wire \m_tmp_reg[19]_i_8_n_0 ;
  wire \m_tmp_reg[1]_i_1_n_0 ;
  wire \m_tmp_reg[23]_i_2_n_0 ;
  wire \m_tmp_reg[23]_i_3_n_0 ;
  wire \m_tmp_reg[23]_i_4_n_0 ;
  wire \m_tmp_reg[23]_i_5_n_0 ;
  wire \m_tmp_reg[23]_i_6_n_0 ;
  wire \m_tmp_reg[23]_i_7_n_0 ;
  wire \m_tmp_reg[23]_i_8_n_0 ;
  wire \m_tmp_reg[23]_i_9_n_0 ;
  wire \m_tmp_reg[27]_i_2_n_0 ;
  wire \m_tmp_reg[27]_i_3_n_0 ;
  wire \m_tmp_reg[27]_i_4_n_0 ;
  wire \m_tmp_reg[27]_i_5_n_0 ;
  wire \m_tmp_reg[27]_i_6_n_0 ;
  wire \m_tmp_reg[27]_i_7_n_0 ;
  wire \m_tmp_reg[27]_i_8_n_0 ;
  wire \m_tmp_reg[27]_i_9_n_0 ;
  wire \m_tmp_reg[2]_i_1_n_0 ;
  wire \m_tmp_reg[31]_i_2_n_0 ;
  wire \m_tmp_reg[31]_i_3_n_0 ;
  wire \m_tmp_reg[31]_i_4_n_0 ;
  wire \m_tmp_reg[31]_i_5_n_0 ;
  wire \m_tmp_reg[31]_i_6_n_0 ;
  wire \m_tmp_reg[31]_i_7_n_0 ;
  wire \m_tmp_reg[31]_i_8_n_0 ;
  wire \m_tmp_reg[3]_i_1_n_0 ;
  wire \m_tmp_reg[4]_i_1_n_0 ;
  wire \m_tmp_reg[5]_i_1_n_0 ;
  wire \m_tmp_reg[6]_i_1_n_0 ;
  wire \m_tmp_reg[7]_i_1_n_0 ;
  wire \m_tmp_reg[8]_i_1_n_0 ;
  wire \m_tmp_reg[9]_i_1_n_0 ;
  wire \m_tmp_reg_reg[19]_i_1_n_0 ;
  wire \m_tmp_reg_reg[19]_i_1_n_1 ;
  wire \m_tmp_reg_reg[19]_i_1_n_2 ;
  wire \m_tmp_reg_reg[19]_i_1_n_3 ;
  wire \m_tmp_reg_reg[19]_i_1_n_4 ;
  wire \m_tmp_reg_reg[19]_i_1_n_5 ;
  wire \m_tmp_reg_reg[19]_i_1_n_6 ;
  wire \m_tmp_reg_reg[19]_i_1_n_7 ;
  wire \m_tmp_reg_reg[23]_i_1_n_0 ;
  wire \m_tmp_reg_reg[23]_i_1_n_1 ;
  wire \m_tmp_reg_reg[23]_i_1_n_2 ;
  wire \m_tmp_reg_reg[23]_i_1_n_3 ;
  wire \m_tmp_reg_reg[23]_i_1_n_4 ;
  wire \m_tmp_reg_reg[23]_i_1_n_5 ;
  wire \m_tmp_reg_reg[23]_i_1_n_6 ;
  wire \m_tmp_reg_reg[23]_i_1_n_7 ;
  wire \m_tmp_reg_reg[27]_i_1_n_0 ;
  wire \m_tmp_reg_reg[27]_i_1_n_1 ;
  wire \m_tmp_reg_reg[27]_i_1_n_2 ;
  wire \m_tmp_reg_reg[27]_i_1_n_3 ;
  wire \m_tmp_reg_reg[27]_i_1_n_4 ;
  wire \m_tmp_reg_reg[27]_i_1_n_5 ;
  wire \m_tmp_reg_reg[27]_i_1_n_6 ;
  wire \m_tmp_reg_reg[27]_i_1_n_7 ;
  wire \m_tmp_reg_reg[31]_i_1_n_1 ;
  wire \m_tmp_reg_reg[31]_i_1_n_2 ;
  wire \m_tmp_reg_reg[31]_i_1_n_3 ;
  wire \m_tmp_reg_reg[31]_i_1_n_4 ;
  wire \m_tmp_reg_reg[31]_i_1_n_5 ;
  wire \m_tmp_reg_reg[31]_i_1_n_6 ;
  wire \m_tmp_reg_reg[31]_i_1_n_7 ;
  wire [8:8]p_2_in;
  wire [2:0]poll_cnt;
  wire \poll_cnt[0]_i_1_n_0 ;
  wire \poll_cnt[1]_i_1_n_0 ;
  wire \poll_cnt[2]_i_1_n_0 ;
  wire [31:0]rdata;
  wire [31:0]rdata_OBUF;
  wire \rdata_OBUF[0]_inst_i_2_n_0 ;
  wire \rdata_OBUF[1]_inst_i_2_n_0 ;
  wire \rdata_OBUF[2]_inst_i_2_n_0 ;
  wire \rdata_OBUF[31]_inst_i_2_n_0 ;
  wire \rdata_OBUF[31]_inst_i_3_n_0 ;
  wire \rdata_OBUF[31]_inst_i_4_n_0 ;
  wire \rdata_OBUF[31]_inst_i_5_n_0 ;
  wire \rdata_OBUF[31]_inst_i_6_n_0 ;
  wire refresh_done_f;
  wire refresh_done_f0;
  wire refresh_done_f_i_2_n_0;
  wire rready;
  wire rready_IBUF;
  wire rvalid;
  wire rvalid_OBUF;
  wire \rvalid_reg[0]_i_1_n_0 ;
  wire sm_state;
  wire sm_state_next;
  wire [31:0]sm_tdata;
  wire [31:0]sm_tdata_OBUF;
  wire \sm_tdata_OBUF[31]_inst_i_10_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_11_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_12_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_13_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_14_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_15_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_2_n_2 ;
  wire \sm_tdata_OBUF[31]_inst_i_2_n_3 ;
  wire \sm_tdata_OBUF[31]_inst_i_3_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_3_n_1 ;
  wire \sm_tdata_OBUF[31]_inst_i_3_n_2 ;
  wire \sm_tdata_OBUF[31]_inst_i_3_n_3 ;
  wire \sm_tdata_OBUF[31]_inst_i_4_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_5_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_6_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_7_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_7_n_1 ;
  wire \sm_tdata_OBUF[31]_inst_i_7_n_2 ;
  wire \sm_tdata_OBUF[31]_inst_i_7_n_3 ;
  wire \sm_tdata_OBUF[31]_inst_i_8_n_0 ;
  wire \sm_tdata_OBUF[31]_inst_i_9_n_0 ;
  wire sm_tlast;
  wire sm_tlast_OBUF;
  wire sm_tlast_reg_next;
  wire sm_tready;
  wire sm_tready_IBUF;
  wire sm_tvalid;
  wire sm_tvalid_OBUF;
  wire sm_tvalid_reg0;
  wire sm_tvalid_reg1;
  wire sm_tvalid_reg_i_10_n_0;
  wire sm_tvalid_reg_i_11_n_0;
  wire sm_tvalid_reg_i_12_n_0;
  wire sm_tvalid_reg_i_13_n_0;
  wire sm_tvalid_reg_i_14_n_0;
  wire sm_tvalid_reg_i_15_n_0;
  wire sm_tvalid_reg_i_4_n_0;
  wire sm_tvalid_reg_i_5_n_0;
  wire sm_tvalid_reg_i_6_n_0;
  wire sm_tvalid_reg_i_8_n_0;
  wire sm_tvalid_reg_i_9_n_0;
  wire sm_tvalid_reg_reg_i_2_n_2;
  wire sm_tvalid_reg_reg_i_2_n_3;
  wire sm_tvalid_reg_reg_i_3_n_0;
  wire sm_tvalid_reg_reg_i_3_n_1;
  wire sm_tvalid_reg_reg_i_3_n_2;
  wire sm_tvalid_reg_reg_i_3_n_3;
  wire sm_tvalid_reg_reg_i_7_n_0;
  wire sm_tvalid_reg_reg_i_7_n_1;
  wire sm_tvalid_reg_reg_i_7_n_2;
  wire sm_tvalid_reg_reg_i_7_n_3;
  wire [31:0]ss_tdata;
  wire [31:0]ss_tdata_IBUF;
  wire ss_tready;
  wire ss_tready_OBUF;
  wire ss_tready_reg0;
  wire ss_tready_reg3;
  wire ss_tready_reg_i_10_n_0;
  wire ss_tready_reg_i_11_n_0;
  wire ss_tready_reg_i_12_n_0;
  wire ss_tready_reg_i_13_n_0;
  wire ss_tready_reg_i_14_n_0;
  wire ss_tready_reg_i_15_n_0;
  wire ss_tready_reg_i_4_n_0;
  wire ss_tready_reg_i_5_n_0;
  wire ss_tready_reg_i_6_n_0;
  wire ss_tready_reg_i_8_n_0;
  wire ss_tready_reg_i_9_n_0;
  wire ss_tready_reg_reg_i_2_n_2;
  wire ss_tready_reg_reg_i_2_n_3;
  wire ss_tready_reg_reg_i_3_n_0;
  wire ss_tready_reg_reg_i_3_n_1;
  wire ss_tready_reg_reg_i_3_n_2;
  wire ss_tready_reg_reg_i_3_n_3;
  wire ss_tready_reg_reg_i_7_n_0;
  wire ss_tready_reg_reg_i_7_n_1;
  wire ss_tready_reg_reg_i_7_n_2;
  wire ss_tready_reg_reg_i_7_n_3;
  wire ss_tvalid;
  wire ss_tvalid_IBUF;
  wire [11:0]tap_A;
  wire [6:0]tap_A_OBUF;
  wire \tap_A_OBUF[2]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[3]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[4]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[5]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[6]_inst_i_2_n_0 ;
  wire \tap_A_OBUF[6]_inst_i_3_n_0 ;
  wire [31:0]tap_Di;
  wire [31:0]tap_Di_OBUF;
  wire [31:0]tap_Do;
  wire [31:0]tap_Do_IBUF;
  wire tap_EN;
  wire tap_EN_OBUF;
  wire tap_EN_OBUF_inst_i_2_n_0;
  wire tap_EN_OBUF_inst_i_3_n_0;
  wire tap_EN_OBUF_inst_i_4_n_0;
  wire tap_EN_OBUF_inst_i_5_n_0;
  wire [3:0]tap_WE;
  wire [0:0]tap_WE_OBUF;
  wire \tap_WE_OBUF[3]_inst_i_2_n_0 ;
  wire [31:0]wdata;
  wire wready;
  wire wready_OBUF;
  wire wready_reg0;
  wire wready_reg_i_2_n_0;
  wire wvalid;
  wire wvalid_IBUF;
  wire x_cnt2;
  wire x_cnt3;
  wire [31:1]x_cnt4;
  wire \x_cnt[0]_i_1_n_0 ;
  wire \x_cnt[10]_i_1_n_0 ;
  wire \x_cnt[11]_i_1_n_0 ;
  wire \x_cnt[12]_i_1_n_0 ;
  wire \x_cnt[13]_i_1_n_0 ;
  wire \x_cnt[14]_i_1_n_0 ;
  wire \x_cnt[15]_i_1_n_0 ;
  wire \x_cnt[16]_i_1_n_0 ;
  wire \x_cnt[17]_i_1_n_0 ;
  wire \x_cnt[18]_i_1_n_0 ;
  wire \x_cnt[19]_i_1_n_0 ;
  wire \x_cnt[1]_i_1_n_0 ;
  wire \x_cnt[20]_i_1_n_0 ;
  wire \x_cnt[21]_i_1_n_0 ;
  wire \x_cnt[22]_i_1_n_0 ;
  wire \x_cnt[23]_i_1_n_0 ;
  wire \x_cnt[24]_i_1_n_0 ;
  wire \x_cnt[25]_i_1_n_0 ;
  wire \x_cnt[26]_i_1_n_0 ;
  wire \x_cnt[27]_i_1_n_0 ;
  wire \x_cnt[28]_i_1_n_0 ;
  wire \x_cnt[29]_i_1_n_0 ;
  wire \x_cnt[2]_i_1_n_0 ;
  wire \x_cnt[30]_i_1_n_0 ;
  wire \x_cnt[31]_i_11_n_0 ;
  wire \x_cnt[31]_i_12_n_0 ;
  wire \x_cnt[31]_i_13_n_0 ;
  wire \x_cnt[31]_i_15_n_0 ;
  wire \x_cnt[31]_i_16_n_0 ;
  wire \x_cnt[31]_i_17_n_0 ;
  wire \x_cnt[31]_i_18_n_0 ;
  wire \x_cnt[31]_i_1_n_0 ;
  wire \x_cnt[31]_i_20_n_0 ;
  wire \x_cnt[31]_i_21_n_0 ;
  wire \x_cnt[31]_i_22_n_0 ;
  wire \x_cnt[31]_i_23_n_0 ;
  wire \x_cnt[31]_i_27_n_0 ;
  wire \x_cnt[31]_i_28_n_0 ;
  wire \x_cnt[31]_i_29_n_0 ;
  wire \x_cnt[31]_i_2_n_0 ;
  wire \x_cnt[31]_i_30_n_0 ;
  wire \x_cnt[31]_i_31_n_0 ;
  wire \x_cnt[31]_i_32_n_0 ;
  wire \x_cnt[31]_i_33_n_0 ;
  wire \x_cnt[31]_i_34_n_0 ;
  wire \x_cnt[31]_i_38_n_0 ;
  wire \x_cnt[31]_i_39_n_0 ;
  wire \x_cnt[31]_i_40_n_0 ;
  wire \x_cnt[31]_i_41_n_0 ;
  wire \x_cnt[31]_i_42_n_0 ;
  wire \x_cnt[31]_i_43_n_0 ;
  wire \x_cnt[31]_i_44_n_0 ;
  wire \x_cnt[31]_i_45_n_0 ;
  wire \x_cnt[31]_i_46_n_0 ;
  wire \x_cnt[31]_i_47_n_0 ;
  wire \x_cnt[31]_i_48_n_0 ;
  wire \x_cnt[31]_i_51_n_0 ;
  wire \x_cnt[31]_i_52_n_0 ;
  wire \x_cnt[31]_i_53_n_0 ;
  wire \x_cnt[31]_i_54_n_0 ;
  wire \x_cnt[31]_i_55_n_0 ;
  wire \x_cnt[31]_i_56_n_0 ;
  wire \x_cnt[31]_i_57_n_0 ;
  wire \x_cnt[31]_i_58_n_0 ;
  wire \x_cnt[31]_i_59_n_0 ;
  wire \x_cnt[31]_i_60_n_0 ;
  wire \x_cnt[31]_i_61_n_0 ;
  wire \x_cnt[31]_i_62_n_0 ;
  wire \x_cnt[31]_i_63_n_0 ;
  wire \x_cnt[31]_i_64_n_0 ;
  wire \x_cnt[31]_i_65_n_0 ;
  wire \x_cnt[31]_i_66_n_0 ;
  wire \x_cnt[31]_i_67_n_0 ;
  wire \x_cnt[31]_i_68_n_0 ;
  wire \x_cnt[31]_i_69_n_0 ;
  wire \x_cnt[31]_i_70_n_0 ;
  wire \x_cnt[31]_i_7_n_0 ;
  wire \x_cnt[31]_i_8_n_0 ;
  wire \x_cnt[31]_i_9_n_0 ;
  wire \x_cnt[3]_i_1_n_0 ;
  wire \x_cnt[4]_i_1_n_0 ;
  wire \x_cnt[5]_i_1_n_0 ;
  wire \x_cnt[6]_i_1_n_0 ;
  wire \x_cnt[7]_i_1_n_0 ;
  wire \x_cnt[8]_i_1_n_0 ;
  wire \x_cnt[9]_i_1_n_0 ;
  wire \x_cnt_reg[12]_i_2_n_0 ;
  wire \x_cnt_reg[12]_i_2_n_1 ;
  wire \x_cnt_reg[12]_i_2_n_2 ;
  wire \x_cnt_reg[12]_i_2_n_3 ;
  wire \x_cnt_reg[12]_i_2_n_4 ;
  wire \x_cnt_reg[12]_i_2_n_5 ;
  wire \x_cnt_reg[12]_i_2_n_6 ;
  wire \x_cnt_reg[12]_i_2_n_7 ;
  wire \x_cnt_reg[16]_i_2_n_0 ;
  wire \x_cnt_reg[16]_i_2_n_1 ;
  wire \x_cnt_reg[16]_i_2_n_2 ;
  wire \x_cnt_reg[16]_i_2_n_3 ;
  wire \x_cnt_reg[16]_i_2_n_4 ;
  wire \x_cnt_reg[16]_i_2_n_5 ;
  wire \x_cnt_reg[16]_i_2_n_6 ;
  wire \x_cnt_reg[16]_i_2_n_7 ;
  wire \x_cnt_reg[20]_i_2_n_0 ;
  wire \x_cnt_reg[20]_i_2_n_1 ;
  wire \x_cnt_reg[20]_i_2_n_2 ;
  wire \x_cnt_reg[20]_i_2_n_3 ;
  wire \x_cnt_reg[20]_i_2_n_4 ;
  wire \x_cnt_reg[20]_i_2_n_5 ;
  wire \x_cnt_reg[20]_i_2_n_6 ;
  wire \x_cnt_reg[20]_i_2_n_7 ;
  wire \x_cnt_reg[24]_i_2_n_0 ;
  wire \x_cnt_reg[24]_i_2_n_1 ;
  wire \x_cnt_reg[24]_i_2_n_2 ;
  wire \x_cnt_reg[24]_i_2_n_3 ;
  wire \x_cnt_reg[24]_i_2_n_4 ;
  wire \x_cnt_reg[24]_i_2_n_5 ;
  wire \x_cnt_reg[24]_i_2_n_6 ;
  wire \x_cnt_reg[24]_i_2_n_7 ;
  wire \x_cnt_reg[28]_i_2_n_0 ;
  wire \x_cnt_reg[28]_i_2_n_1 ;
  wire \x_cnt_reg[28]_i_2_n_2 ;
  wire \x_cnt_reg[28]_i_2_n_3 ;
  wire \x_cnt_reg[28]_i_2_n_4 ;
  wire \x_cnt_reg[28]_i_2_n_5 ;
  wire \x_cnt_reg[28]_i_2_n_6 ;
  wire \x_cnt_reg[28]_i_2_n_7 ;
  wire \x_cnt_reg[31]_i_10_n_0 ;
  wire \x_cnt_reg[31]_i_10_n_1 ;
  wire \x_cnt_reg[31]_i_10_n_2 ;
  wire \x_cnt_reg[31]_i_10_n_3 ;
  wire \x_cnt_reg[31]_i_14_n_0 ;
  wire \x_cnt_reg[31]_i_14_n_1 ;
  wire \x_cnt_reg[31]_i_14_n_2 ;
  wire \x_cnt_reg[31]_i_14_n_3 ;
  wire \x_cnt_reg[31]_i_19_n_0 ;
  wire \x_cnt_reg[31]_i_19_n_1 ;
  wire \x_cnt_reg[31]_i_19_n_2 ;
  wire \x_cnt_reg[31]_i_19_n_3 ;
  wire \x_cnt_reg[31]_i_24_n_2 ;
  wire \x_cnt_reg[31]_i_24_n_3 ;
  wire \x_cnt_reg[31]_i_25_n_0 ;
  wire \x_cnt_reg[31]_i_25_n_1 ;
  wire \x_cnt_reg[31]_i_25_n_2 ;
  wire \x_cnt_reg[31]_i_25_n_3 ;
  wire \x_cnt_reg[31]_i_26_n_0 ;
  wire \x_cnt_reg[31]_i_26_n_1 ;
  wire \x_cnt_reg[31]_i_26_n_2 ;
  wire \x_cnt_reg[31]_i_26_n_3 ;
  wire \x_cnt_reg[31]_i_35_n_0 ;
  wire \x_cnt_reg[31]_i_35_n_1 ;
  wire \x_cnt_reg[31]_i_35_n_2 ;
  wire \x_cnt_reg[31]_i_35_n_3 ;
  wire \x_cnt_reg[31]_i_36_n_0 ;
  wire \x_cnt_reg[31]_i_36_n_1 ;
  wire \x_cnt_reg[31]_i_36_n_2 ;
  wire \x_cnt_reg[31]_i_36_n_3 ;
  wire \x_cnt_reg[31]_i_37_n_0 ;
  wire \x_cnt_reg[31]_i_37_n_1 ;
  wire \x_cnt_reg[31]_i_37_n_2 ;
  wire \x_cnt_reg[31]_i_37_n_3 ;
  wire \x_cnt_reg[31]_i_3_n_2 ;
  wire \x_cnt_reg[31]_i_3_n_3 ;
  wire \x_cnt_reg[31]_i_49_n_0 ;
  wire \x_cnt_reg[31]_i_49_n_1 ;
  wire \x_cnt_reg[31]_i_49_n_2 ;
  wire \x_cnt_reg[31]_i_49_n_3 ;
  wire \x_cnt_reg[31]_i_4_n_2 ;
  wire \x_cnt_reg[31]_i_4_n_3 ;
  wire \x_cnt_reg[31]_i_50_n_0 ;
  wire \x_cnt_reg[31]_i_50_n_1 ;
  wire \x_cnt_reg[31]_i_50_n_2 ;
  wire \x_cnt_reg[31]_i_50_n_3 ;
  wire \x_cnt_reg[31]_i_5_n_2 ;
  wire \x_cnt_reg[31]_i_5_n_3 ;
  wire \x_cnt_reg[31]_i_5_n_5 ;
  wire \x_cnt_reg[31]_i_5_n_6 ;
  wire \x_cnt_reg[31]_i_5_n_7 ;
  wire \x_cnt_reg[31]_i_6_n_0 ;
  wire \x_cnt_reg[31]_i_6_n_1 ;
  wire \x_cnt_reg[31]_i_6_n_2 ;
  wire \x_cnt_reg[31]_i_6_n_3 ;
  wire \x_cnt_reg[4]_i_2_n_0 ;
  wire \x_cnt_reg[4]_i_2_n_1 ;
  wire \x_cnt_reg[4]_i_2_n_2 ;
  wire \x_cnt_reg[4]_i_2_n_3 ;
  wire \x_cnt_reg[4]_i_2_n_4 ;
  wire \x_cnt_reg[4]_i_2_n_5 ;
  wire \x_cnt_reg[4]_i_2_n_6 ;
  wire \x_cnt_reg[4]_i_2_n_7 ;
  wire \x_cnt_reg[8]_i_2_n_0 ;
  wire \x_cnt_reg[8]_i_2_n_1 ;
  wire \x_cnt_reg[8]_i_2_n_2 ;
  wire \x_cnt_reg[8]_i_2_n_3 ;
  wire \x_cnt_reg[8]_i_2_n_4 ;
  wire \x_cnt_reg[8]_i_2_n_5 ;
  wire \x_cnt_reg[8]_i_2_n_6 ;
  wire \x_cnt_reg[8]_i_2_n_7 ;
  wire \x_cnt_reg_n_0_[0] ;
  wire \x_cnt_reg_n_0_[10] ;
  wire \x_cnt_reg_n_0_[11] ;
  wire \x_cnt_reg_n_0_[12] ;
  wire \x_cnt_reg_n_0_[13] ;
  wire \x_cnt_reg_n_0_[14] ;
  wire \x_cnt_reg_n_0_[15] ;
  wire \x_cnt_reg_n_0_[16] ;
  wire \x_cnt_reg_n_0_[17] ;
  wire \x_cnt_reg_n_0_[18] ;
  wire \x_cnt_reg_n_0_[19] ;
  wire \x_cnt_reg_n_0_[1] ;
  wire \x_cnt_reg_n_0_[20] ;
  wire \x_cnt_reg_n_0_[21] ;
  wire \x_cnt_reg_n_0_[22] ;
  wire \x_cnt_reg_n_0_[23] ;
  wire \x_cnt_reg_n_0_[24] ;
  wire \x_cnt_reg_n_0_[25] ;
  wire \x_cnt_reg_n_0_[26] ;
  wire \x_cnt_reg_n_0_[27] ;
  wire \x_cnt_reg_n_0_[28] ;
  wire \x_cnt_reg_n_0_[29] ;
  wire \x_cnt_reg_n_0_[2] ;
  wire \x_cnt_reg_n_0_[30] ;
  wire \x_cnt_reg_n_0_[31] ;
  wire \x_cnt_reg_n_0_[3] ;
  wire \x_cnt_reg_n_0_[4] ;
  wire \x_cnt_reg_n_0_[5] ;
  wire \x_cnt_reg_n_0_[6] ;
  wire \x_cnt_reg_n_0_[7] ;
  wire \x_cnt_reg_n_0_[8] ;
  wire \x_cnt_reg_n_0_[9] ;
  wire [31:0]x_reg;
  wire \x_reg[0]_i_1_n_0 ;
  wire \x_reg[10]_i_1_n_0 ;
  wire \x_reg[11]_i_1_n_0 ;
  wire \x_reg[12]_i_1_n_0 ;
  wire \x_reg[13]_i_1_n_0 ;
  wire \x_reg[14]_i_1_n_0 ;
  wire \x_reg[15]_i_1_n_0 ;
  wire \x_reg[16]_i_1_n_0 ;
  wire \x_reg[17]_i_1_n_0 ;
  wire \x_reg[18]_i_1_n_0 ;
  wire \x_reg[19]_i_1_n_0 ;
  wire \x_reg[1]_i_1_n_0 ;
  wire \x_reg[20]_i_1_n_0 ;
  wire \x_reg[21]_i_1_n_0 ;
  wire \x_reg[22]_i_1_n_0 ;
  wire \x_reg[23]_i_1_n_0 ;
  wire \x_reg[24]_i_1_n_0 ;
  wire \x_reg[25]_i_1_n_0 ;
  wire \x_reg[26]_i_1_n_0 ;
  wire \x_reg[27]_i_1_n_0 ;
  wire \x_reg[28]_i_1_n_0 ;
  wire \x_reg[29]_i_1_n_0 ;
  wire \x_reg[2]_i_1_n_0 ;
  wire \x_reg[30]_i_1_n_0 ;
  wire \x_reg[31]_i_1_n_0 ;
  wire \x_reg[31]_i_2_n_0 ;
  wire \x_reg[31]_i_3_n_0 ;
  wire \x_reg[3]_i_1_n_0 ;
  wire \x_reg[4]_i_1_n_0 ;
  wire \x_reg[5]_i_1_n_0 ;
  wire \x_reg[6]_i_1_n_0 ;
  wire \x_reg[7]_i_1_n_0 ;
  wire \x_reg[8]_i_1_n_0 ;
  wire \x_reg[9]_i_1_n_0 ;
  wire [31:0]y_tmp_reg;
  wire [31:0]y_tmp_reg2;
  wire \y_tmp_reg[0]_i_1_n_0 ;
  wire \y_tmp_reg[10]_i_1_n_0 ;
  wire \y_tmp_reg[11]_i_1_n_0 ;
  wire \y_tmp_reg[11]_i_3_n_0 ;
  wire \y_tmp_reg[11]_i_4_n_0 ;
  wire \y_tmp_reg[11]_i_5_n_0 ;
  wire \y_tmp_reg[11]_i_6_n_0 ;
  wire \y_tmp_reg[12]_i_1_n_0 ;
  wire \y_tmp_reg[13]_i_1_n_0 ;
  wire \y_tmp_reg[14]_i_1_n_0 ;
  wire \y_tmp_reg[15]_i_1_n_0 ;
  wire \y_tmp_reg[15]_i_3_n_0 ;
  wire \y_tmp_reg[15]_i_4_n_0 ;
  wire \y_tmp_reg[15]_i_5_n_0 ;
  wire \y_tmp_reg[15]_i_6_n_0 ;
  wire \y_tmp_reg[16]_i_1_n_0 ;
  wire \y_tmp_reg[17]_i_1_n_0 ;
  wire \y_tmp_reg[18]_i_1_n_0 ;
  wire \y_tmp_reg[19]_i_1_n_0 ;
  wire \y_tmp_reg[19]_i_3_n_0 ;
  wire \y_tmp_reg[19]_i_4_n_0 ;
  wire \y_tmp_reg[19]_i_5_n_0 ;
  wire \y_tmp_reg[19]_i_6_n_0 ;
  wire \y_tmp_reg[1]_i_1_n_0 ;
  wire \y_tmp_reg[20]_i_1_n_0 ;
  wire \y_tmp_reg[21]_i_1_n_0 ;
  wire \y_tmp_reg[22]_i_1_n_0 ;
  wire \y_tmp_reg[23]_i_1_n_0 ;
  wire \y_tmp_reg[23]_i_3_n_0 ;
  wire \y_tmp_reg[23]_i_4_n_0 ;
  wire \y_tmp_reg[23]_i_5_n_0 ;
  wire \y_tmp_reg[23]_i_6_n_0 ;
  wire \y_tmp_reg[24]_i_1_n_0 ;
  wire \y_tmp_reg[25]_i_1_n_0 ;
  wire \y_tmp_reg[26]_i_1_n_0 ;
  wire \y_tmp_reg[27]_i_1_n_0 ;
  wire \y_tmp_reg[27]_i_3_n_0 ;
  wire \y_tmp_reg[27]_i_4_n_0 ;
  wire \y_tmp_reg[27]_i_5_n_0 ;
  wire \y_tmp_reg[27]_i_6_n_0 ;
  wire \y_tmp_reg[28]_i_1_n_0 ;
  wire \y_tmp_reg[29]_i_1_n_0 ;
  wire \y_tmp_reg[2]_i_1_n_0 ;
  wire \y_tmp_reg[30]_i_1_n_0 ;
  wire \y_tmp_reg[31]_i_1_n_0 ;
  wire \y_tmp_reg[31]_i_3_n_0 ;
  wire \y_tmp_reg[31]_i_4_n_0 ;
  wire \y_tmp_reg[31]_i_5_n_0 ;
  wire \y_tmp_reg[31]_i_6_n_0 ;
  wire \y_tmp_reg[3]_i_1_n_0 ;
  wire \y_tmp_reg[3]_i_3_n_0 ;
  wire \y_tmp_reg[3]_i_4_n_0 ;
  wire \y_tmp_reg[3]_i_5_n_0 ;
  wire \y_tmp_reg[3]_i_6_n_0 ;
  wire \y_tmp_reg[4]_i_1_n_0 ;
  wire \y_tmp_reg[5]_i_1_n_0 ;
  wire \y_tmp_reg[6]_i_1_n_0 ;
  wire \y_tmp_reg[7]_i_1_n_0 ;
  wire \y_tmp_reg[7]_i_3_n_0 ;
  wire \y_tmp_reg[7]_i_4_n_0 ;
  wire \y_tmp_reg[7]_i_5_n_0 ;
  wire \y_tmp_reg[7]_i_6_n_0 ;
  wire \y_tmp_reg[8]_i_1_n_0 ;
  wire \y_tmp_reg[9]_i_1_n_0 ;
  wire \y_tmp_reg_reg[11]_i_2_n_0 ;
  wire \y_tmp_reg_reg[11]_i_2_n_1 ;
  wire \y_tmp_reg_reg[11]_i_2_n_2 ;
  wire \y_tmp_reg_reg[11]_i_2_n_3 ;
  wire \y_tmp_reg_reg[15]_i_2_n_0 ;
  wire \y_tmp_reg_reg[15]_i_2_n_1 ;
  wire \y_tmp_reg_reg[15]_i_2_n_2 ;
  wire \y_tmp_reg_reg[15]_i_2_n_3 ;
  wire \y_tmp_reg_reg[19]_i_2_n_0 ;
  wire \y_tmp_reg_reg[19]_i_2_n_1 ;
  wire \y_tmp_reg_reg[19]_i_2_n_2 ;
  wire \y_tmp_reg_reg[19]_i_2_n_3 ;
  wire \y_tmp_reg_reg[23]_i_2_n_0 ;
  wire \y_tmp_reg_reg[23]_i_2_n_1 ;
  wire \y_tmp_reg_reg[23]_i_2_n_2 ;
  wire \y_tmp_reg_reg[23]_i_2_n_3 ;
  wire \y_tmp_reg_reg[27]_i_2_n_0 ;
  wire \y_tmp_reg_reg[27]_i_2_n_1 ;
  wire \y_tmp_reg_reg[27]_i_2_n_2 ;
  wire \y_tmp_reg_reg[27]_i_2_n_3 ;
  wire \y_tmp_reg_reg[31]_i_2_n_1 ;
  wire \y_tmp_reg_reg[31]_i_2_n_2 ;
  wire \y_tmp_reg_reg[31]_i_2_n_3 ;
  wire \y_tmp_reg_reg[3]_i_2_n_0 ;
  wire \y_tmp_reg_reg[3]_i_2_n_1 ;
  wire \y_tmp_reg_reg[3]_i_2_n_2 ;
  wire \y_tmp_reg_reg[3]_i_2_n_3 ;
  wire \y_tmp_reg_reg[7]_i_2_n_0 ;
  wire \y_tmp_reg_reg[7]_i_2_n_1 ;
  wire \y_tmp_reg_reg[7]_i_2_n_2 ;
  wire \y_tmp_reg_reg[7]_i_2_n_3 ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_20_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_27_O_UNCONNECTED ;
  wire [3:1]\NLW_data_A_OBUF[11]_inst_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_data_A_OBUF[11]_inst_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_36_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_42_O_UNCONNECTED ;
  wire [3:2]\NLW_data_A_OBUF[11]_inst_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_A_OBUF[11]_inst_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_51_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_57_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_66_O_UNCONNECTED ;
  wire [3:0]\NLW_data_A_OBUF[11]_inst_i_80_O_UNCONNECTED ;
  wire [3:3]\NLW_data_input_length_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_output_length_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_k_reg[5]_i_15_CO_UNCONNECTED ;
  wire [3:3]\NLW_k_reg[5]_i_15_O_UNCONNECTED ;
  wire NLW_m_tmp_reg1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_tmp_reg1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_tmp_reg1_OVERFLOW_UNCONNECTED;
  wire NLW_m_tmp_reg1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_tmp_reg1_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_tmp_reg1_UNDERFLOW_UNCONNECTED;
  wire [17:0]NLW_m_tmp_reg1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_tmp_reg1_CARRYOUT_UNCONNECTED;
  wire NLW_m_tmp_reg1__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_tmp_reg1__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_tmp_reg1__0_OVERFLOW_UNCONNECTED;
  wire NLW_m_tmp_reg1__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_tmp_reg1__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_tmp_reg1__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_tmp_reg1__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_tmp_reg1__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_tmp_reg1__0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_m_tmp_reg1__0_PCOUT_UNCONNECTED;
  wire NLW_m_tmp_reg1__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_m_tmp_reg1__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_m_tmp_reg1__1_OVERFLOW_UNCONNECTED;
  wire NLW_m_tmp_reg1__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_m_tmp_reg1__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_m_tmp_reg1__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_m_tmp_reg1__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_m_tmp_reg1__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_m_tmp_reg1__1_CARRYOUT_UNCONNECTED;
  wire [3:3]\NLW_m_tmp_reg_reg[31]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sm_tdata_OBUF[31]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_sm_tdata_OBUF[31]_inst_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_sm_tdata_OBUF[31]_inst_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_sm_tdata_OBUF[31]_inst_i_7_O_UNCONNECTED ;
  wire [3:3]NLW_sm_tvalid_reg_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_sm_tvalid_reg_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_sm_tvalid_reg_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_sm_tvalid_reg_reg_i_7_O_UNCONNECTED;
  wire [3:3]NLW_ss_tready_reg_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_ss_tready_reg_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_ss_tready_reg_reg_i_3_O_UNCONNECTED;
  wire [3:0]NLW_ss_tready_reg_reg_i_7_O_UNCONNECTED;
  wire [3:0]\NLW_x_cnt_reg[31]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_x_cnt_reg[31]_i_14_O_UNCONNECTED ;
  wire [3:0]\NLW_x_cnt_reg[31]_i_19_O_UNCONNECTED ;
  wire [3:2]\NLW_x_cnt_reg[31]_i_24_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_cnt_reg[31]_i_24_O_UNCONNECTED ;
  wire [3:3]\NLW_x_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_x_cnt_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_x_cnt_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_x_cnt_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_x_cnt_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_x_cnt_reg[31]_i_5_O_UNCONNECTED ;
  wire [0:0]\NLW_x_cnt_reg[31]_i_50_O_UNCONNECTED ;
  wire [3:0]\NLW_x_cnt_reg[31]_i_6_O_UNCONNECTED ;
  wire [3:3]\NLW_y_tmp_reg_reg[31]_i_2_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h0080)) 
    \RAM_0x10[31]_i_1 
       (.I0(wready_OBUF),
        .I1(wvalid_IBUF),
        .I2(awaddr_buffer[4]),
        .I3(\ap_control[2]_i_2_n_0 ),
        .O(RAM_0x100));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[0]),
        .Q(RAM_0x10[0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[10]),
        .Q(RAM_0x10[10]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[11]),
        .Q(RAM_0x10[11]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[12] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[12]),
        .Q(RAM_0x10[12]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[13] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[13]),
        .Q(RAM_0x10[13]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[14] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[14]),
        .Q(RAM_0x10[14]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[15] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[15]),
        .Q(RAM_0x10[15]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[16] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[16]),
        .Q(RAM_0x10[16]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[17] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[17]),
        .Q(RAM_0x10[17]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[18] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[18]),
        .Q(RAM_0x10[18]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[19] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[19]),
        .Q(RAM_0x10[19]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[1]),
        .Q(RAM_0x10[1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[20] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[20]),
        .Q(RAM_0x10[20]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[21] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[21]),
        .Q(RAM_0x10[21]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[22] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[22]),
        .Q(RAM_0x10[22]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[23] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[23]),
        .Q(RAM_0x10[23]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[24] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[24]),
        .Q(RAM_0x10[24]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[25] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[25]),
        .Q(RAM_0x10[25]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[26] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[26]),
        .Q(RAM_0x10[26]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[27] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[27]),
        .Q(RAM_0x10[27]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[28] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[28]),
        .Q(RAM_0x10[28]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[29] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[29]),
        .Q(RAM_0x10[29]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[2]),
        .Q(RAM_0x10[2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[30] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[30]),
        .Q(RAM_0x10[30]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[31] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[31]),
        .Q(RAM_0x10[31]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[3]),
        .Q(RAM_0x10[3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[4]),
        .Q(RAM_0x10[4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[5]),
        .Q(RAM_0x10[5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[6]),
        .Q(RAM_0x10[6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[7]),
        .Q(RAM_0x10[7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[8]),
        .Q(RAM_0x10[8]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x10_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x100),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[9]),
        .Q(RAM_0x10[9]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \RAM_0x14[31]_i_1 
       (.I0(wready_OBUF),
        .I1(wvalid_IBUF),
        .I2(awaddr_buffer[2]),
        .I3(awaddr_buffer[4]),
        .I4(\RAM_0x14[31]_i_2_n_0 ),
        .O(RAM_0x140));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \RAM_0x14[31]_i_2 
       (.I0(\ap_control[2]_i_3_n_0 ),
        .I1(awaddr_buffer[6]),
        .I2(awaddr_buffer[7]),
        .I3(awaddr_buffer[3]),
        .I4(awaddr_buffer[5]),
        .O(\RAM_0x14[31]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[0]),
        .Q(\RAM_0x14_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[10]),
        .Q(\RAM_0x14_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[11]),
        .Q(\RAM_0x14_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[12] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[12]),
        .Q(\RAM_0x14_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[13] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[13]),
        .Q(\RAM_0x14_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[14] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[14]),
        .Q(\RAM_0x14_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[15] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[15]),
        .Q(\RAM_0x14_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[16] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[16]),
        .Q(\RAM_0x14_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[17] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[17]),
        .Q(\RAM_0x14_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[18] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[18]),
        .Q(\RAM_0x14_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[19] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[19]),
        .Q(\RAM_0x14_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[1]),
        .Q(\RAM_0x14_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[20] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[20]),
        .Q(\RAM_0x14_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[21] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[21]),
        .Q(\RAM_0x14_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[22] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[22]),
        .Q(\RAM_0x14_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[23] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[23]),
        .Q(\RAM_0x14_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[24] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[24]),
        .Q(\RAM_0x14_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[25] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[25]),
        .Q(\RAM_0x14_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[26] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[26]),
        .Q(\RAM_0x14_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[27] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[27]),
        .Q(\RAM_0x14_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[28] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[28]),
        .Q(\RAM_0x14_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[29] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[29]),
        .Q(\RAM_0x14_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[2]),
        .Q(\RAM_0x14_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[30] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[30]),
        .Q(\RAM_0x14_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[31] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[31]),
        .Q(\RAM_0x14_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[3]),
        .Q(\RAM_0x14_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[4]),
        .Q(\RAM_0x14_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[5]),
        .Q(\RAM_0x14_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[6]),
        .Q(\RAM_0x14_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[7]),
        .Q(\RAM_0x14_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[8]),
        .Q(\RAM_0x14_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_0x14_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(RAM_0x140),
        .CLR(wready_reg_i_2_n_0),
        .D(tap_Di_OBUF[9]),
        .Q(\RAM_0x14_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \ap_control[0]_i_1 
       (.I0(ap_state[1]),
        .I1(ap_state[0]),
        .I2(\ap_control[2]_i_2_n_0 ),
        .I3(awaddr_buffer[4]),
        .I4(tap_Di_OBUF[0]),
        .O(ap_control_next[0]));
  LUT5 #(
    .INIT(32'h0808F000)) 
    \ap_control[1]_i_1 
       (.I0(\ap_control[1]_i_2_n_0 ),
        .I1(refresh_done_f),
        .I2(ap_state[0]),
        .I3(sm_tlast_OBUF),
        .I4(ap_state[1]),
        .O(ap_control_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \ap_control[1]_i_2 
       (.I0(poll_cnt[1]),
        .I1(poll_cnt[0]),
        .I2(poll_cnt[2]),
        .O(\ap_control[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEF00EF)) 
    \ap_control[2]_i_1 
       (.I0(\ap_control[2]_i_2_n_0 ),
        .I1(awaddr_buffer[4]),
        .I2(tap_Di_OBUF[0]),
        .I3(ap_state[0]),
        .I4(sm_tlast_OBUF),
        .I5(ap_state[1]),
        .O(ap_control_next[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_control[2]_i_2 
       (.I0(awaddr_buffer[5]),
        .I1(awaddr_buffer[3]),
        .I2(awaddr_buffer[7]),
        .I3(awaddr_buffer[6]),
        .I4(\ap_control[2]_i_3_n_0 ),
        .I5(awaddr_buffer[2]),
        .O(\ap_control[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \ap_control[2]_i_3 
       (.I0(awaddr_buffer[1]),
        .I1(awaddr_buffer[0]),
        .I2(awaddr_buffer[10]),
        .I3(awaddr_buffer[11]),
        .I4(awaddr_buffer[8]),
        .I5(awaddr_buffer[9]),
        .O(\ap_control[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ap_control_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(ap_control_next[0]),
        .Q(\ap_control_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \ap_control_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(ap_control_next[1]),
        .Q(ap_done));
  FDPE #(
    .INIT(1'b1)) 
    \ap_control_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(ap_control_next[2]),
        .PRE(wready_reg_i_2_n_0),
        .Q(ap_idle));
  LUT6 #(
    .INIT(64'h1010101010101510)) 
    \ap_state[0]_i_1 
       (.I0(ap_state[1]),
        .I1(sm_tlast_OBUF),
        .I2(ap_state[0]),
        .I3(tap_Di_OBUF[0]),
        .I4(awaddr_buffer[4]),
        .I5(\ap_control[2]_i_2_n_0 ),
        .O(\ap_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FE00FEFF000000)) 
    \ap_state[1]_i_1 
       (.I0(poll_cnt[1]),
        .I1(poll_cnt[0]),
        .I2(poll_cnt[2]),
        .I3(ap_state[0]),
        .I4(sm_tlast_OBUF),
        .I5(ap_state[1]),
        .O(\ap_state[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \ap_state_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\ap_state[0]_i_1_n_0 ),
        .Q(ap_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \ap_state_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\ap_state[1]_i_1_n_0 ),
        .Q(ap_state[1]));
  IBUF \araddr_IBUF[0]_inst 
       (.I(araddr[0]),
        .O(araddr_IBUF[0]));
  IBUF \araddr_IBUF[10]_inst 
       (.I(araddr[10]),
        .O(araddr_IBUF[10]));
  IBUF \araddr_IBUF[11]_inst 
       (.I(araddr[11]),
        .O(araddr_IBUF[11]));
  IBUF \araddr_IBUF[1]_inst 
       (.I(araddr[1]),
        .O(araddr_IBUF[1]));
  IBUF \araddr_IBUF[2]_inst 
       (.I(araddr[2]),
        .O(araddr_IBUF[2]));
  IBUF \araddr_IBUF[3]_inst 
       (.I(araddr[3]),
        .O(araddr_IBUF[3]));
  IBUF \araddr_IBUF[4]_inst 
       (.I(araddr[4]),
        .O(araddr_IBUF[4]));
  IBUF \araddr_IBUF[5]_inst 
       (.I(araddr[5]),
        .O(araddr_IBUF[5]));
  IBUF \araddr_IBUF[6]_inst 
       (.I(araddr[6]),
        .O(araddr_IBUF[6]));
  IBUF \araddr_IBUF[7]_inst 
       (.I(araddr[7]),
        .O(araddr_IBUF[7]));
  IBUF \araddr_IBUF[8]_inst 
       (.I(araddr[8]),
        .O(araddr_IBUF[8]));
  IBUF \araddr_IBUF[9]_inst 
       (.I(araddr[9]),
        .O(araddr_IBUF[9]));
  LUT3 #(
    .INIT(8'h08)) 
    \araddr_buffer[11]_i_1 
       (.I0(arvalid_IBUF),
        .I1(arready_OBUF),
        .I2(araddr_buffer_is_full),
        .O(araddr_buffer0));
  LUT5 #(
    .INIT(32'h7F707070)) 
    araddr_buffer_is_full_i_1
       (.I0(rready_IBUF),
        .I1(rvalid_OBUF),
        .I2(araddr_buffer_is_full),
        .I3(arvalid_IBUF),
        .I4(arready_OBUF),
        .O(araddr_buffer_is_full_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    araddr_buffer_is_full_reg
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_buffer_is_full_i_1_n_0),
        .Q(araddr_buffer_is_full));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[0]),
        .Q(araddr_buffer[0]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[10]),
        .Q(araddr_buffer[10]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[11]),
        .Q(araddr_buffer[11]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[1]),
        .Q(araddr_buffer[1]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[2]),
        .Q(araddr_buffer[2]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[3]),
        .Q(araddr_buffer[3]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[4]),
        .Q(araddr_buffer[4]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[5]),
        .Q(araddr_buffer[5]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[6]),
        .Q(araddr_buffer[6]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[7]),
        .Q(araddr_buffer[7]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[8]),
        .Q(araddr_buffer[8]));
  FDCE #(
    .INIT(1'b0)) 
    \araddr_buffer_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(araddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(araddr_IBUF[9]),
        .Q(araddr_buffer[9]));
  OBUF arready_OBUF_inst
       (.I(arready_OBUF),
        .O(arready));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    arready_reg_i_1
       (.I0(araddr_buffer_is_full),
        .I1(ap_idle),
        .I2(arvalid_IBUF),
        .I3(arready_OBUF),
        .O(arready_reg0));
  FDCE #(
    .INIT(1'b0)) 
    arready_reg_reg
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(arready_reg0),
        .Q(arready_OBUF));
  IBUF arvalid_IBUF_inst
       (.I(arvalid),
        .O(arvalid_IBUF));
  IBUF \awaddr_IBUF[0]_inst 
       (.I(awaddr[0]),
        .O(awaddr_IBUF[0]));
  IBUF \awaddr_IBUF[10]_inst 
       (.I(awaddr[10]),
        .O(awaddr_IBUF[10]));
  IBUF \awaddr_IBUF[11]_inst 
       (.I(awaddr[11]),
        .O(awaddr_IBUF[11]));
  IBUF \awaddr_IBUF[1]_inst 
       (.I(awaddr[1]),
        .O(awaddr_IBUF[1]));
  IBUF \awaddr_IBUF[2]_inst 
       (.I(awaddr[2]),
        .O(awaddr_IBUF[2]));
  IBUF \awaddr_IBUF[3]_inst 
       (.I(awaddr[3]),
        .O(awaddr_IBUF[3]));
  IBUF \awaddr_IBUF[4]_inst 
       (.I(awaddr[4]),
        .O(awaddr_IBUF[4]));
  IBUF \awaddr_IBUF[5]_inst 
       (.I(awaddr[5]),
        .O(awaddr_IBUF[5]));
  IBUF \awaddr_IBUF[6]_inst 
       (.I(awaddr[6]),
        .O(awaddr_IBUF[6]));
  IBUF \awaddr_IBUF[7]_inst 
       (.I(awaddr[7]),
        .O(awaddr_IBUF[7]));
  IBUF \awaddr_IBUF[8]_inst 
       (.I(awaddr[8]),
        .O(awaddr_IBUF[8]));
  IBUF \awaddr_IBUF[9]_inst 
       (.I(awaddr[9]),
        .O(awaddr_IBUF[9]));
  LUT3 #(
    .INIT(8'h08)) 
    \awaddr_buffer[11]_i_1 
       (.I0(awvalid_IBUF),
        .I1(awready_OBUF),
        .I2(awaddr_buffer_is_full),
        .O(awaddr_buffer0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7F707070)) 
    awaddr_buffer_is_full_i_1
       (.I0(wready_OBUF),
        .I1(wvalid_IBUF),
        .I2(awaddr_buffer_is_full),
        .I3(awvalid_IBUF),
        .I4(awready_OBUF),
        .O(awaddr_buffer_is_full_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    awaddr_buffer_is_full_reg
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_buffer_is_full_i_1_n_0),
        .Q(awaddr_buffer_is_full));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[0]),
        .Q(awaddr_buffer[0]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[10]),
        .Q(awaddr_buffer[10]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[11]),
        .Q(awaddr_buffer[11]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[1]),
        .Q(awaddr_buffer[1]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[2]),
        .Q(awaddr_buffer[2]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[3]),
        .Q(awaddr_buffer[3]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[4]),
        .Q(awaddr_buffer[4]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[5]),
        .Q(awaddr_buffer[5]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[6]),
        .Q(awaddr_buffer[6]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[7]),
        .Q(awaddr_buffer[7]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[8]),
        .Q(awaddr_buffer[8]));
  FDCE #(
    .INIT(1'b0)) 
    \awaddr_buffer_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(awaddr_buffer0),
        .CLR(wready_reg_i_2_n_0),
        .D(awaddr_IBUF[9]),
        .Q(awaddr_buffer[9]));
  OBUF awready_OBUF_inst
       (.I(awready_OBUF),
        .O(awready));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0444)) 
    awready_reg_i_1
       (.I0(awaddr_buffer_is_full),
        .I1(ap_idle),
        .I2(awvalid_IBUF),
        .I3(awready_OBUF),
        .O(awready_reg0));
  FDCE #(
    .INIT(1'b0)) 
    awready_reg_reg
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(awready_reg0),
        .Q(awready_OBUF));
  IBUF awvalid_IBUF_inst
       (.I(awvalid),
        .O(awvalid_IBUF));
  BUFG axis_clk_IBUF_BUFG_inst
       (.I(axis_clk_IBUF),
        .O(axis_clk_IBUF_BUFG));
  IBUF axis_clk_IBUF_inst
       (.I(axis_clk),
        .O(axis_clk_IBUF));
  IBUF axis_rst_n_IBUF_inst
       (.I(axis_rst_n),
        .O(axis_rst_n_IBUF));
  OBUF \data_A_OBUF[0]_inst 
       (.I(1'b0),
        .O(data_A[0]));
  OBUF \data_A_OBUF[10]_inst 
       (.I(data_A_OBUF[10]),
        .O(data_A[10]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data_A_OBUF[10]_inst_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(A[8]),
        .O(data_A_OBUF[10]));
  OBUF \data_A_OBUF[11]_inst 
       (.I(data_A_OBUF[11]),
        .O(data_A[11]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data_A_OBUF[11]_inst_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(A[9]),
        .O(data_A_OBUF[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_10 
       (.I0(h_reg4[28]),
        .O(\data_A_OBUF[11]_inst_i_10_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hF200)) 
    \data_A_OBUF[11]_inst_i_11 
       (.I0(\RAM_0x14_reg_n_0_[7] ),
        .I1(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I2(\x_cnt_reg_n_0_[7] ),
        .I3(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA5A5F0F01EE1F0F0)) 
    \data_A_OBUF[11]_inst_i_12 
       (.I0(\x_cnt_reg_n_0_[8] ),
        .I1(\RAM_0x14_reg_n_0_[8] ),
        .I2(\x_cnt_reg_n_0_[9] ),
        .I3(\RAM_0x14_reg_n_0_[9] ),
        .I4(p_2_in),
        .I5(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .O(\data_A_OBUF[11]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h99666966)) 
    \data_A_OBUF[11]_inst_i_13 
       (.I0(\data_A_OBUF[11]_inst_i_11_n_0 ),
        .I1(\x_cnt_reg_n_0_[8] ),
        .I2(\RAM_0x14_reg_n_0_[8] ),
        .I3(p_2_in),
        .I4(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .O(\data_A_OBUF[11]_inst_i_13_n_0 ));
  CARRY4 \data_A_OBUF[11]_inst_i_14 
       (.CI(\data_A_OBUF[11]_inst_i_21_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_14_n_0 ,\data_A_OBUF[11]_inst_i_14_n_1 ,\data_A_OBUF[11]_inst_i_14_n_2 ,\data_A_OBUF[11]_inst_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI(h_reg4[23:20]),
        .O(\NLW_data_A_OBUF[11]_inst_i_14_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_23_n_0 ,\data_A_OBUF[11]_inst_i_24_n_0 ,\data_A_OBUF[11]_inst_i_25_n_0 ,\data_A_OBUF[11]_inst_i_26_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_15 
       (.CI(\data_A_OBUF[11]_inst_i_22_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_15_n_0 ,\data_A_OBUF[11]_inst_i_15_n_1 ,\data_A_OBUF[11]_inst_i_15_n_2 ,\data_A_OBUF[11]_inst_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(h_reg4[24:21]),
        .S({\RAM_0x14_reg_n_0_[24] ,\RAM_0x14_reg_n_0_[23] ,\RAM_0x14_reg_n_0_[22] ,\RAM_0x14_reg_n_0_[21] }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_16 
       (.I0(h_reg4[27]),
        .O(\data_A_OBUF[11]_inst_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_17 
       (.I0(h_reg4[26]),
        .O(\data_A_OBUF[11]_inst_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_18 
       (.I0(h_reg4[25]),
        .O(\data_A_OBUF[11]_inst_i_18_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_19 
       (.I0(h_reg4[24]),
        .O(\data_A_OBUF[11]_inst_i_19_n_0 ));
  CARRY4 \data_A_OBUF[11]_inst_i_2 
       (.CI(\data_A_OBUF[11]_inst_i_4_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_2_n_0 ,\data_A_OBUF[11]_inst_i_2_n_1 ,\data_A_OBUF[11]_inst_i_2_n_2 ,\data_A_OBUF[11]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(h_reg4[31:28]),
        .O(\NLW_data_A_OBUF[11]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_7_n_0 ,\data_A_OBUF[11]_inst_i_8_n_0 ,\data_A_OBUF[11]_inst_i_9_n_0 ,\data_A_OBUF[11]_inst_i_10_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_20 
       (.CI(\data_A_OBUF[11]_inst_i_27_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_20_n_0 ,\data_A_OBUF[11]_inst_i_20_n_1 ,\data_A_OBUF[11]_inst_i_20_n_2 ,\data_A_OBUF[11]_inst_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_A_OBUF[11]_inst_i_28_n_0 ,\data_A_OBUF[11]_inst_i_29_n_0 ,\data_A_OBUF[11]_inst_i_30_n_0 ,\data_A_OBUF[11]_inst_i_31_n_0 }),
        .O(\NLW_data_A_OBUF[11]_inst_i_20_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_32_n_0 ,\data_A_OBUF[11]_inst_i_33_n_0 ,\data_A_OBUF[11]_inst_i_34_n_0 ,\data_A_OBUF[11]_inst_i_35_n_0 }));
  CARRY4 \data_A_OBUF[11]_inst_i_21 
       (.CI(\data_A_OBUF[11]_inst_i_36_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_21_n_0 ,\data_A_OBUF[11]_inst_i_21_n_1 ,\data_A_OBUF[11]_inst_i_21_n_2 ,\data_A_OBUF[11]_inst_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI(h_reg4[19:16]),
        .O(\NLW_data_A_OBUF[11]_inst_i_21_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_38_n_0 ,\data_A_OBUF[11]_inst_i_39_n_0 ,\data_A_OBUF[11]_inst_i_40_n_0 ,\data_A_OBUF[11]_inst_i_41_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_22 
       (.CI(\data_A_OBUF[11]_inst_i_37_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_22_n_0 ,\data_A_OBUF[11]_inst_i_22_n_1 ,\data_A_OBUF[11]_inst_i_22_n_2 ,\data_A_OBUF[11]_inst_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(h_reg4[20:17]),
        .S({\RAM_0x14_reg_n_0_[20] ,\RAM_0x14_reg_n_0_[19] ,\RAM_0x14_reg_n_0_[18] ,\RAM_0x14_reg_n_0_[17] }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_23 
       (.I0(h_reg4[23]),
        .O(\data_A_OBUF[11]_inst_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_24 
       (.I0(h_reg4[22]),
        .O(\data_A_OBUF[11]_inst_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_25 
       (.I0(h_reg4[21]),
        .O(\data_A_OBUF[11]_inst_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_26 
       (.I0(h_reg4[20]),
        .O(\data_A_OBUF[11]_inst_i_26_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_27 
       (.CI(\data_A_OBUF[11]_inst_i_42_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_27_n_0 ,\data_A_OBUF[11]_inst_i_27_n_1 ,\data_A_OBUF[11]_inst_i_27_n_2 ,\data_A_OBUF[11]_inst_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_A_OBUF[11]_inst_i_43_n_0 ,\data_A_OBUF[11]_inst_i_44_n_0 ,\data_A_OBUF[11]_inst_i_45_n_0 ,\data_A_OBUF[11]_inst_i_46_n_0 }),
        .O(\NLW_data_A_OBUF[11]_inst_i_27_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_47_n_0 ,\data_A_OBUF[11]_inst_i_48_n_0 ,\data_A_OBUF[11]_inst_i_49_n_0 ,\data_A_OBUF[11]_inst_i_50_n_0 }));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_28 
       (.I0(\x_cnt_reg_n_0_[31] ),
        .I1(\x_cnt_reg_n_0_[30] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_28_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_29 
       (.I0(\x_cnt_reg_n_0_[29] ),
        .I1(\x_cnt_reg_n_0_[28] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_29_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_3 
       (.CI(\data_A_OBUF[9]_inst_i_2_n_0 ),
        .CO({\NLW_data_A_OBUF[11]_inst_i_3_CO_UNCONNECTED [3:1],\data_A_OBUF[11]_inst_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\data_A_OBUF[11]_inst_i_11_n_0 }),
        .O({\NLW_data_A_OBUF[11]_inst_i_3_O_UNCONNECTED [3:2],A[9:8]}),
        .S({1'b0,1'b0,\data_A_OBUF[11]_inst_i_12_n_0 ,\data_A_OBUF[11]_inst_i_13_n_0 }));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_30 
       (.I0(\x_cnt_reg_n_0_[27] ),
        .I1(\x_cnt_reg_n_0_[26] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_30_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_31 
       (.I0(\x_cnt_reg_n_0_[25] ),
        .I1(\x_cnt_reg_n_0_[24] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_31_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_32 
       (.I0(\x_cnt_reg_n_0_[30] ),
        .I1(\x_cnt_reg_n_0_[31] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_33 
       (.I0(\x_cnt_reg_n_0_[28] ),
        .I1(\x_cnt_reg_n_0_[29] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_33_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_34 
       (.I0(\x_cnt_reg_n_0_[26] ),
        .I1(\x_cnt_reg_n_0_[27] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_34_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_35 
       (.I0(\x_cnt_reg_n_0_[24] ),
        .I1(\x_cnt_reg_n_0_[25] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_35_n_0 ));
  CARRY4 \data_A_OBUF[11]_inst_i_36 
       (.CI(\data_A_OBUF[11]_inst_i_51_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_36_n_0 ,\data_A_OBUF[11]_inst_i_36_n_1 ,\data_A_OBUF[11]_inst_i_36_n_2 ,\data_A_OBUF[11]_inst_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI(h_reg4[15:12]),
        .O(\NLW_data_A_OBUF[11]_inst_i_36_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_53_n_0 ,\data_A_OBUF[11]_inst_i_54_n_0 ,\data_A_OBUF[11]_inst_i_55_n_0 ,\data_A_OBUF[11]_inst_i_56_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_37 
       (.CI(\data_A_OBUF[11]_inst_i_52_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_37_n_0 ,\data_A_OBUF[11]_inst_i_37_n_1 ,\data_A_OBUF[11]_inst_i_37_n_2 ,\data_A_OBUF[11]_inst_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(h_reg4[16:13]),
        .S({\RAM_0x14_reg_n_0_[16] ,\RAM_0x14_reg_n_0_[15] ,\RAM_0x14_reg_n_0_[14] ,\RAM_0x14_reg_n_0_[13] }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_38 
       (.I0(h_reg4[19]),
        .O(\data_A_OBUF[11]_inst_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_39 
       (.I0(h_reg4[18]),
        .O(\data_A_OBUF[11]_inst_i_39_n_0 ));
  CARRY4 \data_A_OBUF[11]_inst_i_4 
       (.CI(\data_A_OBUF[11]_inst_i_14_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_4_n_0 ,\data_A_OBUF[11]_inst_i_4_n_1 ,\data_A_OBUF[11]_inst_i_4_n_2 ,\data_A_OBUF[11]_inst_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(h_reg4[27:24]),
        .O(\NLW_data_A_OBUF[11]_inst_i_4_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_16_n_0 ,\data_A_OBUF[11]_inst_i_17_n_0 ,\data_A_OBUF[11]_inst_i_18_n_0 ,\data_A_OBUF[11]_inst_i_19_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_40 
       (.I0(h_reg4[17]),
        .O(\data_A_OBUF[11]_inst_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_41 
       (.I0(h_reg4[16]),
        .O(\data_A_OBUF[11]_inst_i_41_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_42 
       (.CI(\data_A_OBUF[11]_inst_i_57_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_42_n_0 ,\data_A_OBUF[11]_inst_i_42_n_1 ,\data_A_OBUF[11]_inst_i_42_n_2 ,\data_A_OBUF[11]_inst_i_42_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_A_OBUF[11]_inst_i_58_n_0 ,\data_A_OBUF[11]_inst_i_59_n_0 ,\data_A_OBUF[11]_inst_i_60_n_0 ,\data_A_OBUF[11]_inst_i_61_n_0 }),
        .O(\NLW_data_A_OBUF[11]_inst_i_42_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_62_n_0 ,\data_A_OBUF[11]_inst_i_63_n_0 ,\data_A_OBUF[11]_inst_i_64_n_0 ,\data_A_OBUF[11]_inst_i_65_n_0 }));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_43 
       (.I0(\x_cnt_reg_n_0_[23] ),
        .I1(\x_cnt_reg_n_0_[22] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_43_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_44 
       (.I0(\x_cnt_reg_n_0_[21] ),
        .I1(\x_cnt_reg_n_0_[20] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_44_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_45 
       (.I0(\x_cnt_reg_n_0_[19] ),
        .I1(\x_cnt_reg_n_0_[18] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_45_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_46 
       (.I0(\x_cnt_reg_n_0_[17] ),
        .I1(\x_cnt_reg_n_0_[16] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_47 
       (.I0(\x_cnt_reg_n_0_[22] ),
        .I1(\x_cnt_reg_n_0_[23] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_47_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_48 
       (.I0(\x_cnt_reg_n_0_[20] ),
        .I1(\x_cnt_reg_n_0_[21] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_49 
       (.I0(\x_cnt_reg_n_0_[18] ),
        .I1(\x_cnt_reg_n_0_[19] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_49_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_5 
       (.CI(\data_A_OBUF[11]_inst_i_6_n_0 ),
        .CO({\NLW_data_A_OBUF[11]_inst_i_5_CO_UNCONNECTED [3:2],\data_A_OBUF[11]_inst_i_5_n_2 ,\data_A_OBUF[11]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_A_OBUF[11]_inst_i_5_O_UNCONNECTED [3],h_reg4[31:29]}),
        .S({1'b0,\RAM_0x14_reg_n_0_[31] ,\RAM_0x14_reg_n_0_[30] ,\RAM_0x14_reg_n_0_[29] }));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_50 
       (.I0(\x_cnt_reg_n_0_[16] ),
        .I1(\x_cnt_reg_n_0_[17] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_50_n_0 ));
  CARRY4 \data_A_OBUF[11]_inst_i_51 
       (.CI(\data_A_OBUF[11]_inst_i_66_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_51_n_0 ,\data_A_OBUF[11]_inst_i_51_n_1 ,\data_A_OBUF[11]_inst_i_51_n_2 ,\data_A_OBUF[11]_inst_i_51_n_3 }),
        .CYINIT(1'b0),
        .DI(h_reg4[11:8]),
        .O(\NLW_data_A_OBUF[11]_inst_i_51_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_68_n_0 ,\data_A_OBUF[11]_inst_i_69_n_0 ,\data_A_OBUF[11]_inst_i_70_n_0 ,\data_A_OBUF[11]_inst_i_71_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_52 
       (.CI(\data_A_OBUF[11]_inst_i_67_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_52_n_0 ,\data_A_OBUF[11]_inst_i_52_n_1 ,\data_A_OBUF[11]_inst_i_52_n_2 ,\data_A_OBUF[11]_inst_i_52_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(h_reg4[12:9]),
        .S({\RAM_0x14_reg_n_0_[12] ,\RAM_0x14_reg_n_0_[11] ,\RAM_0x14_reg_n_0_[10] ,\RAM_0x14_reg_n_0_[9] }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_53 
       (.I0(h_reg4[15]),
        .O(\data_A_OBUF[11]_inst_i_53_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_54 
       (.I0(h_reg4[14]),
        .O(\data_A_OBUF[11]_inst_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_55 
       (.I0(h_reg4[13]),
        .O(\data_A_OBUF[11]_inst_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_56 
       (.I0(h_reg4[12]),
        .O(\data_A_OBUF[11]_inst_i_56_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_57 
       (.CI(1'b0),
        .CO({\data_A_OBUF[11]_inst_i_57_n_0 ,\data_A_OBUF[11]_inst_i_57_n_1 ,\data_A_OBUF[11]_inst_i_57_n_2 ,\data_A_OBUF[11]_inst_i_57_n_3 }),
        .CYINIT(1'b1),
        .DI({\data_A_OBUF[11]_inst_i_72_n_0 ,\data_A_OBUF[11]_inst_i_73_n_0 ,\data_A_OBUF[11]_inst_i_74_n_0 ,\data_A_OBUF[11]_inst_i_75_n_0 }),
        .O(\NLW_data_A_OBUF[11]_inst_i_57_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_76_n_0 ,\data_A_OBUF[11]_inst_i_77_n_0 ,\data_A_OBUF[11]_inst_i_78_n_0 ,\data_A_OBUF[11]_inst_i_79_n_0 }));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_58 
       (.I0(\x_cnt_reg_n_0_[15] ),
        .I1(\x_cnt_reg_n_0_[14] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_58_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_59 
       (.I0(\x_cnt_reg_n_0_[13] ),
        .I1(\x_cnt_reg_n_0_[12] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_59_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_6 
       (.CI(\data_A_OBUF[11]_inst_i_15_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_6_n_0 ,\data_A_OBUF[11]_inst_i_6_n_1 ,\data_A_OBUF[11]_inst_i_6_n_2 ,\data_A_OBUF[11]_inst_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(h_reg4[28:25]),
        .S({\RAM_0x14_reg_n_0_[28] ,\RAM_0x14_reg_n_0_[27] ,\RAM_0x14_reg_n_0_[26] ,\RAM_0x14_reg_n_0_[25] }));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_60 
       (.I0(\x_cnt_reg_n_0_[11] ),
        .I1(\x_cnt_reg_n_0_[10] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_60_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_61 
       (.I0(\x_cnt_reg_n_0_[9] ),
        .I1(\x_cnt_reg_n_0_[8] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_61_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_62 
       (.I0(\x_cnt_reg_n_0_[14] ),
        .I1(\x_cnt_reg_n_0_[15] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_62_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_63 
       (.I0(\x_cnt_reg_n_0_[12] ),
        .I1(\x_cnt_reg_n_0_[13] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_63_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_64 
       (.I0(\x_cnt_reg_n_0_[10] ),
        .I1(\x_cnt_reg_n_0_[11] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_64_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_65 
       (.I0(\x_cnt_reg_n_0_[8] ),
        .I1(\x_cnt_reg_n_0_[9] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_65_n_0 ));
  CARRY4 \data_A_OBUF[11]_inst_i_66 
       (.CI(\data_A_OBUF[11]_inst_i_80_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_66_n_0 ,\data_A_OBUF[11]_inst_i_66_n_1 ,\data_A_OBUF[11]_inst_i_66_n_2 ,\data_A_OBUF[11]_inst_i_66_n_3 }),
        .CYINIT(1'b0),
        .DI(h_reg4[7:4]),
        .O(\NLW_data_A_OBUF[11]_inst_i_66_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_82_n_0 ,\data_A_OBUF[11]_inst_i_83_n_0 ,\data_A_OBUF[11]_inst_i_84_n_0 ,\data_A_OBUF[11]_inst_i_85_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_67 
       (.CI(\data_A_OBUF[11]_inst_i_81_n_0 ),
        .CO({\data_A_OBUF[11]_inst_i_67_n_0 ,\data_A_OBUF[11]_inst_i_67_n_1 ,\data_A_OBUF[11]_inst_i_67_n_2 ,\data_A_OBUF[11]_inst_i_67_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(h_reg4[8:5]),
        .S({\RAM_0x14_reg_n_0_[8] ,\RAM_0x14_reg_n_0_[7] ,\RAM_0x14_reg_n_0_[6] ,\RAM_0x14_reg_n_0_[5] }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_68 
       (.I0(h_reg4[11]),
        .O(\data_A_OBUF[11]_inst_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_69 
       (.I0(h_reg4[10]),
        .O(\data_A_OBUF[11]_inst_i_69_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_7 
       (.I0(h_reg4[31]),
        .O(\data_A_OBUF[11]_inst_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_70 
       (.I0(h_reg4[9]),
        .O(\data_A_OBUF[11]_inst_i_70_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_71 
       (.I0(h_reg4[8]),
        .O(\data_A_OBUF[11]_inst_i_71_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \data_A_OBUF[11]_inst_i_72 
       (.I0(\x_cnt_reg_n_0_[7] ),
        .I1(\x_cnt_reg_n_0_[6] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_72_n_0 ));
  LUT4 #(
    .INIT(16'hD444)) 
    \data_A_OBUF[11]_inst_i_73 
       (.I0(\data_A_OBUF[9]_inst_i_11_n_0 ),
        .I1(\x_cnt_reg_n_0_[5] ),
        .I2(\tap_A_OBUF[6]_inst_i_3_n_0 ),
        .I3(\x_cnt_reg_n_0_[4] ),
        .O(\data_A_OBUF[11]_inst_i_73_n_0 ));
  LUT6 #(
    .INIT(64'h777E111455560000)) 
    \data_A_OBUF[11]_inst_i_74 
       (.I0(k[3]),
        .I1(k[2]),
        .I2(k[1]),
        .I3(k[0]),
        .I4(\x_cnt_reg_n_0_[3] ),
        .I5(\x_cnt_reg_n_0_[2] ),
        .O(\data_A_OBUF[11]_inst_i_74_n_0 ));
  LUT4 #(
    .INIT(16'hE460)) 
    \data_A_OBUF[11]_inst_i_75 
       (.I0(k[1]),
        .I1(k[0]),
        .I2(\x_cnt_reg_n_0_[1] ),
        .I3(\x_cnt_reg_n_0_[0] ),
        .O(\data_A_OBUF[11]_inst_i_75_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \data_A_OBUF[11]_inst_i_76 
       (.I0(\x_cnt_reg_n_0_[6] ),
        .I1(\x_cnt_reg_n_0_[7] ),
        .I2(p_2_in),
        .O(\data_A_OBUF[11]_inst_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \data_A_OBUF[11]_inst_i_77 
       (.I0(\data_A_OBUF[9]_inst_i_11_n_0 ),
        .I1(\x_cnt_reg_n_0_[5] ),
        .I2(\tap_A_OBUF[6]_inst_i_3_n_0 ),
        .I3(\x_cnt_reg_n_0_[4] ),
        .O(\data_A_OBUF[11]_inst_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h8881444222281114)) 
    \data_A_OBUF[11]_inst_i_78 
       (.I0(k[3]),
        .I1(k[2]),
        .I2(k[1]),
        .I3(k[0]),
        .I4(\x_cnt_reg_n_0_[3] ),
        .I5(\x_cnt_reg_n_0_[2] ),
        .O(\data_A_OBUF[11]_inst_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h1284)) 
    \data_A_OBUF[11]_inst_i_79 
       (.I0(k[1]),
        .I1(k[0]),
        .I2(\x_cnt_reg_n_0_[1] ),
        .I3(\x_cnt_reg_n_0_[0] ),
        .O(\data_A_OBUF[11]_inst_i_79_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_8 
       (.I0(h_reg4[30]),
        .O(\data_A_OBUF[11]_inst_i_8_n_0 ));
  CARRY4 \data_A_OBUF[11]_inst_i_80 
       (.CI(1'b0),
        .CO({\data_A_OBUF[11]_inst_i_80_n_0 ,\data_A_OBUF[11]_inst_i_80_n_1 ,\data_A_OBUF[11]_inst_i_80_n_2 ,\data_A_OBUF[11]_inst_i_80_n_3 }),
        .CYINIT(1'b1),
        .DI(h_reg4[3:0]),
        .O(\NLW_data_A_OBUF[11]_inst_i_80_O_UNCONNECTED [3:0]),
        .S({\data_A_OBUF[11]_inst_i_87_n_0 ,\data_A_OBUF[11]_inst_i_88_n_0 ,\data_A_OBUF[11]_inst_i_89_n_0 ,\data_A_OBUF[11]_inst_i_90_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_A_OBUF[11]_inst_i_81 
       (.CI(1'b0),
        .CO({\data_A_OBUF[11]_inst_i_81_n_0 ,\data_A_OBUF[11]_inst_i_81_n_1 ,\data_A_OBUF[11]_inst_i_81_n_2 ,\data_A_OBUF[11]_inst_i_81_n_3 }),
        .CYINIT(\RAM_0x14_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(h_reg4[4:1]),
        .S({\RAM_0x14_reg_n_0_[4] ,\RAM_0x14_reg_n_0_[3] ,\RAM_0x14_reg_n_0_[2] ,\RAM_0x14_reg_n_0_[1] }));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_82 
       (.I0(h_reg4[7]),
        .O(\data_A_OBUF[11]_inst_i_82_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_83 
       (.I0(h_reg4[6]),
        .O(\data_A_OBUF[11]_inst_i_83_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_A_OBUF[11]_inst_i_84 
       (.I0(h_reg4[5]),
        .I1(k[5]),
        .O(\data_A_OBUF[11]_inst_i_84_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_A_OBUF[11]_inst_i_85 
       (.I0(h_reg4[4]),
        .I1(k[4]),
        .O(\data_A_OBUF[11]_inst_i_85_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_86 
       (.I0(\RAM_0x14_reg_n_0_[0] ),
        .O(h_reg4[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \data_A_OBUF[11]_inst_i_87 
       (.I0(h_reg4[3]),
        .I1(k[3]),
        .O(\data_A_OBUF[11]_inst_i_87_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_A_OBUF[11]_inst_i_88 
       (.I0(h_reg4[2]),
        .I1(k[2]),
        .O(\data_A_OBUF[11]_inst_i_88_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_A_OBUF[11]_inst_i_89 
       (.I0(h_reg4[1]),
        .I1(k[1]),
        .O(\data_A_OBUF[11]_inst_i_89_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_A_OBUF[11]_inst_i_9 
       (.I0(h_reg4[29]),
        .O(\data_A_OBUF[11]_inst_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_A_OBUF[11]_inst_i_90 
       (.I0(\RAM_0x14_reg_n_0_[0] ),
        .I1(k[0]),
        .O(\data_A_OBUF[11]_inst_i_90_n_0 ));
  OBUF \data_A_OBUF[1]_inst 
       (.I(1'b0),
        .O(data_A[1]));
  OBUF \data_A_OBUF[2]_inst 
       (.I(data_A_OBUF[2]),
        .O(data_A[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \data_A_OBUF[2]_inst_i_1 
       (.I0(init_addr[2]),
        .I1(A[0]),
        .I2(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I3(ap_idle),
        .O(data_A_OBUF[2]));
  OBUF \data_A_OBUF[3]_inst 
       (.I(data_A_OBUF[3]),
        .O(data_A[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \data_A_OBUF[3]_inst_i_1 
       (.I0(init_addr[3]),
        .I1(A[1]),
        .I2(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I3(ap_idle),
        .O(data_A_OBUF[3]));
  OBUF \data_A_OBUF[4]_inst 
       (.I(data_A_OBUF[4]),
        .O(data_A[4]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \data_A_OBUF[4]_inst_i_1 
       (.I0(init_addr[4]),
        .I1(A[2]),
        .I2(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I3(ap_idle),
        .O(data_A_OBUF[4]));
  OBUF \data_A_OBUF[5]_inst 
       (.I(data_A_OBUF[5]),
        .O(data_A[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \data_A_OBUF[5]_inst_i_1 
       (.I0(init_addr[5]),
        .I1(A[3]),
        .I2(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I3(ap_idle),
        .O(data_A_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \data_A_OBUF[5]_inst_i_10 
       (.I0(k[1]),
        .I1(k[0]),
        .I2(k[2]),
        .O(\data_A_OBUF[5]_inst_i_10_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_A_OBUF[5]_inst_i_2 
       (.CI(1'b0),
        .CO({\data_A_OBUF[5]_inst_i_2_n_0 ,\data_A_OBUF[5]_inst_i_2_n_1 ,\data_A_OBUF[5]_inst_i_2_n_2 ,\data_A_OBUF[5]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_A_OBUF[5]_inst_i_3_n_0 ,\data_A_OBUF[5]_inst_i_4_n_0 ,\data_A_OBUF[5]_inst_i_5_n_0 ,k[0]}),
        .O(A[3:0]),
        .S({\data_A_OBUF[5]_inst_i_6_n_0 ,\data_A_OBUF[5]_inst_i_7_n_0 ,\data_A_OBUF[5]_inst_i_8_n_0 ,\data_A_OBUF[5]_inst_i_9_n_0 }));
  LUT5 #(
    .INIT(32'h4000F040)) 
    \data_A_OBUF[5]_inst_i_3 
       (.I0(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I1(\RAM_0x14_reg_n_0_[2] ),
        .I2(p_2_in),
        .I3(\x_cnt_reg_n_0_[2] ),
        .I4(\data_A_OBUF[5]_inst_i_10_n_0 ),
        .O(\data_A_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000F040F0404000)) 
    \data_A_OBUF[5]_inst_i_4 
       (.I0(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I1(\RAM_0x14_reg_n_0_[1] ),
        .I2(p_2_in),
        .I3(\x_cnt_reg_n_0_[1] ),
        .I4(k[0]),
        .I5(k[1]),
        .O(\data_A_OBUF[5]_inst_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hF200)) 
    \data_A_OBUF[5]_inst_i_5 
       (.I0(\RAM_0x14_reg_n_0_[0] ),
        .I1(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I2(\x_cnt_reg_n_0_[0] ),
        .I3(p_2_in),
        .O(\data_A_OBUF[5]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9966696666669666)) 
    \data_A_OBUF[5]_inst_i_6 
       (.I0(\data_A_OBUF[5]_inst_i_3_n_0 ),
        .I1(\x_cnt_reg_n_0_[3] ),
        .I2(\RAM_0x14_reg_n_0_[3] ),
        .I3(p_2_in),
        .I4(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I5(\tap_A_OBUF[5]_inst_i_2_n_0 ),
        .O(\data_A_OBUF[5]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h6666966699666966)) 
    \data_A_OBUF[5]_inst_i_7 
       (.I0(\data_A_OBUF[5]_inst_i_4_n_0 ),
        .I1(\x_cnt_reg_n_0_[2] ),
        .I2(\RAM_0x14_reg_n_0_[2] ),
        .I3(p_2_in),
        .I4(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I5(\data_A_OBUF[5]_inst_i_10_n_0 ),
        .O(\data_A_OBUF[5]_inst_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9966696666669666)) 
    \data_A_OBUF[5]_inst_i_8 
       (.I0(\data_A_OBUF[5]_inst_i_5_n_0 ),
        .I1(\x_cnt_reg_n_0_[1] ),
        .I2(\RAM_0x14_reg_n_0_[1] ),
        .I3(p_2_in),
        .I4(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I5(\tap_A_OBUF[3]_inst_i_2_n_0 ),
        .O(\data_A_OBUF[5]_inst_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hD20F2DF0)) 
    \data_A_OBUF[5]_inst_i_9 
       (.I0(\RAM_0x14_reg_n_0_[0] ),
        .I1(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I2(\x_cnt_reg_n_0_[0] ),
        .I3(p_2_in),
        .I4(k[0]),
        .O(\data_A_OBUF[5]_inst_i_9_n_0 ));
  OBUF \data_A_OBUF[6]_inst 
       (.I(data_A_OBUF[6]),
        .O(data_A[6]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \data_A_OBUF[6]_inst_i_1 
       (.I0(init_addr[6]),
        .I1(A[4]),
        .I2(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I3(ap_idle),
        .O(data_A_OBUF[6]));
  OBUF \data_A_OBUF[7]_inst 
       (.I(data_A_OBUF[7]),
        .O(data_A[7]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hAAC0)) 
    \data_A_OBUF[7]_inst_i_1 
       (.I0(init_addr[7]),
        .I1(A[5]),
        .I2(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I3(ap_idle),
        .O(data_A_OBUF[7]));
  OBUF \data_A_OBUF[8]_inst 
       (.I(data_A_OBUF[8]),
        .O(data_A[8]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data_A_OBUF[8]_inst_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(A[6]),
        .O(data_A_OBUF[8]));
  OBUF \data_A_OBUF[9]_inst 
       (.I(data_A_OBUF[9]),
        .O(data_A[9]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \data_A_OBUF[9]_inst_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(A[7]),
        .O(data_A_OBUF[9]));
  LUT6 #(
    .INIT(64'h9966696666669666)) 
    \data_A_OBUF[9]_inst_i_10 
       (.I0(\data_A_OBUF[9]_inst_i_6_n_0 ),
        .I1(\x_cnt_reg_n_0_[4] ),
        .I2(\RAM_0x14_reg_n_0_[4] ),
        .I3(p_2_in),
        .I4(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I5(\tap_A_OBUF[6]_inst_i_3_n_0 ),
        .O(\data_A_OBUF[9]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \data_A_OBUF[9]_inst_i_11 
       (.I0(k[0]),
        .I1(k[3]),
        .I2(k[1]),
        .I3(k[2]),
        .I4(k[4]),
        .I5(k[5]),
        .O(\data_A_OBUF[9]_inst_i_11_n_0 ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_A_OBUF[9]_inst_i_2 
       (.CI(\data_A_OBUF[5]_inst_i_2_n_0 ),
        .CO({\data_A_OBUF[9]_inst_i_2_n_0 ,\data_A_OBUF[9]_inst_i_2_n_1 ,\data_A_OBUF[9]_inst_i_2_n_2 ,\data_A_OBUF[9]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\data_A_OBUF[9]_inst_i_3_n_0 ,\data_A_OBUF[9]_inst_i_4_n_0 ,\data_A_OBUF[9]_inst_i_5_n_0 ,\data_A_OBUF[9]_inst_i_6_n_0 }),
        .O(A[7:4]),
        .S({\data_A_OBUF[9]_inst_i_7_n_0 ,\data_A_OBUF[9]_inst_i_8_n_0 ,\data_A_OBUF[9]_inst_i_9_n_0 ,\data_A_OBUF[9]_inst_i_10_n_0 }));
  LUT4 #(
    .INIT(16'hF200)) 
    \data_A_OBUF[9]_inst_i_3 
       (.I0(\RAM_0x14_reg_n_0_[6] ),
        .I1(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I2(\x_cnt_reg_n_0_[6] ),
        .I3(p_2_in),
        .O(\data_A_OBUF[9]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4FF004040440)) 
    \data_A_OBUF[9]_inst_i_4 
       (.I0(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I1(\RAM_0x14_reg_n_0_[5] ),
        .I2(k[5]),
        .I3(tap_EN_OBUF_inst_i_4_n_0),
        .I4(k[0]),
        .I5(\x_cnt_reg_n_0_[5] ),
        .O(\data_A_OBUF[9]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0404000)) 
    \data_A_OBUF[9]_inst_i_5 
       (.I0(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I1(\RAM_0x14_reg_n_0_[4] ),
        .I2(p_2_in),
        .I3(\x_cnt_reg_n_0_[4] ),
        .I4(\tap_A_OBUF[6]_inst_i_3_n_0 ),
        .O(\data_A_OBUF[9]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0404000)) 
    \data_A_OBUF[9]_inst_i_6 
       (.I0(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I1(\RAM_0x14_reg_n_0_[3] ),
        .I2(p_2_in),
        .I3(\x_cnt_reg_n_0_[3] ),
        .I4(\tap_A_OBUF[5]_inst_i_2_n_0 ),
        .O(\data_A_OBUF[9]_inst_i_6_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'hD20F2DF0)) 
    \data_A_OBUF[9]_inst_i_7 
       (.I0(\RAM_0x14_reg_n_0_[7] ),
        .I1(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I2(\x_cnt_reg_n_0_[7] ),
        .I3(p_2_in),
        .I4(\data_A_OBUF[9]_inst_i_3_n_0 ),
        .O(\data_A_OBUF[9]_inst_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hD20F2DF0)) 
    \data_A_OBUF[9]_inst_i_8 
       (.I0(\RAM_0x14_reg_n_0_[6] ),
        .I1(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I2(\x_cnt_reg_n_0_[6] ),
        .I3(p_2_in),
        .I4(\data_A_OBUF[9]_inst_i_4_n_0 ),
        .O(\data_A_OBUF[9]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h6666966699666966)) 
    \data_A_OBUF[9]_inst_i_9 
       (.I0(\data_A_OBUF[9]_inst_i_5_n_0 ),
        .I1(\x_cnt_reg_n_0_[5] ),
        .I2(\RAM_0x14_reg_n_0_[5] ),
        .I3(p_2_in),
        .I4(\data_A_OBUF[11]_inst_i_20_n_0 ),
        .I5(\data_A_OBUF[9]_inst_i_11_n_0 ),
        .O(\data_A_OBUF[9]_inst_i_9_n_0 ));
  OBUF \data_Di_OBUF[0]_inst 
       (.I(data_Di_OBUF[0]),
        .O(data_Di[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[0]_inst_i_1 
       (.I0(ss_tdata_IBUF[0]),
        .I1(ap_idle),
        .O(data_Di_OBUF[0]));
  OBUF \data_Di_OBUF[10]_inst 
       (.I(data_Di_OBUF[10]),
        .O(data_Di[10]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[10]_inst_i_1 
       (.I0(ss_tdata_IBUF[10]),
        .I1(ap_idle),
        .O(data_Di_OBUF[10]));
  OBUF \data_Di_OBUF[11]_inst 
       (.I(data_Di_OBUF[11]),
        .O(data_Di[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[11]_inst_i_1 
       (.I0(ss_tdata_IBUF[11]),
        .I1(ap_idle),
        .O(data_Di_OBUF[11]));
  OBUF \data_Di_OBUF[12]_inst 
       (.I(data_Di_OBUF[12]),
        .O(data_Di[12]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[12]_inst_i_1 
       (.I0(ss_tdata_IBUF[12]),
        .I1(ap_idle),
        .O(data_Di_OBUF[12]));
  OBUF \data_Di_OBUF[13]_inst 
       (.I(data_Di_OBUF[13]),
        .O(data_Di[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[13]_inst_i_1 
       (.I0(ss_tdata_IBUF[13]),
        .I1(ap_idle),
        .O(data_Di_OBUF[13]));
  OBUF \data_Di_OBUF[14]_inst 
       (.I(data_Di_OBUF[14]),
        .O(data_Di[14]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[14]_inst_i_1 
       (.I0(ss_tdata_IBUF[14]),
        .I1(ap_idle),
        .O(data_Di_OBUF[14]));
  OBUF \data_Di_OBUF[15]_inst 
       (.I(data_Di_OBUF[15]),
        .O(data_Di[15]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[15]_inst_i_1 
       (.I0(ss_tdata_IBUF[15]),
        .I1(ap_idle),
        .O(data_Di_OBUF[15]));
  OBUF \data_Di_OBUF[16]_inst 
       (.I(data_Di_OBUF[16]),
        .O(data_Di[16]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[16]_inst_i_1 
       (.I0(ss_tdata_IBUF[16]),
        .I1(ap_idle),
        .O(data_Di_OBUF[16]));
  OBUF \data_Di_OBUF[17]_inst 
       (.I(data_Di_OBUF[17]),
        .O(data_Di[17]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[17]_inst_i_1 
       (.I0(ss_tdata_IBUF[17]),
        .I1(ap_idle),
        .O(data_Di_OBUF[17]));
  OBUF \data_Di_OBUF[18]_inst 
       (.I(data_Di_OBUF[18]),
        .O(data_Di[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[18]_inst_i_1 
       (.I0(ss_tdata_IBUF[18]),
        .I1(ap_idle),
        .O(data_Di_OBUF[18]));
  OBUF \data_Di_OBUF[19]_inst 
       (.I(data_Di_OBUF[19]),
        .O(data_Di[19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[19]_inst_i_1 
       (.I0(ss_tdata_IBUF[19]),
        .I1(ap_idle),
        .O(data_Di_OBUF[19]));
  OBUF \data_Di_OBUF[1]_inst 
       (.I(data_Di_OBUF[1]),
        .O(data_Di[1]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[1]_inst_i_1 
       (.I0(ss_tdata_IBUF[1]),
        .I1(ap_idle),
        .O(data_Di_OBUF[1]));
  OBUF \data_Di_OBUF[20]_inst 
       (.I(data_Di_OBUF[20]),
        .O(data_Di[20]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[20]_inst_i_1 
       (.I0(ss_tdata_IBUF[20]),
        .I1(ap_idle),
        .O(data_Di_OBUF[20]));
  OBUF \data_Di_OBUF[21]_inst 
       (.I(data_Di_OBUF[21]),
        .O(data_Di[21]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[21]_inst_i_1 
       (.I0(ss_tdata_IBUF[21]),
        .I1(ap_idle),
        .O(data_Di_OBUF[21]));
  OBUF \data_Di_OBUF[22]_inst 
       (.I(data_Di_OBUF[22]),
        .O(data_Di[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[22]_inst_i_1 
       (.I0(ss_tdata_IBUF[22]),
        .I1(ap_idle),
        .O(data_Di_OBUF[22]));
  OBUF \data_Di_OBUF[23]_inst 
       (.I(data_Di_OBUF[23]),
        .O(data_Di[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[23]_inst_i_1 
       (.I0(ss_tdata_IBUF[23]),
        .I1(ap_idle),
        .O(data_Di_OBUF[23]));
  OBUF \data_Di_OBUF[24]_inst 
       (.I(data_Di_OBUF[24]),
        .O(data_Di[24]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[24]_inst_i_1 
       (.I0(ss_tdata_IBUF[24]),
        .I1(ap_idle),
        .O(data_Di_OBUF[24]));
  OBUF \data_Di_OBUF[25]_inst 
       (.I(data_Di_OBUF[25]),
        .O(data_Di[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[25]_inst_i_1 
       (.I0(ss_tdata_IBUF[25]),
        .I1(ap_idle),
        .O(data_Di_OBUF[25]));
  OBUF \data_Di_OBUF[26]_inst 
       (.I(data_Di_OBUF[26]),
        .O(data_Di[26]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[26]_inst_i_1 
       (.I0(ss_tdata_IBUF[26]),
        .I1(ap_idle),
        .O(data_Di_OBUF[26]));
  OBUF \data_Di_OBUF[27]_inst 
       (.I(data_Di_OBUF[27]),
        .O(data_Di[27]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[27]_inst_i_1 
       (.I0(ss_tdata_IBUF[27]),
        .I1(ap_idle),
        .O(data_Di_OBUF[27]));
  OBUF \data_Di_OBUF[28]_inst 
       (.I(data_Di_OBUF[28]),
        .O(data_Di[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[28]_inst_i_1 
       (.I0(ss_tdata_IBUF[28]),
        .I1(ap_idle),
        .O(data_Di_OBUF[28]));
  OBUF \data_Di_OBUF[29]_inst 
       (.I(data_Di_OBUF[29]),
        .O(data_Di[29]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[29]_inst_i_1 
       (.I0(ss_tdata_IBUF[29]),
        .I1(ap_idle),
        .O(data_Di_OBUF[29]));
  OBUF \data_Di_OBUF[2]_inst 
       (.I(data_Di_OBUF[2]),
        .O(data_Di[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[2]_inst_i_1 
       (.I0(ss_tdata_IBUF[2]),
        .I1(ap_idle),
        .O(data_Di_OBUF[2]));
  OBUF \data_Di_OBUF[30]_inst 
       (.I(data_Di_OBUF[30]),
        .O(data_Di[30]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[30]_inst_i_1 
       (.I0(ss_tdata_IBUF[30]),
        .I1(ap_idle),
        .O(data_Di_OBUF[30]));
  OBUF \data_Di_OBUF[31]_inst 
       (.I(data_Di_OBUF[31]),
        .O(data_Di[31]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[31]_inst_i_1 
       (.I0(ss_tdata_IBUF[31]),
        .I1(ap_idle),
        .O(data_Di_OBUF[31]));
  OBUF \data_Di_OBUF[3]_inst 
       (.I(data_Di_OBUF[3]),
        .O(data_Di[3]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[3]_inst_i_1 
       (.I0(ss_tdata_IBUF[3]),
        .I1(ap_idle),
        .O(data_Di_OBUF[3]));
  OBUF \data_Di_OBUF[4]_inst 
       (.I(data_Di_OBUF[4]),
        .O(data_Di[4]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[4]_inst_i_1 
       (.I0(ss_tdata_IBUF[4]),
        .I1(ap_idle),
        .O(data_Di_OBUF[4]));
  OBUF \data_Di_OBUF[5]_inst 
       (.I(data_Di_OBUF[5]),
        .O(data_Di[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[5]_inst_i_1 
       (.I0(ss_tdata_IBUF[5]),
        .I1(ap_idle),
        .O(data_Di_OBUF[5]));
  OBUF \data_Di_OBUF[6]_inst 
       (.I(data_Di_OBUF[6]),
        .O(data_Di[6]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[6]_inst_i_1 
       (.I0(ss_tdata_IBUF[6]),
        .I1(ap_idle),
        .O(data_Di_OBUF[6]));
  OBUF \data_Di_OBUF[7]_inst 
       (.I(data_Di_OBUF[7]),
        .O(data_Di[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[7]_inst_i_1 
       (.I0(ss_tdata_IBUF[7]),
        .I1(ap_idle),
        .O(data_Di_OBUF[7]));
  OBUF \data_Di_OBUF[8]_inst 
       (.I(data_Di_OBUF[8]),
        .O(data_Di[8]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[8]_inst_i_1 
       (.I0(ss_tdata_IBUF[8]),
        .I1(ap_idle),
        .O(data_Di_OBUF[8]));
  OBUF \data_Di_OBUF[9]_inst 
       (.I(data_Di_OBUF[9]),
        .O(data_Di[9]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_Di_OBUF[9]_inst_i_1 
       (.I0(ss_tdata_IBUF[9]),
        .I1(ap_idle),
        .O(data_Di_OBUF[9]));
  IBUF \data_Do_IBUF[0]_inst 
       (.I(data_Do[0]),
        .O(data_Do_IBUF[0]));
  IBUF \data_Do_IBUF[10]_inst 
       (.I(data_Do[10]),
        .O(data_Do_IBUF[10]));
  IBUF \data_Do_IBUF[11]_inst 
       (.I(data_Do[11]),
        .O(data_Do_IBUF[11]));
  IBUF \data_Do_IBUF[12]_inst 
       (.I(data_Do[12]),
        .O(data_Do_IBUF[12]));
  IBUF \data_Do_IBUF[13]_inst 
       (.I(data_Do[13]),
        .O(data_Do_IBUF[13]));
  IBUF \data_Do_IBUF[14]_inst 
       (.I(data_Do[14]),
        .O(data_Do_IBUF[14]));
  IBUF \data_Do_IBUF[15]_inst 
       (.I(data_Do[15]),
        .O(data_Do_IBUF[15]));
  IBUF \data_Do_IBUF[16]_inst 
       (.I(data_Do[16]),
        .O(data_Do_IBUF[16]));
  IBUF \data_Do_IBUF[17]_inst 
       (.I(data_Do[17]),
        .O(data_Do_IBUF[17]));
  IBUF \data_Do_IBUF[18]_inst 
       (.I(data_Do[18]),
        .O(data_Do_IBUF[18]));
  IBUF \data_Do_IBUF[19]_inst 
       (.I(data_Do[19]),
        .O(data_Do_IBUF[19]));
  IBUF \data_Do_IBUF[1]_inst 
       (.I(data_Do[1]),
        .O(data_Do_IBUF[1]));
  IBUF \data_Do_IBUF[20]_inst 
       (.I(data_Do[20]),
        .O(data_Do_IBUF[20]));
  IBUF \data_Do_IBUF[21]_inst 
       (.I(data_Do[21]),
        .O(data_Do_IBUF[21]));
  IBUF \data_Do_IBUF[22]_inst 
       (.I(data_Do[22]),
        .O(data_Do_IBUF[22]));
  IBUF \data_Do_IBUF[23]_inst 
       (.I(data_Do[23]),
        .O(data_Do_IBUF[23]));
  IBUF \data_Do_IBUF[24]_inst 
       (.I(data_Do[24]),
        .O(data_Do_IBUF[24]));
  IBUF \data_Do_IBUF[25]_inst 
       (.I(data_Do[25]),
        .O(data_Do_IBUF[25]));
  IBUF \data_Do_IBUF[26]_inst 
       (.I(data_Do[26]),
        .O(data_Do_IBUF[26]));
  IBUF \data_Do_IBUF[27]_inst 
       (.I(data_Do[27]),
        .O(data_Do_IBUF[27]));
  IBUF \data_Do_IBUF[28]_inst 
       (.I(data_Do[28]),
        .O(data_Do_IBUF[28]));
  IBUF \data_Do_IBUF[29]_inst 
       (.I(data_Do[29]),
        .O(data_Do_IBUF[29]));
  IBUF \data_Do_IBUF[2]_inst 
       (.I(data_Do[2]),
        .O(data_Do_IBUF[2]));
  IBUF \data_Do_IBUF[30]_inst 
       (.I(data_Do[30]),
        .O(data_Do_IBUF[30]));
  IBUF \data_Do_IBUF[31]_inst 
       (.I(data_Do[31]),
        .O(data_Do_IBUF[31]));
  IBUF \data_Do_IBUF[3]_inst 
       (.I(data_Do[3]),
        .O(data_Do_IBUF[3]));
  IBUF \data_Do_IBUF[4]_inst 
       (.I(data_Do[4]),
        .O(data_Do_IBUF[4]));
  IBUF \data_Do_IBUF[5]_inst 
       (.I(data_Do[5]),
        .O(data_Do_IBUF[5]));
  IBUF \data_Do_IBUF[6]_inst 
       (.I(data_Do[6]),
        .O(data_Do_IBUF[6]));
  IBUF \data_Do_IBUF[7]_inst 
       (.I(data_Do[7]),
        .O(data_Do_IBUF[7]));
  IBUF \data_Do_IBUF[8]_inst 
       (.I(data_Do[8]),
        .O(data_Do_IBUF[8]));
  IBUF \data_Do_IBUF[9]_inst 
       (.I(data_Do[9]),
        .O(data_Do_IBUF[9]));
  OBUF data_EN_OBUF_inst
       (.I(1'b1),
        .O(data_EN));
  OBUF \data_WE_OBUF[0]_inst 
       (.I(data_WE_OBUF),
        .O(data_WE[0]));
  OBUF \data_WE_OBUF[1]_inst 
       (.I(data_WE_OBUF),
        .O(data_WE[1]));
  OBUF \data_WE_OBUF[2]_inst 
       (.I(data_WE_OBUF),
        .O(data_WE[2]));
  OBUF \data_WE_OBUF[3]_inst 
       (.I(data_WE_OBUF),
        .O(data_WE[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h5530)) 
    \data_WE_OBUF[3]_inst_i_1 
       (.I0(init_addr[7]),
        .I1(p_2_in),
        .I2(ss_tvalid_IBUF),
        .I3(ap_idle),
        .O(data_WE_OBUF));
  LUT3 #(
    .INIT(8'hEA)) 
    \data_input_length[0]_i_1 
       (.I0(ap_done),
        .I1(ss_tready_OBUF),
        .I2(ss_tvalid_IBUF),
        .O(\data_input_length[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[0]_i_3 
       (.I0(data_input_length_reg[0]),
        .I1(ap_done),
        .O(\data_input_length[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[0]_i_4 
       (.I0(data_input_length_reg[3]),
        .I1(ap_done),
        .O(\data_input_length[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[0]_i_5 
       (.I0(data_input_length_reg[2]),
        .I1(ap_done),
        .O(\data_input_length[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[0]_i_6 
       (.I0(data_input_length_reg[1]),
        .I1(ap_done),
        .O(\data_input_length[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_input_length[0]_i_7 
       (.I0(data_input_length_reg[0]),
        .I1(ap_done),
        .O(\data_input_length[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[12]_i_2 
       (.I0(data_input_length_reg[15]),
        .I1(ap_done),
        .O(\data_input_length[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[12]_i_3 
       (.I0(data_input_length_reg[14]),
        .I1(ap_done),
        .O(\data_input_length[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[12]_i_4 
       (.I0(data_input_length_reg[13]),
        .I1(ap_done),
        .O(\data_input_length[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[12]_i_5 
       (.I0(data_input_length_reg[12]),
        .I1(ap_done),
        .O(\data_input_length[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[16]_i_2 
       (.I0(data_input_length_reg[19]),
        .I1(ap_done),
        .O(\data_input_length[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[16]_i_3 
       (.I0(data_input_length_reg[18]),
        .I1(ap_done),
        .O(\data_input_length[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[16]_i_4 
       (.I0(data_input_length_reg[17]),
        .I1(ap_done),
        .O(\data_input_length[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[16]_i_5 
       (.I0(data_input_length_reg[16]),
        .I1(ap_done),
        .O(\data_input_length[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[20]_i_2 
       (.I0(data_input_length_reg[23]),
        .I1(ap_done),
        .O(\data_input_length[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[20]_i_3 
       (.I0(data_input_length_reg[22]),
        .I1(ap_done),
        .O(\data_input_length[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[20]_i_4 
       (.I0(data_input_length_reg[21]),
        .I1(ap_done),
        .O(\data_input_length[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[20]_i_5 
       (.I0(data_input_length_reg[20]),
        .I1(ap_done),
        .O(\data_input_length[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[24]_i_2 
       (.I0(data_input_length_reg[27]),
        .I1(ap_done),
        .O(\data_input_length[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[24]_i_3 
       (.I0(data_input_length_reg[26]),
        .I1(ap_done),
        .O(\data_input_length[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[24]_i_4 
       (.I0(data_input_length_reg[25]),
        .I1(ap_done),
        .O(\data_input_length[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[24]_i_5 
       (.I0(data_input_length_reg[24]),
        .I1(ap_done),
        .O(\data_input_length[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[28]_i_2 
       (.I0(data_input_length_reg[31]),
        .I1(ap_done),
        .O(\data_input_length[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[28]_i_3 
       (.I0(data_input_length_reg[30]),
        .I1(ap_done),
        .O(\data_input_length[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[28]_i_4 
       (.I0(data_input_length_reg[29]),
        .I1(ap_done),
        .O(\data_input_length[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[28]_i_5 
       (.I0(data_input_length_reg[28]),
        .I1(ap_done),
        .O(\data_input_length[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[4]_i_2 
       (.I0(data_input_length_reg[7]),
        .I1(ap_done),
        .O(\data_input_length[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[4]_i_3 
       (.I0(data_input_length_reg[6]),
        .I1(ap_done),
        .O(\data_input_length[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[4]_i_4 
       (.I0(data_input_length_reg[5]),
        .I1(ap_done),
        .O(\data_input_length[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[4]_i_5 
       (.I0(data_input_length_reg[4]),
        .I1(ap_done),
        .O(\data_input_length[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[8]_i_2 
       (.I0(data_input_length_reg[11]),
        .I1(ap_done),
        .O(\data_input_length[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[8]_i_3 
       (.I0(data_input_length_reg[10]),
        .I1(ap_done),
        .O(\data_input_length[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[8]_i_4 
       (.I0(data_input_length_reg[9]),
        .I1(ap_done),
        .O(\data_input_length[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_input_length[8]_i_5 
       (.I0(data_input_length_reg[8]),
        .I1(ap_done),
        .O(\data_input_length[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[0]_i_2_n_7 ),
        .Q(data_input_length_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_input_length_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\data_input_length_reg[0]_i_2_n_0 ,\data_input_length_reg[0]_i_2_n_1 ,\data_input_length_reg[0]_i_2_n_2 ,\data_input_length_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\data_input_length[0]_i_3_n_0 }),
        .O({\data_input_length_reg[0]_i_2_n_4 ,\data_input_length_reg[0]_i_2_n_5 ,\data_input_length_reg[0]_i_2_n_6 ,\data_input_length_reg[0]_i_2_n_7 }),
        .S({\data_input_length[0]_i_4_n_0 ,\data_input_length[0]_i_5_n_0 ,\data_input_length[0]_i_6_n_0 ,\data_input_length[0]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[8]_i_1_n_5 ),
        .Q(data_input_length_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[8]_i_1_n_4 ),
        .Q(data_input_length_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[12] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[12]_i_1_n_7 ),
        .Q(data_input_length_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_input_length_reg[12]_i_1 
       (.CI(\data_input_length_reg[8]_i_1_n_0 ),
        .CO({\data_input_length_reg[12]_i_1_n_0 ,\data_input_length_reg[12]_i_1_n_1 ,\data_input_length_reg[12]_i_1_n_2 ,\data_input_length_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_input_length_reg[12]_i_1_n_4 ,\data_input_length_reg[12]_i_1_n_5 ,\data_input_length_reg[12]_i_1_n_6 ,\data_input_length_reg[12]_i_1_n_7 }),
        .S({\data_input_length[12]_i_2_n_0 ,\data_input_length[12]_i_3_n_0 ,\data_input_length[12]_i_4_n_0 ,\data_input_length[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[13] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[12]_i_1_n_6 ),
        .Q(data_input_length_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[14] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[12]_i_1_n_5 ),
        .Q(data_input_length_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[15] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[12]_i_1_n_4 ),
        .Q(data_input_length_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[16] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[16]_i_1_n_7 ),
        .Q(data_input_length_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_input_length_reg[16]_i_1 
       (.CI(\data_input_length_reg[12]_i_1_n_0 ),
        .CO({\data_input_length_reg[16]_i_1_n_0 ,\data_input_length_reg[16]_i_1_n_1 ,\data_input_length_reg[16]_i_1_n_2 ,\data_input_length_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_input_length_reg[16]_i_1_n_4 ,\data_input_length_reg[16]_i_1_n_5 ,\data_input_length_reg[16]_i_1_n_6 ,\data_input_length_reg[16]_i_1_n_7 }),
        .S({\data_input_length[16]_i_2_n_0 ,\data_input_length[16]_i_3_n_0 ,\data_input_length[16]_i_4_n_0 ,\data_input_length[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[17] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[16]_i_1_n_6 ),
        .Q(data_input_length_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[18] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[16]_i_1_n_5 ),
        .Q(data_input_length_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[19] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[16]_i_1_n_4 ),
        .Q(data_input_length_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[0]_i_2_n_6 ),
        .Q(data_input_length_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[20] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[20]_i_1_n_7 ),
        .Q(data_input_length_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_input_length_reg[20]_i_1 
       (.CI(\data_input_length_reg[16]_i_1_n_0 ),
        .CO({\data_input_length_reg[20]_i_1_n_0 ,\data_input_length_reg[20]_i_1_n_1 ,\data_input_length_reg[20]_i_1_n_2 ,\data_input_length_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_input_length_reg[20]_i_1_n_4 ,\data_input_length_reg[20]_i_1_n_5 ,\data_input_length_reg[20]_i_1_n_6 ,\data_input_length_reg[20]_i_1_n_7 }),
        .S({\data_input_length[20]_i_2_n_0 ,\data_input_length[20]_i_3_n_0 ,\data_input_length[20]_i_4_n_0 ,\data_input_length[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[21] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[20]_i_1_n_6 ),
        .Q(data_input_length_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[22] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[20]_i_1_n_5 ),
        .Q(data_input_length_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[23] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[20]_i_1_n_4 ),
        .Q(data_input_length_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[24] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[24]_i_1_n_7 ),
        .Q(data_input_length_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_input_length_reg[24]_i_1 
       (.CI(\data_input_length_reg[20]_i_1_n_0 ),
        .CO({\data_input_length_reg[24]_i_1_n_0 ,\data_input_length_reg[24]_i_1_n_1 ,\data_input_length_reg[24]_i_1_n_2 ,\data_input_length_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_input_length_reg[24]_i_1_n_4 ,\data_input_length_reg[24]_i_1_n_5 ,\data_input_length_reg[24]_i_1_n_6 ,\data_input_length_reg[24]_i_1_n_7 }),
        .S({\data_input_length[24]_i_2_n_0 ,\data_input_length[24]_i_3_n_0 ,\data_input_length[24]_i_4_n_0 ,\data_input_length[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[25] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[24]_i_1_n_6 ),
        .Q(data_input_length_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[26] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[24]_i_1_n_5 ),
        .Q(data_input_length_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[27] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[24]_i_1_n_4 ),
        .Q(data_input_length_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[28] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[28]_i_1_n_7 ),
        .Q(data_input_length_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_input_length_reg[28]_i_1 
       (.CI(\data_input_length_reg[24]_i_1_n_0 ),
        .CO({\NLW_data_input_length_reg[28]_i_1_CO_UNCONNECTED [3],\data_input_length_reg[28]_i_1_n_1 ,\data_input_length_reg[28]_i_1_n_2 ,\data_input_length_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_input_length_reg[28]_i_1_n_4 ,\data_input_length_reg[28]_i_1_n_5 ,\data_input_length_reg[28]_i_1_n_6 ,\data_input_length_reg[28]_i_1_n_7 }),
        .S({\data_input_length[28]_i_2_n_0 ,\data_input_length[28]_i_3_n_0 ,\data_input_length[28]_i_4_n_0 ,\data_input_length[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[29] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[28]_i_1_n_6 ),
        .Q(data_input_length_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[0]_i_2_n_5 ),
        .Q(data_input_length_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[30] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[28]_i_1_n_5 ),
        .Q(data_input_length_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[31] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[28]_i_1_n_4 ),
        .Q(data_input_length_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[0]_i_2_n_4 ),
        .Q(data_input_length_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[4]_i_1_n_7 ),
        .Q(data_input_length_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_input_length_reg[4]_i_1 
       (.CI(\data_input_length_reg[0]_i_2_n_0 ),
        .CO({\data_input_length_reg[4]_i_1_n_0 ,\data_input_length_reg[4]_i_1_n_1 ,\data_input_length_reg[4]_i_1_n_2 ,\data_input_length_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_input_length_reg[4]_i_1_n_4 ,\data_input_length_reg[4]_i_1_n_5 ,\data_input_length_reg[4]_i_1_n_6 ,\data_input_length_reg[4]_i_1_n_7 }),
        .S({\data_input_length[4]_i_2_n_0 ,\data_input_length[4]_i_3_n_0 ,\data_input_length[4]_i_4_n_0 ,\data_input_length[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[4]_i_1_n_6 ),
        .Q(data_input_length_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[4]_i_1_n_5 ),
        .Q(data_input_length_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[4]_i_1_n_4 ),
        .Q(data_input_length_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[8]_i_1_n_7 ),
        .Q(data_input_length_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_input_length_reg[8]_i_1 
       (.CI(\data_input_length_reg[4]_i_1_n_0 ),
        .CO({\data_input_length_reg[8]_i_1_n_0 ,\data_input_length_reg[8]_i_1_n_1 ,\data_input_length_reg[8]_i_1_n_2 ,\data_input_length_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_input_length_reg[8]_i_1_n_4 ,\data_input_length_reg[8]_i_1_n_5 ,\data_input_length_reg[8]_i_1_n_6 ,\data_input_length_reg[8]_i_1_n_7 }),
        .S({\data_input_length[8]_i_2_n_0 ,\data_input_length[8]_i_3_n_0 ,\data_input_length[8]_i_4_n_0 ,\data_input_length[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_input_length_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_input_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_input_length_reg[8]_i_1_n_6 ),
        .Q(data_input_length_reg[9]));
  LUT3 #(
    .INIT(8'hEA)) 
    \data_output_length[0]_i_1 
       (.I0(ap_done),
        .I1(sm_tready_IBUF),
        .I2(sm_tvalid_OBUF),
        .O(\data_output_length[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[0]_i_3 
       (.I0(data_output_length_reg[0]),
        .I1(ap_done),
        .O(\data_output_length[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[0]_i_4 
       (.I0(data_output_length_reg[3]),
        .I1(ap_done),
        .O(\data_output_length[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[0]_i_5 
       (.I0(data_output_length_reg[2]),
        .I1(ap_done),
        .O(\data_output_length[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[0]_i_6 
       (.I0(data_output_length_reg[1]),
        .I1(ap_done),
        .O(\data_output_length[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \data_output_length[0]_i_7 
       (.I0(data_output_length_reg[0]),
        .I1(ap_done),
        .O(\data_output_length[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[12]_i_2 
       (.I0(data_output_length_reg[15]),
        .I1(ap_done),
        .O(\data_output_length[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[12]_i_3 
       (.I0(data_output_length_reg[14]),
        .I1(ap_done),
        .O(\data_output_length[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[12]_i_4 
       (.I0(data_output_length_reg[13]),
        .I1(ap_done),
        .O(\data_output_length[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[12]_i_5 
       (.I0(data_output_length_reg[12]),
        .I1(ap_done),
        .O(\data_output_length[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[16]_i_2 
       (.I0(data_output_length_reg[19]),
        .I1(ap_done),
        .O(\data_output_length[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[16]_i_3 
       (.I0(data_output_length_reg[18]),
        .I1(ap_done),
        .O(\data_output_length[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[16]_i_4 
       (.I0(data_output_length_reg[17]),
        .I1(ap_done),
        .O(\data_output_length[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[16]_i_5 
       (.I0(data_output_length_reg[16]),
        .I1(ap_done),
        .O(\data_output_length[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[20]_i_2 
       (.I0(data_output_length_reg[23]),
        .I1(ap_done),
        .O(\data_output_length[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[20]_i_3 
       (.I0(data_output_length_reg[22]),
        .I1(ap_done),
        .O(\data_output_length[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[20]_i_4 
       (.I0(data_output_length_reg[21]),
        .I1(ap_done),
        .O(\data_output_length[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[20]_i_5 
       (.I0(data_output_length_reg[20]),
        .I1(ap_done),
        .O(\data_output_length[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[24]_i_2 
       (.I0(data_output_length_reg[27]),
        .I1(ap_done),
        .O(\data_output_length[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[24]_i_3 
       (.I0(data_output_length_reg[26]),
        .I1(ap_done),
        .O(\data_output_length[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[24]_i_4 
       (.I0(data_output_length_reg[25]),
        .I1(ap_done),
        .O(\data_output_length[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[24]_i_5 
       (.I0(data_output_length_reg[24]),
        .I1(ap_done),
        .O(\data_output_length[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[28]_i_2 
       (.I0(data_output_length_reg[31]),
        .I1(ap_done),
        .O(\data_output_length[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[28]_i_3 
       (.I0(data_output_length_reg[30]),
        .I1(ap_done),
        .O(\data_output_length[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[28]_i_4 
       (.I0(data_output_length_reg[29]),
        .I1(ap_done),
        .O(\data_output_length[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[28]_i_5 
       (.I0(data_output_length_reg[28]),
        .I1(ap_done),
        .O(\data_output_length[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[4]_i_2 
       (.I0(data_output_length_reg[7]),
        .I1(ap_done),
        .O(\data_output_length[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[4]_i_3 
       (.I0(data_output_length_reg[6]),
        .I1(ap_done),
        .O(\data_output_length[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[4]_i_4 
       (.I0(data_output_length_reg[5]),
        .I1(ap_done),
        .O(\data_output_length[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[4]_i_5 
       (.I0(data_output_length_reg[4]),
        .I1(ap_done),
        .O(\data_output_length[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[8]_i_2 
       (.I0(data_output_length_reg[11]),
        .I1(ap_done),
        .O(\data_output_length[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[8]_i_3 
       (.I0(data_output_length_reg[10]),
        .I1(ap_done),
        .O(\data_output_length[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[8]_i_4 
       (.I0(data_output_length_reg[9]),
        .I1(ap_done),
        .O(\data_output_length[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_output_length[8]_i_5 
       (.I0(data_output_length_reg[8]),
        .I1(ap_done),
        .O(\data_output_length[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[0]_i_2_n_7 ),
        .Q(data_output_length_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_output_length_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\data_output_length_reg[0]_i_2_n_0 ,\data_output_length_reg[0]_i_2_n_1 ,\data_output_length_reg[0]_i_2_n_2 ,\data_output_length_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\data_output_length[0]_i_3_n_0 }),
        .O({\data_output_length_reg[0]_i_2_n_4 ,\data_output_length_reg[0]_i_2_n_5 ,\data_output_length_reg[0]_i_2_n_6 ,\data_output_length_reg[0]_i_2_n_7 }),
        .S({\data_output_length[0]_i_4_n_0 ,\data_output_length[0]_i_5_n_0 ,\data_output_length[0]_i_6_n_0 ,\data_output_length[0]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[8]_i_1_n_5 ),
        .Q(data_output_length_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[8]_i_1_n_4 ),
        .Q(data_output_length_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[12] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[12]_i_1_n_7 ),
        .Q(data_output_length_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_output_length_reg[12]_i_1 
       (.CI(\data_output_length_reg[8]_i_1_n_0 ),
        .CO({\data_output_length_reg[12]_i_1_n_0 ,\data_output_length_reg[12]_i_1_n_1 ,\data_output_length_reg[12]_i_1_n_2 ,\data_output_length_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_output_length_reg[12]_i_1_n_4 ,\data_output_length_reg[12]_i_1_n_5 ,\data_output_length_reg[12]_i_1_n_6 ,\data_output_length_reg[12]_i_1_n_7 }),
        .S({\data_output_length[12]_i_2_n_0 ,\data_output_length[12]_i_3_n_0 ,\data_output_length[12]_i_4_n_0 ,\data_output_length[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[13] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[12]_i_1_n_6 ),
        .Q(data_output_length_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[14] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[12]_i_1_n_5 ),
        .Q(data_output_length_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[15] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[12]_i_1_n_4 ),
        .Q(data_output_length_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[16] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[16]_i_1_n_7 ),
        .Q(data_output_length_reg[16]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_output_length_reg[16]_i_1 
       (.CI(\data_output_length_reg[12]_i_1_n_0 ),
        .CO({\data_output_length_reg[16]_i_1_n_0 ,\data_output_length_reg[16]_i_1_n_1 ,\data_output_length_reg[16]_i_1_n_2 ,\data_output_length_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_output_length_reg[16]_i_1_n_4 ,\data_output_length_reg[16]_i_1_n_5 ,\data_output_length_reg[16]_i_1_n_6 ,\data_output_length_reg[16]_i_1_n_7 }),
        .S({\data_output_length[16]_i_2_n_0 ,\data_output_length[16]_i_3_n_0 ,\data_output_length[16]_i_4_n_0 ,\data_output_length[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[17] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[16]_i_1_n_6 ),
        .Q(data_output_length_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[18] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[16]_i_1_n_5 ),
        .Q(data_output_length_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[19] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[16]_i_1_n_4 ),
        .Q(data_output_length_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[0]_i_2_n_6 ),
        .Q(data_output_length_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[20] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[20]_i_1_n_7 ),
        .Q(data_output_length_reg[20]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_output_length_reg[20]_i_1 
       (.CI(\data_output_length_reg[16]_i_1_n_0 ),
        .CO({\data_output_length_reg[20]_i_1_n_0 ,\data_output_length_reg[20]_i_1_n_1 ,\data_output_length_reg[20]_i_1_n_2 ,\data_output_length_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_output_length_reg[20]_i_1_n_4 ,\data_output_length_reg[20]_i_1_n_5 ,\data_output_length_reg[20]_i_1_n_6 ,\data_output_length_reg[20]_i_1_n_7 }),
        .S({\data_output_length[20]_i_2_n_0 ,\data_output_length[20]_i_3_n_0 ,\data_output_length[20]_i_4_n_0 ,\data_output_length[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[21] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[20]_i_1_n_6 ),
        .Q(data_output_length_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[22] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[20]_i_1_n_5 ),
        .Q(data_output_length_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[23] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[20]_i_1_n_4 ),
        .Q(data_output_length_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[24] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[24]_i_1_n_7 ),
        .Q(data_output_length_reg[24]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_output_length_reg[24]_i_1 
       (.CI(\data_output_length_reg[20]_i_1_n_0 ),
        .CO({\data_output_length_reg[24]_i_1_n_0 ,\data_output_length_reg[24]_i_1_n_1 ,\data_output_length_reg[24]_i_1_n_2 ,\data_output_length_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_output_length_reg[24]_i_1_n_4 ,\data_output_length_reg[24]_i_1_n_5 ,\data_output_length_reg[24]_i_1_n_6 ,\data_output_length_reg[24]_i_1_n_7 }),
        .S({\data_output_length[24]_i_2_n_0 ,\data_output_length[24]_i_3_n_0 ,\data_output_length[24]_i_4_n_0 ,\data_output_length[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[25] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[24]_i_1_n_6 ),
        .Q(data_output_length_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[26] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[24]_i_1_n_5 ),
        .Q(data_output_length_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[27] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[24]_i_1_n_4 ),
        .Q(data_output_length_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[28] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[28]_i_1_n_7 ),
        .Q(data_output_length_reg[28]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_output_length_reg[28]_i_1 
       (.CI(\data_output_length_reg[24]_i_1_n_0 ),
        .CO({\NLW_data_output_length_reg[28]_i_1_CO_UNCONNECTED [3],\data_output_length_reg[28]_i_1_n_1 ,\data_output_length_reg[28]_i_1_n_2 ,\data_output_length_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_output_length_reg[28]_i_1_n_4 ,\data_output_length_reg[28]_i_1_n_5 ,\data_output_length_reg[28]_i_1_n_6 ,\data_output_length_reg[28]_i_1_n_7 }),
        .S({\data_output_length[28]_i_2_n_0 ,\data_output_length[28]_i_3_n_0 ,\data_output_length[28]_i_4_n_0 ,\data_output_length[28]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[29] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[28]_i_1_n_6 ),
        .Q(data_output_length_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[0]_i_2_n_5 ),
        .Q(data_output_length_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[30] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[28]_i_1_n_5 ),
        .Q(data_output_length_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[31] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[28]_i_1_n_4 ),
        .Q(data_output_length_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[0]_i_2_n_4 ),
        .Q(data_output_length_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[4]_i_1_n_7 ),
        .Q(data_output_length_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_output_length_reg[4]_i_1 
       (.CI(\data_output_length_reg[0]_i_2_n_0 ),
        .CO({\data_output_length_reg[4]_i_1_n_0 ,\data_output_length_reg[4]_i_1_n_1 ,\data_output_length_reg[4]_i_1_n_2 ,\data_output_length_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_output_length_reg[4]_i_1_n_4 ,\data_output_length_reg[4]_i_1_n_5 ,\data_output_length_reg[4]_i_1_n_6 ,\data_output_length_reg[4]_i_1_n_7 }),
        .S({\data_output_length[4]_i_2_n_0 ,\data_output_length[4]_i_3_n_0 ,\data_output_length[4]_i_4_n_0 ,\data_output_length[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[4]_i_1_n_6 ),
        .Q(data_output_length_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[4]_i_1_n_5 ),
        .Q(data_output_length_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[4]_i_1_n_4 ),
        .Q(data_output_length_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[8]_i_1_n_7 ),
        .Q(data_output_length_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_output_length_reg[8]_i_1 
       (.CI(\data_output_length_reg[4]_i_1_n_0 ),
        .CO({\data_output_length_reg[8]_i_1_n_0 ,\data_output_length_reg[8]_i_1_n_1 ,\data_output_length_reg[8]_i_1_n_2 ,\data_output_length_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_output_length_reg[8]_i_1_n_4 ,\data_output_length_reg[8]_i_1_n_5 ,\data_output_length_reg[8]_i_1_n_6 ,\data_output_length_reg[8]_i_1_n_7 }),
        .S({\data_output_length[8]_i_2_n_0 ,\data_output_length[8]_i_3_n_0 ,\data_output_length[8]_i_4_n_0 ,\data_output_length[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_output_length_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\data_output_length[0]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\data_output_length_reg[8]_i_1_n_6 ),
        .Q(data_output_length_reg[9]));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[0]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[0]),
        .O(\h_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[10]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[10]),
        .O(\h_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[11]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[11]),
        .O(\h_reg[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[12]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[12]),
        .O(\h_reg[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[13]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[13]),
        .O(\h_reg[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[14]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[14]),
        .O(\h_reg[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[15]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[15]),
        .O(\h_reg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[16]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[16]),
        .O(\h_reg[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[17]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[17]),
        .O(\h_reg[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[18]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[18]),
        .O(\h_reg[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[19]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[19]),
        .O(\h_reg[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[1]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[1]),
        .O(\h_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[20]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[20]),
        .O(\h_reg[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[21]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[21]),
        .O(\h_reg[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[22]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[22]),
        .O(\h_reg[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[23]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[23]),
        .O(\h_reg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[24]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[24]),
        .O(\h_reg[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[25]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[25]),
        .O(\h_reg[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[26]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[26]),
        .O(\h_reg[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[27]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[27]),
        .O(\h_reg[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[28]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[28]),
        .O(\h_reg[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[29]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[29]),
        .O(\h_reg[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[2]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[2]),
        .O(\h_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[30]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[30]),
        .O(\h_reg[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[31]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[31]),
        .O(\h_reg[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[3]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[3]),
        .O(\h_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[4]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[4]),
        .O(\h_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[5]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[5]),
        .O(\h_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[6]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[6]),
        .O(\h_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[7]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[7]),
        .O(\h_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[8]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[8]),
        .O(\h_reg[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44040000)) 
    \h_reg[9]_i_1 
       (.I0(ap_idle),
        .I1(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I2(k[0]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(tap_Do_IBUF[9]),
        .O(\h_reg[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[0]_i_1_n_0 ),
        .Q(h_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[10]_i_1_n_0 ),
        .Q(h_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[11]_i_1_n_0 ),
        .Q(h_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[12] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[12]_i_1_n_0 ),
        .Q(h_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[13] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[13]_i_1_n_0 ),
        .Q(h_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[14] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[14]_i_1_n_0 ),
        .Q(h_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[15] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[15]_i_1_n_0 ),
        .Q(h_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[16] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[16]_i_1_n_0 ),
        .Q(h_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[17] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[17]_i_1_n_0 ),
        .Q(h_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[18] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[18]_i_1_n_0 ),
        .Q(h_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[19] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[19]_i_1_n_0 ),
        .Q(h_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[1]_i_1_n_0 ),
        .Q(h_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[20] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[20]_i_1_n_0 ),
        .Q(h_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[21] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[21]_i_1_n_0 ),
        .Q(h_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[22] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[22]_i_1_n_0 ),
        .Q(h_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[23] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[23]_i_1_n_0 ),
        .Q(h_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[24] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[24]_i_1_n_0 ),
        .Q(h_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[25] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[25]_i_1_n_0 ),
        .Q(h_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[26] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[26]_i_1_n_0 ),
        .Q(h_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[27] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[27]_i_1_n_0 ),
        .Q(h_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[28] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[28]_i_1_n_0 ),
        .Q(h_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[29] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[29]_i_1_n_0 ),
        .Q(h_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[2]_i_1_n_0 ),
        .Q(h_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[30] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[30]_i_1_n_0 ),
        .Q(h_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[31] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[31]_i_1_n_0 ),
        .Q(h_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[3]_i_1_n_0 ),
        .Q(h_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[4]_i_1_n_0 ),
        .Q(h_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[5]_i_1_n_0 ),
        .Q(h_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[6]_i_1_n_0 ),
        .Q(h_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[7]_i_1_n_0 ),
        .Q(h_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[8]_i_1_n_0 ),
        .Q(h_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \h_reg_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\h_reg[9]_i_1_n_0 ),
        .Q(h_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \init_addr[2]_i_1 
       (.I0(init_addr[2]),
        .I1(sm_tlast_OBUF),
        .O(\init_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \init_addr[3]_i_1 
       (.I0(init_addr[3]),
        .I1(init_addr[2]),
        .I2(sm_tlast_OBUF),
        .O(\init_addr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \init_addr[4]_i_1 
       (.I0(init_addr[4]),
        .I1(init_addr[2]),
        .I2(init_addr[3]),
        .I3(sm_tlast_OBUF),
        .O(\init_addr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \init_addr[5]_i_1 
       (.I0(init_addr[5]),
        .I1(init_addr[3]),
        .I2(init_addr[2]),
        .I3(init_addr[4]),
        .I4(sm_tlast_OBUF),
        .O(\init_addr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \init_addr[6]_i_1 
       (.I0(init_addr[6]),
        .I1(init_addr[5]),
        .I2(init_addr[4]),
        .I3(init_addr[3]),
        .I4(init_addr[2]),
        .I5(sm_tlast_OBUF),
        .O(\init_addr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \init_addr[7]_i_1 
       (.I0(init_addr[7]),
        .I1(ap_idle),
        .I2(sm_tlast_OBUF),
        .O(\init_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \init_addr[7]_i_2 
       (.I0(init_addr[7]),
        .I1(init_addr[4]),
        .I2(init_addr[5]),
        .I3(init_addr[6]),
        .I4(\init_addr[7]_i_3_n_0 ),
        .I5(sm_tlast_OBUF),
        .O(\init_addr[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \init_addr[7]_i_3 
       (.I0(init_addr[2]),
        .I1(init_addr[3]),
        .O(\init_addr[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_addr_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\init_addr[7]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\init_addr[2]_i_1_n_0 ),
        .Q(init_addr[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_addr_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\init_addr[7]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\init_addr[3]_i_1_n_0 ),
        .Q(init_addr[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_addr_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\init_addr[7]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\init_addr[4]_i_1_n_0 ),
        .Q(init_addr[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_addr_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\init_addr[7]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\init_addr[5]_i_1_n_0 ),
        .Q(init_addr[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_addr_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\init_addr[7]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\init_addr[6]_i_1_n_0 ),
        .Q(init_addr[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_addr_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\init_addr[7]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\init_addr[7]_i_2_n_0 ),
        .Q(init_addr[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \k[0]_i_1 
       (.I0(\k[5]_i_8_n_0 ),
        .I1(\k[5]_i_9_n_0 ),
        .I2(\k[5]_i_5_n_0 ),
        .I3(\k[5]_i_6_n_0 ),
        .I4(\k[5]_i_7_n_0 ),
        .I5(\k[0]_i_2_n_0 ),
        .O(k_next[0]));
  LUT5 #(
    .INIT(32'h11111000)) 
    \k[0]_i_2 
       (.I0(ap_idle),
        .I1(k[0]),
        .I2(ss_tvalid_IBUF),
        .I3(ss_tready_OBUF),
        .I4(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .O(\k[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \k[1]_i_1 
       (.I0(\k[5]_i_4_n_0 ),
        .I1(\k[5]_i_5_n_0 ),
        .I2(\k[5]_i_6_n_0 ),
        .I3(\k[5]_i_7_n_0 ),
        .I4(\tap_A_OBUF[3]_inst_i_2_n_0 ),
        .I5(\k[1]_i_2_n_0 ),
        .O(k_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \k[1]_i_2 
       (.I0(p_2_in),
        .I1(ap_idle),
        .O(\k[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \k[2]_i_1 
       (.I0(\k[5]_i_8_n_0 ),
        .I1(\k[5]_i_9_n_0 ),
        .I2(\k[5]_i_5_n_0 ),
        .I3(\k[5]_i_6_n_0 ),
        .I4(\k[5]_i_7_n_0 ),
        .I5(\k[2]_i_2_n_0 ),
        .O(k_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h04404040)) 
    \k[2]_i_2 
       (.I0(ap_idle),
        .I1(p_2_in),
        .I2(k[2]),
        .I3(k[0]),
        .I4(k[1]),
        .O(\k[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \k[3]_i_1 
       (.I0(\k[5]_i_8_n_0 ),
        .I1(\k[5]_i_9_n_0 ),
        .I2(\k[5]_i_5_n_0 ),
        .I3(\k[5]_i_6_n_0 ),
        .I4(\k[5]_i_7_n_0 ),
        .I5(\k[3]_i_2_n_0 ),
        .O(k_next[3]));
  LUT6 #(
    .INIT(64'h0440404040404040)) 
    \k[3]_i_2 
       (.I0(ap_idle),
        .I1(p_2_in),
        .I2(k[3]),
        .I3(k[1]),
        .I4(k[0]),
        .I5(k[2]),
        .O(\k[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \k[4]_i_1 
       (.I0(\k[5]_i_8_n_0 ),
        .I1(\k[5]_i_9_n_0 ),
        .I2(\k[5]_i_5_n_0 ),
        .I3(\k[5]_i_6_n_0 ),
        .I4(\k[5]_i_7_n_0 ),
        .I5(\k[4]_i_2_n_0 ),
        .O(k_next[4]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \k[4]_i_2 
       (.I0(\k[1]_i_2_n_0 ),
        .I1(k[4]),
        .I2(k[3]),
        .I3(k[2]),
        .I4(k[1]),
        .I5(k[0]),
        .O(\k[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \k[5]_i_1 
       (.I0(\k[5]_i_3_n_0 ),
        .I1(ap_idle),
        .I2(\k[5]_i_4_n_0 ),
        .I3(\k[5]_i_5_n_0 ),
        .I4(\k[5]_i_6_n_0 ),
        .I5(\k[5]_i_7_n_0 ),
        .O(\k[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \k[5]_i_10 
       (.I0(\k[1]_i_2_n_0 ),
        .I1(k[5]),
        .I2(k[2]),
        .I3(k[3]),
        .I4(k[4]),
        .I5(\k[5]_i_22_n_0 ),
        .O(\k[5]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \k[5]_i_11 
       (.I0(\k_reg[5]_i_20_n_5 ),
        .I1(\k_reg[5]_i_20_n_6 ),
        .I2(\k_reg[5]_i_20_n_7 ),
        .O(\k[5]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \k[5]_i_17 
       (.I0(\k_reg[5]_i_18_n_5 ),
        .I1(k[3]),
        .I2(\k_reg[5]_i_18_n_6 ),
        .I3(k[2]),
        .O(\k[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBDDB)) 
    \k[5]_i_19 
       (.I0(k[0]),
        .I1(\RAM_0x14_reg_n_0_[0] ),
        .I2(k[1]),
        .I3(\RAM_0x14_reg_n_0_[1] ),
        .I4(\k_reg[5]_i_15_n_5 ),
        .I5(\k_reg[5]_i_15_n_6 ),
        .O(\k[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \k[5]_i_2 
       (.I0(\k[5]_i_8_n_0 ),
        .I1(\k[5]_i_9_n_0 ),
        .I2(\k[5]_i_5_n_0 ),
        .I3(\k[5]_i_6_n_0 ),
        .I4(\k[5]_i_7_n_0 ),
        .I5(\k[5]_i_10_n_0 ),
        .O(k_next[5]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \k[5]_i_22 
       (.I0(k[0]),
        .I1(k[1]),
        .O(\k[5]_i_22_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \k[5]_i_23 
       (.I0(\RAM_0x14_reg_n_0_[1] ),
        .O(\k[5]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \k[5]_i_3 
       (.I0(sm_tvalid_OBUF),
        .I1(sm_tready_IBUF),
        .O(\k[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \k[5]_i_4 
       (.I0(\k[5]_i_11_n_0 ),
        .I1(\k_reg[5]_i_12_n_4 ),
        .I2(\k_reg[5]_i_12_n_5 ),
        .I3(\k_reg[5]_i_12_n_6 ),
        .I4(\k[5]_i_9_n_0 ),
        .O(\k[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \k[5]_i_5 
       (.I0(\k_reg[5]_i_13_n_4 ),
        .I1(\k_reg[5]_i_14_n_7 ),
        .I2(\k_reg[5]_i_14_n_6 ),
        .I3(\k_reg[5]_i_14_n_5 ),
        .I4(\k_reg[5]_i_14_n_4 ),
        .I5(\k_reg[5]_i_15_n_7 ),
        .O(\k[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \k[5]_i_6 
       (.I0(\k_reg[5]_i_16_n_6 ),
        .I1(\k_reg[5]_i_16_n_5 ),
        .I2(\k_reg[5]_i_16_n_4 ),
        .I3(\k_reg[5]_i_13_n_7 ),
        .I4(\k_reg[5]_i_13_n_6 ),
        .I5(\k_reg[5]_i_13_n_5 ),
        .O(\k[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \k[5]_i_7 
       (.I0(\k[5]_i_17_n_0 ),
        .I1(\k_reg[5]_i_12_n_7 ),
        .I2(k[5]),
        .I3(\k_reg[5]_i_18_n_4 ),
        .I4(k[4]),
        .I5(\k[5]_i_19_n_0 ),
        .O(\k[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \k[5]_i_8 
       (.I0(\k_reg[5]_i_12_n_6 ),
        .I1(\k_reg[5]_i_12_n_5 ),
        .I2(\k_reg[5]_i_12_n_4 ),
        .I3(\k_reg[5]_i_20_n_7 ),
        .I4(\k_reg[5]_i_20_n_6 ),
        .I5(\k_reg[5]_i_20_n_5 ),
        .O(\k[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \k[5]_i_9 
       (.I0(\k_reg[5]_i_20_n_4 ),
        .I1(\k_reg[5]_i_21_n_7 ),
        .I2(\k_reg[5]_i_21_n_6 ),
        .I3(\k_reg[5]_i_21_n_5 ),
        .I4(\k_reg[5]_i_21_n_4 ),
        .I5(\k_reg[5]_i_16_n_7 ),
        .O(\k[5]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \k_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\k[5]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(k_next[0]),
        .Q(k[0]));
  FDCE #(
    .INIT(1'b0)) 
    \k_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\k[5]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(k_next[1]),
        .Q(k[1]));
  FDCE #(
    .INIT(1'b0)) 
    \k_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\k[5]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(k_next[2]),
        .Q(k[2]));
  FDCE #(
    .INIT(1'b0)) 
    \k_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\k[5]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(k_next[3]),
        .Q(k[3]));
  FDCE #(
    .INIT(1'b0)) 
    \k_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\k[5]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(k_next[4]),
        .Q(k[4]));
  FDCE #(
    .INIT(1'b0)) 
    \k_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\k[5]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(k_next[5]),
        .Q(k[5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[5]_i_12 
       (.CI(\k_reg[5]_i_18_n_0 ),
        .CO({\k_reg[5]_i_12_n_0 ,\k_reg[5]_i_12_n_1 ,\k_reg[5]_i_12_n_2 ,\k_reg[5]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[5]_i_12_n_4 ,\k_reg[5]_i_12_n_5 ,\k_reg[5]_i_12_n_6 ,\k_reg[5]_i_12_n_7 }),
        .S({\RAM_0x14_reg_n_0_[8] ,\RAM_0x14_reg_n_0_[7] ,\RAM_0x14_reg_n_0_[6] ,\RAM_0x14_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[5]_i_13 
       (.CI(\k_reg[5]_i_16_n_0 ),
        .CO({\k_reg[5]_i_13_n_0 ,\k_reg[5]_i_13_n_1 ,\k_reg[5]_i_13_n_2 ,\k_reg[5]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[5]_i_13_n_4 ,\k_reg[5]_i_13_n_5 ,\k_reg[5]_i_13_n_6 ,\k_reg[5]_i_13_n_7 }),
        .S({\RAM_0x14_reg_n_0_[24] ,\RAM_0x14_reg_n_0_[23] ,\RAM_0x14_reg_n_0_[22] ,\RAM_0x14_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[5]_i_14 
       (.CI(\k_reg[5]_i_13_n_0 ),
        .CO({\k_reg[5]_i_14_n_0 ,\k_reg[5]_i_14_n_1 ,\k_reg[5]_i_14_n_2 ,\k_reg[5]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[5]_i_14_n_4 ,\k_reg[5]_i_14_n_5 ,\k_reg[5]_i_14_n_6 ,\k_reg[5]_i_14_n_7 }),
        .S({\RAM_0x14_reg_n_0_[28] ,\RAM_0x14_reg_n_0_[27] ,\RAM_0x14_reg_n_0_[26] ,\RAM_0x14_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[5]_i_15 
       (.CI(\k_reg[5]_i_14_n_0 ),
        .CO({\NLW_k_reg[5]_i_15_CO_UNCONNECTED [3:2],\k_reg[5]_i_15_n_2 ,\k_reg[5]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_k_reg[5]_i_15_O_UNCONNECTED [3],\k_reg[5]_i_15_n_5 ,\k_reg[5]_i_15_n_6 ,\k_reg[5]_i_15_n_7 }),
        .S({1'b0,\RAM_0x14_reg_n_0_[31] ,\RAM_0x14_reg_n_0_[30] ,\RAM_0x14_reg_n_0_[29] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[5]_i_16 
       (.CI(\k_reg[5]_i_21_n_0 ),
        .CO({\k_reg[5]_i_16_n_0 ,\k_reg[5]_i_16_n_1 ,\k_reg[5]_i_16_n_2 ,\k_reg[5]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[5]_i_16_n_4 ,\k_reg[5]_i_16_n_5 ,\k_reg[5]_i_16_n_6 ,\k_reg[5]_i_16_n_7 }),
        .S({\RAM_0x14_reg_n_0_[20] ,\RAM_0x14_reg_n_0_[19] ,\RAM_0x14_reg_n_0_[18] ,\RAM_0x14_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[5]_i_18 
       (.CI(1'b0),
        .CO({\k_reg[5]_i_18_n_0 ,\k_reg[5]_i_18_n_1 ,\k_reg[5]_i_18_n_2 ,\k_reg[5]_i_18_n_3 }),
        .CYINIT(\RAM_0x14_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,\RAM_0x14_reg_n_0_[1] }),
        .O({\k_reg[5]_i_18_n_4 ,\k_reg[5]_i_18_n_5 ,\k_reg[5]_i_18_n_6 ,x_cnt4[1]}),
        .S({\RAM_0x14_reg_n_0_[4] ,\RAM_0x14_reg_n_0_[3] ,\RAM_0x14_reg_n_0_[2] ,\k[5]_i_23_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[5]_i_20 
       (.CI(\k_reg[5]_i_12_n_0 ),
        .CO({\k_reg[5]_i_20_n_0 ,\k_reg[5]_i_20_n_1 ,\k_reg[5]_i_20_n_2 ,\k_reg[5]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[5]_i_20_n_4 ,\k_reg[5]_i_20_n_5 ,\k_reg[5]_i_20_n_6 ,\k_reg[5]_i_20_n_7 }),
        .S({\RAM_0x14_reg_n_0_[12] ,\RAM_0x14_reg_n_0_[11] ,\RAM_0x14_reg_n_0_[10] ,\RAM_0x14_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[5]_i_21 
       (.CI(\k_reg[5]_i_20_n_0 ),
        .CO({\k_reg[5]_i_21_n_0 ,\k_reg[5]_i_21_n_1 ,\k_reg[5]_i_21_n_2 ,\k_reg[5]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[5]_i_21_n_4 ,\k_reg[5]_i_21_n_5 ,\k_reg[5]_i_21_n_6 ,\k_reg[5]_i_21_n_7 }),
        .S({\RAM_0x14_reg_n_0_[16] ,\RAM_0x14_reg_n_0_[15] ,\RAM_0x14_reg_n_0_[14] ,\RAM_0x14_reg_n_0_[13] }));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_tmp_reg1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,h_reg[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT({m_tmp_reg1_n_24,m_tmp_reg1_n_25,m_tmp_reg1_n_26,m_tmp_reg1_n_27,m_tmp_reg1_n_28,m_tmp_reg1_n_29,m_tmp_reg1_n_30,m_tmp_reg1_n_31,m_tmp_reg1_n_32,m_tmp_reg1_n_33,m_tmp_reg1_n_34,m_tmp_reg1_n_35,m_tmp_reg1_n_36,m_tmp_reg1_n_37,m_tmp_reg1_n_38,m_tmp_reg1_n_39,m_tmp_reg1_n_40,m_tmp_reg1_n_41,m_tmp_reg1_n_42,m_tmp_reg1_n_43,m_tmp_reg1_n_44,m_tmp_reg1_n_45,m_tmp_reg1_n_46,m_tmp_reg1_n_47,m_tmp_reg1_n_48,m_tmp_reg1_n_49,m_tmp_reg1_n_50,m_tmp_reg1_n_51,m_tmp_reg1_n_52,m_tmp_reg1_n_53}),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,x_reg[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_tmp_reg1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_tmp_reg1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_tmp_reg1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_tmp_reg1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_tmp_reg1_OVERFLOW_UNCONNECTED),
        .P({m_tmp_reg1_n_58,m_tmp_reg1_n_59,m_tmp_reg1_n_60,m_tmp_reg1_n_61,m_tmp_reg1_n_62,m_tmp_reg1_n_63,m_tmp_reg1_n_64,m_tmp_reg1_n_65,m_tmp_reg1_n_66,m_tmp_reg1_n_67,m_tmp_reg1_n_68,m_tmp_reg1_n_69,m_tmp_reg1_n_70,m_tmp_reg1_n_71,m_tmp_reg1_n_72,m_tmp_reg1_n_73,m_tmp_reg1_n_74,m_tmp_reg1_n_75,m_tmp_reg1_n_76,m_tmp_reg1_n_77,m_tmp_reg1_n_78,m_tmp_reg1_n_79,m_tmp_reg1_n_80,m_tmp_reg1_n_81,m_tmp_reg1_n_82,m_tmp_reg1_n_83,m_tmp_reg1_n_84,m_tmp_reg1_n_85,m_tmp_reg1_n_86,m_tmp_reg1_n_87,m_tmp_reg1_n_88,m_tmp_reg1_n_89,m_tmp_reg1_n_90,m_tmp_reg1_n_91,m_tmp_reg1_n_92,m_tmp_reg1_n_93,m_tmp_reg1_n_94,m_tmp_reg1_n_95,m_tmp_reg1_n_96,m_tmp_reg1_n_97,m_tmp_reg1_n_98,m_tmp_reg1_n_99,m_tmp_reg1_n_100,m_tmp_reg1_n_101,m_tmp_reg1_n_102,m_tmp_reg1_n_103,m_tmp_reg1_n_104,m_tmp_reg1_n_105}),
        .PATTERNBDETECT(NLW_m_tmp_reg1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_tmp_reg1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({m_tmp_reg1_n_106,m_tmp_reg1_n_107,m_tmp_reg1_n_108,m_tmp_reg1_n_109,m_tmp_reg1_n_110,m_tmp_reg1_n_111,m_tmp_reg1_n_112,m_tmp_reg1_n_113,m_tmp_reg1_n_114,m_tmp_reg1_n_115,m_tmp_reg1_n_116,m_tmp_reg1_n_117,m_tmp_reg1_n_118,m_tmp_reg1_n_119,m_tmp_reg1_n_120,m_tmp_reg1_n_121,m_tmp_reg1_n_122,m_tmp_reg1_n_123,m_tmp_reg1_n_124,m_tmp_reg1_n_125,m_tmp_reg1_n_126,m_tmp_reg1_n_127,m_tmp_reg1_n_128,m_tmp_reg1_n_129,m_tmp_reg1_n_130,m_tmp_reg1_n_131,m_tmp_reg1_n_132,m_tmp_reg1_n_133,m_tmp_reg1_n_134,m_tmp_reg1_n_135,m_tmp_reg1_n_136,m_tmp_reg1_n_137,m_tmp_reg1_n_138,m_tmp_reg1_n_139,m_tmp_reg1_n_140,m_tmp_reg1_n_141,m_tmp_reg1_n_142,m_tmp_reg1_n_143,m_tmp_reg1_n_144,m_tmp_reg1_n_145,m_tmp_reg1_n_146,m_tmp_reg1_n_147,m_tmp_reg1_n_148,m_tmp_reg1_n_149,m_tmp_reg1_n_150,m_tmp_reg1_n_151,m_tmp_reg1_n_152,m_tmp_reg1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_tmp_reg1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x16 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("CASCADE"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_tmp_reg1__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({m_tmp_reg1_n_24,m_tmp_reg1_n_25,m_tmp_reg1_n_26,m_tmp_reg1_n_27,m_tmp_reg1_n_28,m_tmp_reg1_n_29,m_tmp_reg1_n_30,m_tmp_reg1_n_31,m_tmp_reg1_n_32,m_tmp_reg1_n_33,m_tmp_reg1_n_34,m_tmp_reg1_n_35,m_tmp_reg1_n_36,m_tmp_reg1_n_37,m_tmp_reg1_n_38,m_tmp_reg1_n_39,m_tmp_reg1_n_40,m_tmp_reg1_n_41,m_tmp_reg1_n_42,m_tmp_reg1_n_43,m_tmp_reg1_n_44,m_tmp_reg1_n_45,m_tmp_reg1_n_46,m_tmp_reg1_n_47,m_tmp_reg1_n_48,m_tmp_reg1_n_49,m_tmp_reg1_n_50,m_tmp_reg1_n_51,m_tmp_reg1_n_52,m_tmp_reg1_n_53}),
        .ACOUT(NLW_m_tmp_reg1__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,x_reg[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_tmp_reg1__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_tmp_reg1__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_tmp_reg1__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_tmp_reg1__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_tmp_reg1__0_OVERFLOW_UNCONNECTED),
        .P({m_tmp_reg1__0_n_58,m_tmp_reg1__0_n_59,m_tmp_reg1__0_n_60,m_tmp_reg1__0_n_61,m_tmp_reg1__0_n_62,m_tmp_reg1__0_n_63,m_tmp_reg1__0_n_64,m_tmp_reg1__0_n_65,m_tmp_reg1__0_n_66,m_tmp_reg1__0_n_67,m_tmp_reg1__0_n_68,m_tmp_reg1__0_n_69,m_tmp_reg1__0_n_70,m_tmp_reg1__0_n_71,m_tmp_reg1__0_n_72,m_tmp_reg1__0_n_73,m_tmp_reg1__0_n_74,m_tmp_reg1__0_n_75,m_tmp_reg1__0_n_76,m_tmp_reg1__0_n_77,m_tmp_reg1__0_n_78,m_tmp_reg1__0_n_79,m_tmp_reg1__0_n_80,m_tmp_reg1__0_n_81,m_tmp_reg1__0_n_82,m_tmp_reg1__0_n_83,m_tmp_reg1__0_n_84,m_tmp_reg1__0_n_85,m_tmp_reg1__0_n_86,m_tmp_reg1__0_n_87,m_tmp_reg1__0_n_88,m_tmp_reg1__0_n_89,m_tmp_reg1__0_n_90,m_tmp_reg1__0_n_91,m_tmp_reg1__0_n_92,m_tmp_reg1__0_n_93,m_tmp_reg1__0_n_94,m_tmp_reg1__0_n_95,m_tmp_reg1__0_n_96,m_tmp_reg1__0_n_97,m_tmp_reg1__0_n_98,m_tmp_reg1__0_n_99,m_tmp_reg1__0_n_100,m_tmp_reg1__0_n_101,m_tmp_reg1__0_n_102,m_tmp_reg1__0_n_103,m_tmp_reg1__0_n_104,m_tmp_reg1__0_n_105}),
        .PATTERNBDETECT(NLW_m_tmp_reg1__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_tmp_reg1__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({m_tmp_reg1_n_106,m_tmp_reg1_n_107,m_tmp_reg1_n_108,m_tmp_reg1_n_109,m_tmp_reg1_n_110,m_tmp_reg1_n_111,m_tmp_reg1_n_112,m_tmp_reg1_n_113,m_tmp_reg1_n_114,m_tmp_reg1_n_115,m_tmp_reg1_n_116,m_tmp_reg1_n_117,m_tmp_reg1_n_118,m_tmp_reg1_n_119,m_tmp_reg1_n_120,m_tmp_reg1_n_121,m_tmp_reg1_n_122,m_tmp_reg1_n_123,m_tmp_reg1_n_124,m_tmp_reg1_n_125,m_tmp_reg1_n_126,m_tmp_reg1_n_127,m_tmp_reg1_n_128,m_tmp_reg1_n_129,m_tmp_reg1_n_130,m_tmp_reg1_n_131,m_tmp_reg1_n_132,m_tmp_reg1_n_133,m_tmp_reg1_n_134,m_tmp_reg1_n_135,m_tmp_reg1_n_136,m_tmp_reg1_n_137,m_tmp_reg1_n_138,m_tmp_reg1_n_139,m_tmp_reg1_n_140,m_tmp_reg1_n_141,m_tmp_reg1_n_142,m_tmp_reg1_n_143,m_tmp_reg1_n_144,m_tmp_reg1_n_145,m_tmp_reg1_n_146,m_tmp_reg1_n_147,m_tmp_reg1_n_148,m_tmp_reg1_n_149,m_tmp_reg1_n_150,m_tmp_reg1_n_151,m_tmp_reg1_n_152,m_tmp_reg1_n_153}),
        .PCOUT(NLW_m_tmp_reg1__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_tmp_reg1__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 16x18 4}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    m_tmp_reg1__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,x_reg[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_m_tmp_reg1__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,h_reg[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_m_tmp_reg1__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_m_tmp_reg1__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_m_tmp_reg1__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_m_tmp_reg1__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_m_tmp_reg1__1_OVERFLOW_UNCONNECTED),
        .P({m_tmp_reg1__1_n_58,m_tmp_reg1__1_n_59,m_tmp_reg1__1_n_60,m_tmp_reg1__1_n_61,m_tmp_reg1__1_n_62,m_tmp_reg1__1_n_63,m_tmp_reg1__1_n_64,m_tmp_reg1__1_n_65,m_tmp_reg1__1_n_66,m_tmp_reg1__1_n_67,m_tmp_reg1__1_n_68,m_tmp_reg1__1_n_69,m_tmp_reg1__1_n_70,m_tmp_reg1__1_n_71,m_tmp_reg1__1_n_72,m_tmp_reg1__1_n_73,m_tmp_reg1__1_n_74,m_tmp_reg1__1_n_75,m_tmp_reg1__1_n_76,m_tmp_reg1__1_n_77,m_tmp_reg1__1_n_78,m_tmp_reg1__1_n_79,m_tmp_reg1__1_n_80,m_tmp_reg1__1_n_81,m_tmp_reg1__1_n_82,m_tmp_reg1__1_n_83,m_tmp_reg1__1_n_84,m_tmp_reg1__1_n_85,m_tmp_reg1__1_n_86,m_tmp_reg1__1_n_87,m_tmp_reg1__1_n_88,m_tmp_reg1__1_n_89,m_tmp_reg1__1_n_90,m_tmp_reg1__1_n_91,m_tmp_reg1__1_n_92,m_tmp_reg1__1_n_93,m_tmp_reg1__1_n_94,m_tmp_reg1__1_n_95,m_tmp_reg1__1_n_96,m_tmp_reg1__1_n_97,m_tmp_reg1__1_n_98,m_tmp_reg1__1_n_99,m_tmp_reg1__1_n_100,m_tmp_reg1__1_n_101,m_tmp_reg1__1_n_102,m_tmp_reg1__1_n_103,m_tmp_reg1__1_n_104,m_tmp_reg1__1_n_105}),
        .PATTERNBDETECT(NLW_m_tmp_reg1__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_m_tmp_reg1__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({m_tmp_reg1__1_n_106,m_tmp_reg1__1_n_107,m_tmp_reg1__1_n_108,m_tmp_reg1__1_n_109,m_tmp_reg1__1_n_110,m_tmp_reg1__1_n_111,m_tmp_reg1__1_n_112,m_tmp_reg1__1_n_113,m_tmp_reg1__1_n_114,m_tmp_reg1__1_n_115,m_tmp_reg1__1_n_116,m_tmp_reg1__1_n_117,m_tmp_reg1__1_n_118,m_tmp_reg1__1_n_119,m_tmp_reg1__1_n_120,m_tmp_reg1__1_n_121,m_tmp_reg1__1_n_122,m_tmp_reg1__1_n_123,m_tmp_reg1__1_n_124,m_tmp_reg1__1_n_125,m_tmp_reg1__1_n_126,m_tmp_reg1__1_n_127,m_tmp_reg1__1_n_128,m_tmp_reg1__1_n_129,m_tmp_reg1__1_n_130,m_tmp_reg1__1_n_131,m_tmp_reg1__1_n_132,m_tmp_reg1__1_n_133,m_tmp_reg1__1_n_134,m_tmp_reg1__1_n_135,m_tmp_reg1__1_n_136,m_tmp_reg1__1_n_137,m_tmp_reg1__1_n_138,m_tmp_reg1__1_n_139,m_tmp_reg1__1_n_140,m_tmp_reg1__1_n_141,m_tmp_reg1__1_n_142,m_tmp_reg1__1_n_143,m_tmp_reg1__1_n_144,m_tmp_reg1__1_n_145,m_tmp_reg1__1_n_146,m_tmp_reg1__1_n_147,m_tmp_reg1__1_n_148,m_tmp_reg1__1_n_149,m_tmp_reg1__1_n_150,m_tmp_reg1__1_n_151,m_tmp_reg1__1_n_152,m_tmp_reg1__1_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_m_tmp_reg1__1_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[0]_i_1 
       (.I0(m_tmp_reg1_n_105),
        .I1(ap_idle),
        .O(\m_tmp_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[10]_i_1 
       (.I0(m_tmp_reg1_n_95),
        .I1(ap_idle),
        .O(\m_tmp_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[11]_i_1 
       (.I0(m_tmp_reg1_n_94),
        .I1(ap_idle),
        .O(\m_tmp_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[12]_i_1 
       (.I0(m_tmp_reg1_n_93),
        .I1(ap_idle),
        .O(\m_tmp_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[13]_i_1 
       (.I0(m_tmp_reg1_n_92),
        .I1(ap_idle),
        .O(\m_tmp_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[14]_i_1 
       (.I0(m_tmp_reg1_n_91),
        .I1(ap_idle),
        .O(\m_tmp_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[15]_i_1 
       (.I0(m_tmp_reg1_n_90),
        .I1(ap_idle),
        .O(\m_tmp_reg[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[19]_i_2 
       (.I0(m_tmp_reg1__1_n_103),
        .I1(ap_idle),
        .O(\m_tmp_reg[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[19]_i_3 
       (.I0(m_tmp_reg1__1_n_104),
        .I1(ap_idle),
        .O(\m_tmp_reg[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[19]_i_4 
       (.I0(m_tmp_reg1__1_n_105),
        .I1(ap_idle),
        .O(\m_tmp_reg[19]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[19]_i_5 
       (.I0(m_tmp_reg1__1_n_103),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_103),
        .O(\m_tmp_reg[19]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[19]_i_6 
       (.I0(m_tmp_reg1__1_n_104),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_104),
        .O(\m_tmp_reg[19]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[19]_i_7 
       (.I0(m_tmp_reg1__1_n_105),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_105),
        .O(\m_tmp_reg[19]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[19]_i_8 
       (.I0(m_tmp_reg1_n_89),
        .I1(ap_idle),
        .O(\m_tmp_reg[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[1]_i_1 
       (.I0(m_tmp_reg1_n_104),
        .I1(ap_idle),
        .O(\m_tmp_reg[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[23]_i_2 
       (.I0(m_tmp_reg1__1_n_99),
        .I1(ap_idle),
        .O(\m_tmp_reg[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[23]_i_3 
       (.I0(m_tmp_reg1__1_n_100),
        .I1(ap_idle),
        .O(\m_tmp_reg[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[23]_i_4 
       (.I0(m_tmp_reg1__1_n_101),
        .I1(ap_idle),
        .O(\m_tmp_reg[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[23]_i_5 
       (.I0(m_tmp_reg1__1_n_102),
        .I1(ap_idle),
        .O(\m_tmp_reg[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[23]_i_6 
       (.I0(m_tmp_reg1__1_n_99),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_99),
        .O(\m_tmp_reg[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[23]_i_7 
       (.I0(m_tmp_reg1__1_n_100),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_100),
        .O(\m_tmp_reg[23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[23]_i_8 
       (.I0(m_tmp_reg1__1_n_101),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_101),
        .O(\m_tmp_reg[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[23]_i_9 
       (.I0(m_tmp_reg1__1_n_102),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_102),
        .O(\m_tmp_reg[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[27]_i_2 
       (.I0(m_tmp_reg1__1_n_95),
        .I1(ap_idle),
        .O(\m_tmp_reg[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[27]_i_3 
       (.I0(m_tmp_reg1__1_n_96),
        .I1(ap_idle),
        .O(\m_tmp_reg[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[27]_i_4 
       (.I0(m_tmp_reg1__1_n_97),
        .I1(ap_idle),
        .O(\m_tmp_reg[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[27]_i_5 
       (.I0(m_tmp_reg1__1_n_98),
        .I1(ap_idle),
        .O(\m_tmp_reg[27]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[27]_i_6 
       (.I0(m_tmp_reg1__1_n_95),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_95),
        .O(\m_tmp_reg[27]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[27]_i_7 
       (.I0(m_tmp_reg1__1_n_96),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_96),
        .O(\m_tmp_reg[27]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[27]_i_8 
       (.I0(m_tmp_reg1__1_n_97),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_97),
        .O(\m_tmp_reg[27]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[27]_i_9 
       (.I0(m_tmp_reg1__1_n_98),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_98),
        .O(\m_tmp_reg[27]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[2]_i_1 
       (.I0(m_tmp_reg1_n_103),
        .I1(ap_idle),
        .O(\m_tmp_reg[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[31]_i_2 
       (.I0(m_tmp_reg1__1_n_92),
        .I1(ap_idle),
        .O(\m_tmp_reg[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[31]_i_3 
       (.I0(m_tmp_reg1__1_n_93),
        .I1(ap_idle),
        .O(\m_tmp_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[31]_i_4 
       (.I0(m_tmp_reg1__1_n_94),
        .I1(ap_idle),
        .O(\m_tmp_reg[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[31]_i_5 
       (.I0(m_tmp_reg1__1_n_91),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_91),
        .O(\m_tmp_reg[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[31]_i_6 
       (.I0(m_tmp_reg1__1_n_92),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_92),
        .O(\m_tmp_reg[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[31]_i_7 
       (.I0(m_tmp_reg1__1_n_93),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_93),
        .O(\m_tmp_reg[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h12)) 
    \m_tmp_reg[31]_i_8 
       (.I0(m_tmp_reg1__1_n_94),
        .I1(ap_idle),
        .I2(m_tmp_reg1__0_n_94),
        .O(\m_tmp_reg[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[3]_i_1 
       (.I0(m_tmp_reg1_n_102),
        .I1(ap_idle),
        .O(\m_tmp_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[4]_i_1 
       (.I0(m_tmp_reg1_n_101),
        .I1(ap_idle),
        .O(\m_tmp_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[5]_i_1 
       (.I0(m_tmp_reg1_n_100),
        .I1(ap_idle),
        .O(\m_tmp_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[6]_i_1 
       (.I0(m_tmp_reg1_n_99),
        .I1(ap_idle),
        .O(\m_tmp_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[7]_i_1 
       (.I0(m_tmp_reg1_n_98),
        .I1(ap_idle),
        .O(\m_tmp_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[8]_i_1 
       (.I0(m_tmp_reg1_n_97),
        .I1(ap_idle),
        .O(\m_tmp_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_tmp_reg[9]_i_1 
       (.I0(m_tmp_reg1_n_96),
        .I1(ap_idle),
        .O(\m_tmp_reg[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[0]_i_1_n_0 ),
        .Q(m_tmp_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[10]_i_1_n_0 ),
        .Q(m_tmp_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[11]_i_1_n_0 ),
        .Q(m_tmp_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[12] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[12]_i_1_n_0 ),
        .Q(m_tmp_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[13] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[13]_i_1_n_0 ),
        .Q(m_tmp_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[14] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[14]_i_1_n_0 ),
        .Q(m_tmp_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[15] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[15]_i_1_n_0 ),
        .Q(m_tmp_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[16] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[19]_i_1_n_7 ),
        .Q(m_tmp_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[17] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[19]_i_1_n_6 ),
        .Q(m_tmp_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[18] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[19]_i_1_n_5 ),
        .Q(m_tmp_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[19] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[19]_i_1_n_4 ),
        .Q(m_tmp_reg[19]));
  CARRY4 \m_tmp_reg_reg[19]_i_1 
       (.CI(1'b0),
        .CO({\m_tmp_reg_reg[19]_i_1_n_0 ,\m_tmp_reg_reg[19]_i_1_n_1 ,\m_tmp_reg_reg[19]_i_1_n_2 ,\m_tmp_reg_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\m_tmp_reg[19]_i_2_n_0 ,\m_tmp_reg[19]_i_3_n_0 ,\m_tmp_reg[19]_i_4_n_0 ,1'b0}),
        .O({\m_tmp_reg_reg[19]_i_1_n_4 ,\m_tmp_reg_reg[19]_i_1_n_5 ,\m_tmp_reg_reg[19]_i_1_n_6 ,\m_tmp_reg_reg[19]_i_1_n_7 }),
        .S({\m_tmp_reg[19]_i_5_n_0 ,\m_tmp_reg[19]_i_6_n_0 ,\m_tmp_reg[19]_i_7_n_0 ,\m_tmp_reg[19]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[1]_i_1_n_0 ),
        .Q(m_tmp_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[20] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[23]_i_1_n_7 ),
        .Q(m_tmp_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[21] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[23]_i_1_n_6 ),
        .Q(m_tmp_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[22] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[23]_i_1_n_5 ),
        .Q(m_tmp_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[23] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[23]_i_1_n_4 ),
        .Q(m_tmp_reg[23]));
  CARRY4 \m_tmp_reg_reg[23]_i_1 
       (.CI(\m_tmp_reg_reg[19]_i_1_n_0 ),
        .CO({\m_tmp_reg_reg[23]_i_1_n_0 ,\m_tmp_reg_reg[23]_i_1_n_1 ,\m_tmp_reg_reg[23]_i_1_n_2 ,\m_tmp_reg_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\m_tmp_reg[23]_i_2_n_0 ,\m_tmp_reg[23]_i_3_n_0 ,\m_tmp_reg[23]_i_4_n_0 ,\m_tmp_reg[23]_i_5_n_0 }),
        .O({\m_tmp_reg_reg[23]_i_1_n_4 ,\m_tmp_reg_reg[23]_i_1_n_5 ,\m_tmp_reg_reg[23]_i_1_n_6 ,\m_tmp_reg_reg[23]_i_1_n_7 }),
        .S({\m_tmp_reg[23]_i_6_n_0 ,\m_tmp_reg[23]_i_7_n_0 ,\m_tmp_reg[23]_i_8_n_0 ,\m_tmp_reg[23]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[24] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[27]_i_1_n_7 ),
        .Q(m_tmp_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[25] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[27]_i_1_n_6 ),
        .Q(m_tmp_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[26] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[27]_i_1_n_5 ),
        .Q(m_tmp_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[27] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[27]_i_1_n_4 ),
        .Q(m_tmp_reg[27]));
  CARRY4 \m_tmp_reg_reg[27]_i_1 
       (.CI(\m_tmp_reg_reg[23]_i_1_n_0 ),
        .CO({\m_tmp_reg_reg[27]_i_1_n_0 ,\m_tmp_reg_reg[27]_i_1_n_1 ,\m_tmp_reg_reg[27]_i_1_n_2 ,\m_tmp_reg_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\m_tmp_reg[27]_i_2_n_0 ,\m_tmp_reg[27]_i_3_n_0 ,\m_tmp_reg[27]_i_4_n_0 ,\m_tmp_reg[27]_i_5_n_0 }),
        .O({\m_tmp_reg_reg[27]_i_1_n_4 ,\m_tmp_reg_reg[27]_i_1_n_5 ,\m_tmp_reg_reg[27]_i_1_n_6 ,\m_tmp_reg_reg[27]_i_1_n_7 }),
        .S({\m_tmp_reg[27]_i_6_n_0 ,\m_tmp_reg[27]_i_7_n_0 ,\m_tmp_reg[27]_i_8_n_0 ,\m_tmp_reg[27]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[28] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[31]_i_1_n_7 ),
        .Q(m_tmp_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[29] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[31]_i_1_n_6 ),
        .Q(m_tmp_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[2]_i_1_n_0 ),
        .Q(m_tmp_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[30] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[31]_i_1_n_5 ),
        .Q(m_tmp_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[31] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg_reg[31]_i_1_n_4 ),
        .Q(m_tmp_reg[31]));
  CARRY4 \m_tmp_reg_reg[31]_i_1 
       (.CI(\m_tmp_reg_reg[27]_i_1_n_0 ),
        .CO({\NLW_m_tmp_reg_reg[31]_i_1_CO_UNCONNECTED [3],\m_tmp_reg_reg[31]_i_1_n_1 ,\m_tmp_reg_reg[31]_i_1_n_2 ,\m_tmp_reg_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\m_tmp_reg[31]_i_2_n_0 ,\m_tmp_reg[31]_i_3_n_0 ,\m_tmp_reg[31]_i_4_n_0 }),
        .O({\m_tmp_reg_reg[31]_i_1_n_4 ,\m_tmp_reg_reg[31]_i_1_n_5 ,\m_tmp_reg_reg[31]_i_1_n_6 ,\m_tmp_reg_reg[31]_i_1_n_7 }),
        .S({\m_tmp_reg[31]_i_5_n_0 ,\m_tmp_reg[31]_i_6_n_0 ,\m_tmp_reg[31]_i_7_n_0 ,\m_tmp_reg[31]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[3]_i_1_n_0 ),
        .Q(m_tmp_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[4]_i_1_n_0 ),
        .Q(m_tmp_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[5]_i_1_n_0 ),
        .Q(m_tmp_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[6]_i_1_n_0 ),
        .Q(m_tmp_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[7]_i_1_n_0 ),
        .Q(m_tmp_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[8]_i_1_n_0 ),
        .Q(m_tmp_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \m_tmp_reg_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\m_tmp_reg[9]_i_1_n_0 ),
        .Q(m_tmp_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hBE)) 
    \poll_cnt[0]_i_1 
       (.I0(\ap_control_reg_n_0_[0] ),
        .I1(refresh_done_f),
        .I2(poll_cnt[0]),
        .O(\poll_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2310)) 
    \poll_cnt[1]_i_1 
       (.I0(poll_cnt[0]),
        .I1(\ap_control_reg_n_0_[0] ),
        .I2(refresh_done_f),
        .I3(poll_cnt[1]),
        .O(\poll_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFFF1F0)) 
    \poll_cnt[2]_i_1 
       (.I0(poll_cnt[0]),
        .I1(poll_cnt[1]),
        .I2(\ap_control_reg_n_0_[0] ),
        .I3(refresh_done_f),
        .I4(poll_cnt[2]),
        .O(\poll_cnt[2]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \poll_cnt_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\poll_cnt[0]_i_1_n_0 ),
        .PRE(wready_reg_i_2_n_0),
        .Q(poll_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \poll_cnt_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\poll_cnt[1]_i_1_n_0 ),
        .Q(poll_cnt[1]));
  FDPE #(
    .INIT(1'b1)) 
    \poll_cnt_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\poll_cnt[2]_i_1_n_0 ),
        .PRE(wready_reg_i_2_n_0),
        .Q(poll_cnt[2]));
  OBUF \rdata_OBUF[0]_inst 
       (.I(rdata_OBUF[0]),
        .O(rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rdata_OBUF[0]_inst_i_1 
       (.I0(\rdata_OBUF[0]_inst_i_2_n_0 ),
        .I1(tap_Do_IBUF[0]),
        .I2(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[0]));
  LUT6 #(
    .INIT(64'h0000BB3000008830)) 
    \rdata_OBUF[0]_inst_i_2 
       (.I0(\RAM_0x14_reg_n_0_[0] ),
        .I1(araddr_buffer[2]),
        .I2(\ap_control_reg_n_0_[0] ),
        .I3(araddr_buffer[4]),
        .I4(\rdata_OBUF[31]_inst_i_5_n_0 ),
        .I5(RAM_0x10[0]),
        .O(\rdata_OBUF[0]_inst_i_2_n_0 ));
  OBUF \rdata_OBUF[10]_inst 
       (.I(rdata_OBUF[10]),
        .O(rdata[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[10]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[10]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[10] ),
        .I4(tap_Do_IBUF[10]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[10]));
  OBUF \rdata_OBUF[11]_inst 
       (.I(rdata_OBUF[11]),
        .O(rdata[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[11]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[11]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[11] ),
        .I4(tap_Do_IBUF[11]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[11]));
  OBUF \rdata_OBUF[12]_inst 
       (.I(rdata_OBUF[12]),
        .O(rdata[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[12]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[12]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[12] ),
        .I4(tap_Do_IBUF[12]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[12]));
  OBUF \rdata_OBUF[13]_inst 
       (.I(rdata_OBUF[13]),
        .O(rdata[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[13]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[13]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[13] ),
        .I4(tap_Do_IBUF[13]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[13]));
  OBUF \rdata_OBUF[14]_inst 
       (.I(rdata_OBUF[14]),
        .O(rdata[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[14]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[14]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[14] ),
        .I4(tap_Do_IBUF[14]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[14]));
  OBUF \rdata_OBUF[15]_inst 
       (.I(rdata_OBUF[15]),
        .O(rdata[15]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[15]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[15]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[15] ),
        .I4(tap_Do_IBUF[15]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[15]));
  OBUF \rdata_OBUF[16]_inst 
       (.I(rdata_OBUF[16]),
        .O(rdata[16]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[16]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[16]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[16] ),
        .I4(tap_Do_IBUF[16]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[16]));
  OBUF \rdata_OBUF[17]_inst 
       (.I(rdata_OBUF[17]),
        .O(rdata[17]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[17]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[17]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[17] ),
        .I4(tap_Do_IBUF[17]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[17]));
  OBUF \rdata_OBUF[18]_inst 
       (.I(rdata_OBUF[18]),
        .O(rdata[18]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[18]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[18]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[18] ),
        .I4(tap_Do_IBUF[18]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[18]));
  OBUF \rdata_OBUF[19]_inst 
       (.I(rdata_OBUF[19]),
        .O(rdata[19]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[19]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[19]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[19] ),
        .I4(tap_Do_IBUF[19]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[19]));
  OBUF \rdata_OBUF[1]_inst 
       (.I(rdata_OBUF[1]),
        .O(rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \rdata_OBUF[1]_inst_i_1 
       (.I0(\rdata_OBUF[1]_inst_i_2_n_0 ),
        .I1(tap_Do_IBUF[1]),
        .I2(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[1]));
  LUT6 #(
    .INIT(64'h0000BB3000008830)) 
    \rdata_OBUF[1]_inst_i_2 
       (.I0(\RAM_0x14_reg_n_0_[1] ),
        .I1(araddr_buffer[2]),
        .I2(ap_done),
        .I3(araddr_buffer[4]),
        .I4(\rdata_OBUF[31]_inst_i_5_n_0 ),
        .I5(RAM_0x10[1]),
        .O(\rdata_OBUF[1]_inst_i_2_n_0 ));
  OBUF \rdata_OBUF[20]_inst 
       (.I(rdata_OBUF[20]),
        .O(rdata[20]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[20]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[20]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[20] ),
        .I4(tap_Do_IBUF[20]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[20]));
  OBUF \rdata_OBUF[21]_inst 
       (.I(rdata_OBUF[21]),
        .O(rdata[21]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[21]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[21]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[21] ),
        .I4(tap_Do_IBUF[21]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[21]));
  OBUF \rdata_OBUF[22]_inst 
       (.I(rdata_OBUF[22]),
        .O(rdata[22]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[22]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[22]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[22] ),
        .I4(tap_Do_IBUF[22]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[22]));
  OBUF \rdata_OBUF[23]_inst 
       (.I(rdata_OBUF[23]),
        .O(rdata[23]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[23]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[23]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[23] ),
        .I4(tap_Do_IBUF[23]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[23]));
  OBUF \rdata_OBUF[24]_inst 
       (.I(rdata_OBUF[24]),
        .O(rdata[24]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[24]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[24]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[24] ),
        .I4(tap_Do_IBUF[24]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[24]));
  OBUF \rdata_OBUF[25]_inst 
       (.I(rdata_OBUF[25]),
        .O(rdata[25]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[25]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[25]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[25] ),
        .I4(tap_Do_IBUF[25]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[25]));
  OBUF \rdata_OBUF[26]_inst 
       (.I(rdata_OBUF[26]),
        .O(rdata[26]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[26]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[26]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[26] ),
        .I4(tap_Do_IBUF[26]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[26]));
  OBUF \rdata_OBUF[27]_inst 
       (.I(rdata_OBUF[27]),
        .O(rdata[27]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[27]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[27]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[27] ),
        .I4(tap_Do_IBUF[27]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[27]));
  OBUF \rdata_OBUF[28]_inst 
       (.I(rdata_OBUF[28]),
        .O(rdata[28]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[28]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[28]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[28] ),
        .I4(tap_Do_IBUF[28]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[28]));
  OBUF \rdata_OBUF[29]_inst 
       (.I(rdata_OBUF[29]),
        .O(rdata[29]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[29]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[29]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[29] ),
        .I4(tap_Do_IBUF[29]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[29]));
  OBUF \rdata_OBUF[2]_inst 
       (.I(rdata_OBUF[2]),
        .O(rdata[2]));
  LUT3 #(
    .INIT(8'hEA)) 
    \rdata_OBUF[2]_inst_i_1 
       (.I0(\rdata_OBUF[2]_inst_i_2_n_0 ),
        .I1(tap_Do_IBUF[2]),
        .I2(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[2]));
  LUT6 #(
    .INIT(64'h0000BB3000008830)) 
    \rdata_OBUF[2]_inst_i_2 
       (.I0(\RAM_0x14_reg_n_0_[2] ),
        .I1(araddr_buffer[2]),
        .I2(ap_idle),
        .I3(araddr_buffer[4]),
        .I4(\rdata_OBUF[31]_inst_i_5_n_0 ),
        .I5(RAM_0x10[2]),
        .O(\rdata_OBUF[2]_inst_i_2_n_0 ));
  OBUF \rdata_OBUF[30]_inst 
       (.I(rdata_OBUF[30]),
        .O(rdata[30]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[30]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[30]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[30] ),
        .I4(tap_Do_IBUF[30]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[30]));
  OBUF \rdata_OBUF[31]_inst 
       (.I(rdata_OBUF[31]),
        .O(rdata[31]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[31]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[31]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[31] ),
        .I4(tap_Do_IBUF[31]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[31]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \rdata_OBUF[31]_inst_i_2 
       (.I0(\rdata_OBUF[31]_inst_i_5_n_0 ),
        .I1(araddr_buffer[4]),
        .I2(araddr_buffer[2]),
        .O(\rdata_OBUF[31]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \rdata_OBUF[31]_inst_i_3 
       (.I0(\rdata_OBUF[31]_inst_i_5_n_0 ),
        .I1(araddr_buffer[4]),
        .I2(araddr_buffer[2]),
        .O(\rdata_OBUF[31]_inst_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \rdata_OBUF[31]_inst_i_4 
       (.I0(araddr_buffer[4]),
        .I1(araddr_buffer[2]),
        .I2(\rdata_OBUF[31]_inst_i_5_n_0 ),
        .O(\rdata_OBUF[31]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \rdata_OBUF[31]_inst_i_5 
       (.I0(\rdata_OBUF[31]_inst_i_6_n_0 ),
        .I1(araddr_buffer[6]),
        .I2(araddr_buffer[7]),
        .I3(araddr_buffer[3]),
        .I4(araddr_buffer[5]),
        .O(\rdata_OBUF[31]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \rdata_OBUF[31]_inst_i_6 
       (.I0(araddr_buffer[1]),
        .I1(araddr_buffer[0]),
        .I2(araddr_buffer[10]),
        .I3(araddr_buffer[11]),
        .I4(araddr_buffer[8]),
        .I5(araddr_buffer[9]),
        .O(\rdata_OBUF[31]_inst_i_6_n_0 ));
  OBUF \rdata_OBUF[3]_inst 
       (.I(rdata_OBUF[3]),
        .O(rdata[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[3]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[3]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[3] ),
        .I4(tap_Do_IBUF[3]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[3]));
  OBUF \rdata_OBUF[4]_inst 
       (.I(rdata_OBUF[4]),
        .O(rdata[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[4]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[4]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[4] ),
        .I4(tap_Do_IBUF[4]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[4]));
  OBUF \rdata_OBUF[5]_inst 
       (.I(rdata_OBUF[5]),
        .O(rdata[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[5]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[5]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[5] ),
        .I4(tap_Do_IBUF[5]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[5]));
  OBUF \rdata_OBUF[6]_inst 
       (.I(rdata_OBUF[6]),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[6]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[6]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[6] ),
        .I4(tap_Do_IBUF[6]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[6]));
  OBUF \rdata_OBUF[7]_inst 
       (.I(rdata_OBUF[7]),
        .O(rdata[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[7]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[7]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[7] ),
        .I4(tap_Do_IBUF[7]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[7]));
  OBUF \rdata_OBUF[8]_inst 
       (.I(rdata_OBUF[8]),
        .O(rdata[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[8]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[8]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[8] ),
        .I4(tap_Do_IBUF[8]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[8]));
  OBUF \rdata_OBUF[9]_inst 
       (.I(rdata_OBUF[9]),
        .O(rdata[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \rdata_OBUF[9]_inst_i_1 
       (.I0(\rdata_OBUF[31]_inst_i_2_n_0 ),
        .I1(RAM_0x10[9]),
        .I2(\rdata_OBUF[31]_inst_i_3_n_0 ),
        .I3(\RAM_0x14_reg_n_0_[9] ),
        .I4(tap_Do_IBUF[9]),
        .I5(\rdata_OBUF[31]_inst_i_4_n_0 ),
        .O(rdata_OBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    refresh_done_f_i_1
       (.I0(init_addr[2]),
        .I1(init_addr[3]),
        .I2(init_addr[4]),
        .I3(refresh_done_f_i_2_n_0),
        .O(refresh_done_f0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    refresh_done_f_i_2
       (.I0(init_addr[7]),
        .I1(sm_tlast_OBUF),
        .I2(init_addr[5]),
        .I3(init_addr[6]),
        .I4(ap_state[0]),
        .I5(ap_state[1]),
        .O(refresh_done_f_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    refresh_done_f_reg
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(refresh_done_f0),
        .Q(refresh_done_f));
  IBUF rready_IBUF_inst
       (.I(rready),
        .O(rready_IBUF));
  OBUF rvalid_OBUF_inst
       (.I(rvalid_OBUF),
        .O(rvalid));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \rvalid_reg[0]_i_1 
       (.I0(ap_idle),
        .I1(araddr_buffer_is_full),
        .I2(rvalid_OBUF),
        .I3(rready_IBUF),
        .O(\rvalid_reg[0]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \rvalid_reg_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\rvalid_reg[0]_i_1_n_0 ),
        .Q(rvalid_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h74)) 
    sm_state_i_1
       (.I0(sm_tvalid_OBUF),
        .I1(sm_state),
        .I2(final_Y),
        .O(sm_state_next));
  FDPE #(
    .INIT(1'b1)) 
    sm_state_reg
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sm_state_next),
        .PRE(wready_reg_i_2_n_0),
        .Q(sm_state));
  OBUF \sm_tdata_OBUF[0]_inst 
       (.I(sm_tdata_OBUF[0]),
        .O(sm_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[0]_inst_i_1 
       (.I0(y_tmp_reg[0]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[0]));
  OBUF \sm_tdata_OBUF[10]_inst 
       (.I(sm_tdata_OBUF[10]),
        .O(sm_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[10]_inst_i_1 
       (.I0(y_tmp_reg[10]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[10]));
  OBUF \sm_tdata_OBUF[11]_inst 
       (.I(sm_tdata_OBUF[11]),
        .O(sm_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[11]_inst_i_1 
       (.I0(y_tmp_reg[11]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[11]));
  OBUF \sm_tdata_OBUF[12]_inst 
       (.I(sm_tdata_OBUF[12]),
        .O(sm_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[12]_inst_i_1 
       (.I0(y_tmp_reg[12]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[12]));
  OBUF \sm_tdata_OBUF[13]_inst 
       (.I(sm_tdata_OBUF[13]),
        .O(sm_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[13]_inst_i_1 
       (.I0(y_tmp_reg[13]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[13]));
  OBUF \sm_tdata_OBUF[14]_inst 
       (.I(sm_tdata_OBUF[14]),
        .O(sm_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[14]_inst_i_1 
       (.I0(y_tmp_reg[14]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[14]));
  OBUF \sm_tdata_OBUF[15]_inst 
       (.I(sm_tdata_OBUF[15]),
        .O(sm_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[15]_inst_i_1 
       (.I0(y_tmp_reg[15]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[15]));
  OBUF \sm_tdata_OBUF[16]_inst 
       (.I(sm_tdata_OBUF[16]),
        .O(sm_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[16]_inst_i_1 
       (.I0(y_tmp_reg[16]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[16]));
  OBUF \sm_tdata_OBUF[17]_inst 
       (.I(sm_tdata_OBUF[17]),
        .O(sm_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[17]_inst_i_1 
       (.I0(y_tmp_reg[17]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[17]));
  OBUF \sm_tdata_OBUF[18]_inst 
       (.I(sm_tdata_OBUF[18]),
        .O(sm_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[18]_inst_i_1 
       (.I0(y_tmp_reg[18]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[18]));
  OBUF \sm_tdata_OBUF[19]_inst 
       (.I(sm_tdata_OBUF[19]),
        .O(sm_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[19]_inst_i_1 
       (.I0(y_tmp_reg[19]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[19]));
  OBUF \sm_tdata_OBUF[1]_inst 
       (.I(sm_tdata_OBUF[1]),
        .O(sm_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[1]_inst_i_1 
       (.I0(y_tmp_reg[1]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[1]));
  OBUF \sm_tdata_OBUF[20]_inst 
       (.I(sm_tdata_OBUF[20]),
        .O(sm_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[20]_inst_i_1 
       (.I0(y_tmp_reg[20]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[20]));
  OBUF \sm_tdata_OBUF[21]_inst 
       (.I(sm_tdata_OBUF[21]),
        .O(sm_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[21]_inst_i_1 
       (.I0(y_tmp_reg[21]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[21]));
  OBUF \sm_tdata_OBUF[22]_inst 
       (.I(sm_tdata_OBUF[22]),
        .O(sm_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[22]_inst_i_1 
       (.I0(y_tmp_reg[22]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[22]));
  OBUF \sm_tdata_OBUF[23]_inst 
       (.I(sm_tdata_OBUF[23]),
        .O(sm_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[23]_inst_i_1 
       (.I0(y_tmp_reg[23]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[23]));
  OBUF \sm_tdata_OBUF[24]_inst 
       (.I(sm_tdata_OBUF[24]),
        .O(sm_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[24]_inst_i_1 
       (.I0(y_tmp_reg[24]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[24]));
  OBUF \sm_tdata_OBUF[25]_inst 
       (.I(sm_tdata_OBUF[25]),
        .O(sm_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[25]_inst_i_1 
       (.I0(y_tmp_reg[25]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[25]));
  OBUF \sm_tdata_OBUF[26]_inst 
       (.I(sm_tdata_OBUF[26]),
        .O(sm_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[26]_inst_i_1 
       (.I0(y_tmp_reg[26]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[26]));
  OBUF \sm_tdata_OBUF[27]_inst 
       (.I(sm_tdata_OBUF[27]),
        .O(sm_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[27]_inst_i_1 
       (.I0(y_tmp_reg[27]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[27]));
  OBUF \sm_tdata_OBUF[28]_inst 
       (.I(sm_tdata_OBUF[28]),
        .O(sm_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[28]_inst_i_1 
       (.I0(y_tmp_reg[28]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[28]));
  OBUF \sm_tdata_OBUF[29]_inst 
       (.I(sm_tdata_OBUF[29]),
        .O(sm_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[29]_inst_i_1 
       (.I0(y_tmp_reg[29]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[29]));
  OBUF \sm_tdata_OBUF[2]_inst 
       (.I(sm_tdata_OBUF[2]),
        .O(sm_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[2]_inst_i_1 
       (.I0(y_tmp_reg[2]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[2]));
  OBUF \sm_tdata_OBUF[30]_inst 
       (.I(sm_tdata_OBUF[30]),
        .O(sm_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[30]_inst_i_1 
       (.I0(y_tmp_reg[30]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[30]));
  OBUF \sm_tdata_OBUF[31]_inst 
       (.I(sm_tdata_OBUF[31]),
        .O(sm_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[31]_inst_i_1 
       (.I0(y_tmp_reg[31]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[31]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sm_tdata_OBUF[31]_inst_i_10 
       (.I0(RAM_0x10[17]),
        .I1(data_output_length_reg[17]),
        .I2(RAM_0x10[16]),
        .I3(data_output_length_reg[16]),
        .I4(data_output_length_reg[15]),
        .I5(RAM_0x10[15]),
        .O(\sm_tdata_OBUF[31]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sm_tdata_OBUF[31]_inst_i_11 
       (.I0(RAM_0x10[14]),
        .I1(data_output_length_reg[14]),
        .I2(RAM_0x10[13]),
        .I3(data_output_length_reg[13]),
        .I4(data_output_length_reg[12]),
        .I5(RAM_0x10[12]),
        .O(\sm_tdata_OBUF[31]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sm_tdata_OBUF[31]_inst_i_12 
       (.I0(RAM_0x10[11]),
        .I1(data_output_length_reg[11]),
        .I2(RAM_0x10[10]),
        .I3(data_output_length_reg[10]),
        .I4(data_output_length_reg[9]),
        .I5(RAM_0x10[9]),
        .O(\sm_tdata_OBUF[31]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sm_tdata_OBUF[31]_inst_i_13 
       (.I0(RAM_0x10[8]),
        .I1(data_output_length_reg[8]),
        .I2(RAM_0x10[7]),
        .I3(data_output_length_reg[7]),
        .I4(data_output_length_reg[6]),
        .I5(RAM_0x10[6]),
        .O(\sm_tdata_OBUF[31]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sm_tdata_OBUF[31]_inst_i_14 
       (.I0(RAM_0x10[5]),
        .I1(data_output_length_reg[5]),
        .I2(RAM_0x10[4]),
        .I3(data_output_length_reg[4]),
        .I4(data_output_length_reg[3]),
        .I5(RAM_0x10[3]),
        .O(\sm_tdata_OBUF[31]_inst_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sm_tdata_OBUF[31]_inst_i_15 
       (.I0(RAM_0x10[2]),
        .I1(data_output_length_reg[2]),
        .I2(RAM_0x10[1]),
        .I3(data_output_length_reg[1]),
        .I4(data_output_length_reg[0]),
        .I5(RAM_0x10[0]),
        .O(\sm_tdata_OBUF[31]_inst_i_15_n_0 ));
  CARRY4 \sm_tdata_OBUF[31]_inst_i_2 
       (.CI(\sm_tdata_OBUF[31]_inst_i_3_n_0 ),
        .CO({\NLW_sm_tdata_OBUF[31]_inst_i_2_CO_UNCONNECTED [3],final_Y,\sm_tdata_OBUF[31]_inst_i_2_n_2 ,\sm_tdata_OBUF[31]_inst_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_sm_tdata_OBUF[31]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\sm_tdata_OBUF[31]_inst_i_4_n_0 ,\sm_tdata_OBUF[31]_inst_i_5_n_0 ,\sm_tdata_OBUF[31]_inst_i_6_n_0 }));
  CARRY4 \sm_tdata_OBUF[31]_inst_i_3 
       (.CI(\sm_tdata_OBUF[31]_inst_i_7_n_0 ),
        .CO({\sm_tdata_OBUF[31]_inst_i_3_n_0 ,\sm_tdata_OBUF[31]_inst_i_3_n_1 ,\sm_tdata_OBUF[31]_inst_i_3_n_2 ,\sm_tdata_OBUF[31]_inst_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_sm_tdata_OBUF[31]_inst_i_3_O_UNCONNECTED [3:0]),
        .S({\sm_tdata_OBUF[31]_inst_i_8_n_0 ,\sm_tdata_OBUF[31]_inst_i_9_n_0 ,\sm_tdata_OBUF[31]_inst_i_10_n_0 ,\sm_tdata_OBUF[31]_inst_i_11_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \sm_tdata_OBUF[31]_inst_i_4 
       (.I0(data_output_length_reg[30]),
        .I1(RAM_0x10[30]),
        .I2(data_output_length_reg[31]),
        .I3(RAM_0x10[31]),
        .O(\sm_tdata_OBUF[31]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sm_tdata_OBUF[31]_inst_i_5 
       (.I0(RAM_0x10[29]),
        .I1(data_output_length_reg[29]),
        .I2(RAM_0x10[28]),
        .I3(data_output_length_reg[28]),
        .I4(data_output_length_reg[27]),
        .I5(RAM_0x10[27]),
        .O(\sm_tdata_OBUF[31]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sm_tdata_OBUF[31]_inst_i_6 
       (.I0(RAM_0x10[26]),
        .I1(data_output_length_reg[26]),
        .I2(RAM_0x10[25]),
        .I3(data_output_length_reg[25]),
        .I4(data_output_length_reg[24]),
        .I5(RAM_0x10[24]),
        .O(\sm_tdata_OBUF[31]_inst_i_6_n_0 ));
  CARRY4 \sm_tdata_OBUF[31]_inst_i_7 
       (.CI(1'b0),
        .CO({\sm_tdata_OBUF[31]_inst_i_7_n_0 ,\sm_tdata_OBUF[31]_inst_i_7_n_1 ,\sm_tdata_OBUF[31]_inst_i_7_n_2 ,\sm_tdata_OBUF[31]_inst_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_sm_tdata_OBUF[31]_inst_i_7_O_UNCONNECTED [3:0]),
        .S({\sm_tdata_OBUF[31]_inst_i_12_n_0 ,\sm_tdata_OBUF[31]_inst_i_13_n_0 ,\sm_tdata_OBUF[31]_inst_i_14_n_0 ,\sm_tdata_OBUF[31]_inst_i_15_n_0 }));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sm_tdata_OBUF[31]_inst_i_8 
       (.I0(RAM_0x10[23]),
        .I1(data_output_length_reg[23]),
        .I2(RAM_0x10[22]),
        .I3(data_output_length_reg[22]),
        .I4(data_output_length_reg[21]),
        .I5(RAM_0x10[21]),
        .O(\sm_tdata_OBUF[31]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \sm_tdata_OBUF[31]_inst_i_9 
       (.I0(RAM_0x10[20]),
        .I1(data_output_length_reg[20]),
        .I2(RAM_0x10[19]),
        .I3(data_output_length_reg[19]),
        .I4(data_output_length_reg[18]),
        .I5(RAM_0x10[18]),
        .O(\sm_tdata_OBUF[31]_inst_i_9_n_0 ));
  OBUF \sm_tdata_OBUF[3]_inst 
       (.I(sm_tdata_OBUF[3]),
        .O(sm_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[3]_inst_i_1 
       (.I0(y_tmp_reg[3]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[3]));
  OBUF \sm_tdata_OBUF[4]_inst 
       (.I(sm_tdata_OBUF[4]),
        .O(sm_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[4]_inst_i_1 
       (.I0(y_tmp_reg[4]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[4]));
  OBUF \sm_tdata_OBUF[5]_inst 
       (.I(sm_tdata_OBUF[5]),
        .O(sm_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[5]_inst_i_1 
       (.I0(y_tmp_reg[5]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[5]));
  OBUF \sm_tdata_OBUF[6]_inst 
       (.I(sm_tdata_OBUF[6]),
        .O(sm_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[6]_inst_i_1 
       (.I0(y_tmp_reg[6]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[6]));
  OBUF \sm_tdata_OBUF[7]_inst 
       (.I(sm_tdata_OBUF[7]),
        .O(sm_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[7]_inst_i_1 
       (.I0(y_tmp_reg[7]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[7]));
  OBUF \sm_tdata_OBUF[8]_inst 
       (.I(sm_tdata_OBUF[8]),
        .O(sm_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[8]_inst_i_1 
       (.I0(y_tmp_reg[8]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[8]));
  OBUF \sm_tdata_OBUF[9]_inst 
       (.I(sm_tdata_OBUF[9]),
        .O(sm_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sm_tdata_OBUF[9]_inst_i_1 
       (.I0(y_tmp_reg[9]),
        .I1(final_Y),
        .O(sm_tdata_OBUF[9]));
  OBUF sm_tlast_OBUF_inst
       (.I(sm_tlast_OBUF),
        .O(sm_tlast));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sm_tlast_reg_i_1
       (.I0(final_Y),
        .I1(sm_state),
        .O(sm_tlast_reg_next));
  FDCE #(
    .INIT(1'b0)) 
    sm_tlast_reg_reg
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(sm_tlast_reg_next),
        .Q(sm_tlast_OBUF));
  IBUF sm_tready_IBUF_inst
       (.I(sm_tready),
        .O(sm_tready_IBUF));
  OBUF sm_tvalid_OBUF_inst
       (.I(sm_tvalid_OBUF),
        .O(sm_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF700)) 
    sm_tvalid_reg_i_1
       (.I0(sm_tvalid_OBUF),
        .I1(sm_tready_IBUF),
        .I2(ap_idle),
        .I3(sm_tvalid_reg1),
        .O(sm_tvalid_reg0));
  LUT3 #(
    .INIT(8'h01)) 
    sm_tvalid_reg_i_10
       (.I0(\k_reg[5]_i_21_n_5 ),
        .I1(\k_reg[5]_i_21_n_4 ),
        .I2(\k_reg[5]_i_16_n_7 ),
        .O(sm_tvalid_reg_i_10_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sm_tvalid_reg_i_11
       (.I0(\k_reg[5]_i_20_n_4 ),
        .I1(\k_reg[5]_i_21_n_7 ),
        .I2(\k_reg[5]_i_21_n_6 ),
        .O(sm_tvalid_reg_i_11_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sm_tvalid_reg_i_12
       (.I0(\k_reg[5]_i_20_n_7 ),
        .I1(\k_reg[5]_i_20_n_6 ),
        .I2(\k_reg[5]_i_20_n_5 ),
        .O(sm_tvalid_reg_i_12_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sm_tvalid_reg_i_13
       (.I0(\k_reg[5]_i_12_n_6 ),
        .I1(\k_reg[5]_i_12_n_5 ),
        .I2(\k_reg[5]_i_12_n_4 ),
        .O(sm_tvalid_reg_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    sm_tvalid_reg_i_14
       (.I0(\k_reg[5]_i_12_n_7 ),
        .I1(k[5]),
        .I2(\k_reg[5]_i_18_n_4 ),
        .I3(k[4]),
        .I4(k[3]),
        .I5(\k_reg[5]_i_18_n_5 ),
        .O(sm_tvalid_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000900909900000)) 
    sm_tvalid_reg_i_15
       (.I0(\k_reg[5]_i_18_n_6 ),
        .I1(k[2]),
        .I2(\RAM_0x14_reg_n_0_[1] ),
        .I3(k[1]),
        .I4(k[0]),
        .I5(\RAM_0x14_reg_n_0_[0] ),
        .O(sm_tvalid_reg_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sm_tvalid_reg_i_4
       (.I0(\k_reg[5]_i_15_n_5 ),
        .I1(\k_reg[5]_i_15_n_6 ),
        .O(sm_tvalid_reg_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sm_tvalid_reg_i_5
       (.I0(\k_reg[5]_i_14_n_5 ),
        .I1(\k_reg[5]_i_14_n_4 ),
        .I2(\k_reg[5]_i_15_n_7 ),
        .O(sm_tvalid_reg_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sm_tvalid_reg_i_6
       (.I0(\k_reg[5]_i_13_n_4 ),
        .I1(\k_reg[5]_i_14_n_7 ),
        .I2(\k_reg[5]_i_14_n_6 ),
        .O(sm_tvalid_reg_i_6_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sm_tvalid_reg_i_8
       (.I0(\k_reg[5]_i_13_n_7 ),
        .I1(\k_reg[5]_i_13_n_6 ),
        .I2(\k_reg[5]_i_13_n_5 ),
        .O(sm_tvalid_reg_i_8_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    sm_tvalid_reg_i_9
       (.I0(\k_reg[5]_i_16_n_6 ),
        .I1(\k_reg[5]_i_16_n_5 ),
        .I2(\k_reg[5]_i_16_n_4 ),
        .O(sm_tvalid_reg_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sm_tvalid_reg_reg
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(sm_tvalid_reg0),
        .Q(sm_tvalid_OBUF));
  CARRY4 sm_tvalid_reg_reg_i_2
       (.CI(sm_tvalid_reg_reg_i_3_n_0),
        .CO({NLW_sm_tvalid_reg_reg_i_2_CO_UNCONNECTED[3],sm_tvalid_reg1,sm_tvalid_reg_reg_i_2_n_2,sm_tvalid_reg_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sm_tvalid_reg_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,sm_tvalid_reg_i_4_n_0,sm_tvalid_reg_i_5_n_0,sm_tvalid_reg_i_6_n_0}));
  CARRY4 sm_tvalid_reg_reg_i_3
       (.CI(sm_tvalid_reg_reg_i_7_n_0),
        .CO({sm_tvalid_reg_reg_i_3_n_0,sm_tvalid_reg_reg_i_3_n_1,sm_tvalid_reg_reg_i_3_n_2,sm_tvalid_reg_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sm_tvalid_reg_reg_i_3_O_UNCONNECTED[3:0]),
        .S({sm_tvalid_reg_i_8_n_0,sm_tvalid_reg_i_9_n_0,sm_tvalid_reg_i_10_n_0,sm_tvalid_reg_i_11_n_0}));
  CARRY4 sm_tvalid_reg_reg_i_7
       (.CI(1'b0),
        .CO({sm_tvalid_reg_reg_i_7_n_0,sm_tvalid_reg_reg_i_7_n_1,sm_tvalid_reg_reg_i_7_n_2,sm_tvalid_reg_reg_i_7_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_sm_tvalid_reg_reg_i_7_O_UNCONNECTED[3:0]),
        .S({sm_tvalid_reg_i_12_n_0,sm_tvalid_reg_i_13_n_0,sm_tvalid_reg_i_14_n_0,sm_tvalid_reg_i_15_n_0}));
  IBUF \ss_tdata_IBUF[0]_inst 
       (.I(ss_tdata[0]),
        .O(ss_tdata_IBUF[0]));
  IBUF \ss_tdata_IBUF[10]_inst 
       (.I(ss_tdata[10]),
        .O(ss_tdata_IBUF[10]));
  IBUF \ss_tdata_IBUF[11]_inst 
       (.I(ss_tdata[11]),
        .O(ss_tdata_IBUF[11]));
  IBUF \ss_tdata_IBUF[12]_inst 
       (.I(ss_tdata[12]),
        .O(ss_tdata_IBUF[12]));
  IBUF \ss_tdata_IBUF[13]_inst 
       (.I(ss_tdata[13]),
        .O(ss_tdata_IBUF[13]));
  IBUF \ss_tdata_IBUF[14]_inst 
       (.I(ss_tdata[14]),
        .O(ss_tdata_IBUF[14]));
  IBUF \ss_tdata_IBUF[15]_inst 
       (.I(ss_tdata[15]),
        .O(ss_tdata_IBUF[15]));
  IBUF \ss_tdata_IBUF[16]_inst 
       (.I(ss_tdata[16]),
        .O(ss_tdata_IBUF[16]));
  IBUF \ss_tdata_IBUF[17]_inst 
       (.I(ss_tdata[17]),
        .O(ss_tdata_IBUF[17]));
  IBUF \ss_tdata_IBUF[18]_inst 
       (.I(ss_tdata[18]),
        .O(ss_tdata_IBUF[18]));
  IBUF \ss_tdata_IBUF[19]_inst 
       (.I(ss_tdata[19]),
        .O(ss_tdata_IBUF[19]));
  IBUF \ss_tdata_IBUF[1]_inst 
       (.I(ss_tdata[1]),
        .O(ss_tdata_IBUF[1]));
  IBUF \ss_tdata_IBUF[20]_inst 
       (.I(ss_tdata[20]),
        .O(ss_tdata_IBUF[20]));
  IBUF \ss_tdata_IBUF[21]_inst 
       (.I(ss_tdata[21]),
        .O(ss_tdata_IBUF[21]));
  IBUF \ss_tdata_IBUF[22]_inst 
       (.I(ss_tdata[22]),
        .O(ss_tdata_IBUF[22]));
  IBUF \ss_tdata_IBUF[23]_inst 
       (.I(ss_tdata[23]),
        .O(ss_tdata_IBUF[23]));
  IBUF \ss_tdata_IBUF[24]_inst 
       (.I(ss_tdata[24]),
        .O(ss_tdata_IBUF[24]));
  IBUF \ss_tdata_IBUF[25]_inst 
       (.I(ss_tdata[25]),
        .O(ss_tdata_IBUF[25]));
  IBUF \ss_tdata_IBUF[26]_inst 
       (.I(ss_tdata[26]),
        .O(ss_tdata_IBUF[26]));
  IBUF \ss_tdata_IBUF[27]_inst 
       (.I(ss_tdata[27]),
        .O(ss_tdata_IBUF[27]));
  IBUF \ss_tdata_IBUF[28]_inst 
       (.I(ss_tdata[28]),
        .O(ss_tdata_IBUF[28]));
  IBUF \ss_tdata_IBUF[29]_inst 
       (.I(ss_tdata[29]),
        .O(ss_tdata_IBUF[29]));
  IBUF \ss_tdata_IBUF[2]_inst 
       (.I(ss_tdata[2]),
        .O(ss_tdata_IBUF[2]));
  IBUF \ss_tdata_IBUF[30]_inst 
       (.I(ss_tdata[30]),
        .O(ss_tdata_IBUF[30]));
  IBUF \ss_tdata_IBUF[31]_inst 
       (.I(ss_tdata[31]),
        .O(ss_tdata_IBUF[31]));
  IBUF \ss_tdata_IBUF[3]_inst 
       (.I(ss_tdata[3]),
        .O(ss_tdata_IBUF[3]));
  IBUF \ss_tdata_IBUF[4]_inst 
       (.I(ss_tdata[4]),
        .O(ss_tdata_IBUF[4]));
  IBUF \ss_tdata_IBUF[5]_inst 
       (.I(ss_tdata[5]),
        .O(ss_tdata_IBUF[5]));
  IBUF \ss_tdata_IBUF[6]_inst 
       (.I(ss_tdata[6]),
        .O(ss_tdata_IBUF[6]));
  IBUF \ss_tdata_IBUF[7]_inst 
       (.I(ss_tdata[7]),
        .O(ss_tdata_IBUF[7]));
  IBUF \ss_tdata_IBUF[8]_inst 
       (.I(ss_tdata[8]),
        .O(ss_tdata_IBUF[8]));
  IBUF \ss_tdata_IBUF[9]_inst 
       (.I(ss_tdata[9]),
        .O(ss_tdata_IBUF[9]));
  OBUF ss_tready_OBUF_inst
       (.I(ss_tready_OBUF),
        .O(ss_tready));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000070)) 
    ss_tready_reg_i_1
       (.I0(ss_tvalid_IBUF),
        .I1(ss_tready_OBUF),
        .I2(ss_tready_reg3),
        .I3(ap_idle),
        .I4(p_2_in),
        .O(ss_tready_reg0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ss_tready_reg_i_10
       (.I0(RAM_0x10[17]),
        .I1(data_input_length_reg[17]),
        .I2(RAM_0x10[16]),
        .I3(data_input_length_reg[16]),
        .I4(data_input_length_reg[15]),
        .I5(RAM_0x10[15]),
        .O(ss_tready_reg_i_10_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ss_tready_reg_i_11
       (.I0(RAM_0x10[14]),
        .I1(data_input_length_reg[14]),
        .I2(RAM_0x10[13]),
        .I3(data_input_length_reg[13]),
        .I4(data_input_length_reg[12]),
        .I5(RAM_0x10[12]),
        .O(ss_tready_reg_i_11_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ss_tready_reg_i_12
       (.I0(RAM_0x10[11]),
        .I1(data_input_length_reg[11]),
        .I2(RAM_0x10[10]),
        .I3(data_input_length_reg[10]),
        .I4(data_input_length_reg[9]),
        .I5(RAM_0x10[9]),
        .O(ss_tready_reg_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ss_tready_reg_i_13
       (.I0(RAM_0x10[8]),
        .I1(data_input_length_reg[8]),
        .I2(RAM_0x10[7]),
        .I3(data_input_length_reg[7]),
        .I4(data_input_length_reg[6]),
        .I5(RAM_0x10[6]),
        .O(ss_tready_reg_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ss_tready_reg_i_14
       (.I0(RAM_0x10[5]),
        .I1(data_input_length_reg[5]),
        .I2(RAM_0x10[4]),
        .I3(data_input_length_reg[4]),
        .I4(data_input_length_reg[3]),
        .I5(RAM_0x10[3]),
        .O(ss_tready_reg_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ss_tready_reg_i_15
       (.I0(RAM_0x10[2]),
        .I1(data_input_length_reg[2]),
        .I2(RAM_0x10[1]),
        .I3(data_input_length_reg[1]),
        .I4(data_input_length_reg[0]),
        .I5(RAM_0x10[0]),
        .O(ss_tready_reg_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ss_tready_reg_i_4
       (.I0(data_input_length_reg[30]),
        .I1(RAM_0x10[30]),
        .I2(data_input_length_reg[31]),
        .I3(RAM_0x10[31]),
        .O(ss_tready_reg_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ss_tready_reg_i_5
       (.I0(RAM_0x10[29]),
        .I1(data_input_length_reg[29]),
        .I2(RAM_0x10[28]),
        .I3(data_input_length_reg[28]),
        .I4(data_input_length_reg[27]),
        .I5(RAM_0x10[27]),
        .O(ss_tready_reg_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ss_tready_reg_i_6
       (.I0(RAM_0x10[26]),
        .I1(data_input_length_reg[26]),
        .I2(RAM_0x10[25]),
        .I3(data_input_length_reg[25]),
        .I4(data_input_length_reg[24]),
        .I5(RAM_0x10[24]),
        .O(ss_tready_reg_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ss_tready_reg_i_8
       (.I0(RAM_0x10[23]),
        .I1(data_input_length_reg[23]),
        .I2(RAM_0x10[22]),
        .I3(data_input_length_reg[22]),
        .I4(data_input_length_reg[21]),
        .I5(RAM_0x10[21]),
        .O(ss_tready_reg_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ss_tready_reg_i_9
       (.I0(RAM_0x10[20]),
        .I1(data_input_length_reg[20]),
        .I2(RAM_0x10[19]),
        .I3(data_input_length_reg[19]),
        .I4(data_input_length_reg[18]),
        .I5(RAM_0x10[18]),
        .O(ss_tready_reg_i_9_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ss_tready_reg_reg
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(ss_tready_reg0),
        .Q(ss_tready_OBUF));
  CARRY4 ss_tready_reg_reg_i_2
       (.CI(ss_tready_reg_reg_i_3_n_0),
        .CO({NLW_ss_tready_reg_reg_i_2_CO_UNCONNECTED[3],ss_tready_reg3,ss_tready_reg_reg_i_2_n_2,ss_tready_reg_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW_ss_tready_reg_reg_i_2_O_UNCONNECTED[3:0]),
        .S({1'b0,ss_tready_reg_i_4_n_0,ss_tready_reg_i_5_n_0,ss_tready_reg_i_6_n_0}));
  CARRY4 ss_tready_reg_reg_i_3
       (.CI(ss_tready_reg_reg_i_7_n_0),
        .CO({ss_tready_reg_reg_i_3_n_0,ss_tready_reg_reg_i_3_n_1,ss_tready_reg_reg_i_3_n_2,ss_tready_reg_reg_i_3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_ss_tready_reg_reg_i_3_O_UNCONNECTED[3:0]),
        .S({ss_tready_reg_i_8_n_0,ss_tready_reg_i_9_n_0,ss_tready_reg_i_10_n_0,ss_tready_reg_i_11_n_0}));
  CARRY4 ss_tready_reg_reg_i_7
       (.CI(1'b0),
        .CO({ss_tready_reg_reg_i_7_n_0,ss_tready_reg_reg_i_7_n_1,ss_tready_reg_reg_i_7_n_2,ss_tready_reg_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_ss_tready_reg_reg_i_7_O_UNCONNECTED[3:0]),
        .S({ss_tready_reg_i_12_n_0,ss_tready_reg_i_13_n_0,ss_tready_reg_i_14_n_0,ss_tready_reg_i_15_n_0}));
  IBUF ss_tvalid_IBUF_inst
       (.I(ss_tvalid),
        .O(ss_tvalid_IBUF));
  OBUF \tap_A_OBUF[0]_inst 
       (.I(tap_A_OBUF[0]),
        .O(tap_A[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hACCC0000)) 
    \tap_A_OBUF[0]_inst_i_1 
       (.I0(awaddr_buffer[0]),
        .I1(araddr_buffer[0]),
        .I2(wvalid_IBUF),
        .I3(wready_OBUF),
        .I4(ap_idle),
        .O(tap_A_OBUF[0]));
  OBUF \tap_A_OBUF[10]_inst 
       (.I(1'b0),
        .O(tap_A[10]));
  OBUF \tap_A_OBUF[11]_inst 
       (.I(1'b0),
        .O(tap_A[11]));
  OBUF \tap_A_OBUF[1]_inst 
       (.I(tap_A_OBUF[1]),
        .O(tap_A[1]));
  LUT5 #(
    .INIT(32'hACCC0000)) 
    \tap_A_OBUF[1]_inst_i_1 
       (.I0(awaddr_buffer[1]),
        .I1(araddr_buffer[1]),
        .I2(wvalid_IBUF),
        .I3(wready_OBUF),
        .I4(ap_idle),
        .O(tap_A_OBUF[1]));
  OBUF \tap_A_OBUF[2]_inst 
       (.I(tap_A_OBUF[2]),
        .O(tap_A[2]));
  LUT6 #(
    .INIT(64'hD8D8D8D80000FF00)) 
    \tap_A_OBUF[2]_inst_i_1 
       (.I0(\tap_A_OBUF[6]_inst_i_2_n_0 ),
        .I1(araddr_buffer[2]),
        .I2(awaddr_buffer[2]),
        .I3(\tap_A_OBUF[2]_inst_i_2_n_0 ),
        .I4(k[0]),
        .I5(ap_idle),
        .O(tap_A_OBUF[2]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \tap_A_OBUF[2]_inst_i_2 
       (.I0(k[4]),
        .I1(k[2]),
        .I2(k[1]),
        .I3(k[3]),
        .I4(k[5]),
        .O(\tap_A_OBUF[2]_inst_i_2_n_0 ));
  OBUF \tap_A_OBUF[3]_inst 
       (.I(tap_A_OBUF[3]),
        .O(tap_A[3]));
  LUT6 #(
    .INIT(64'hD8D8D8D800FF0000)) 
    \tap_A_OBUF[3]_inst_i_1 
       (.I0(\tap_A_OBUF[6]_inst_i_2_n_0 ),
        .I1(araddr_buffer[3]),
        .I2(awaddr_buffer[3]),
        .I3(\tap_A_OBUF[3]_inst_i_2_n_0 ),
        .I4(p_2_in),
        .I5(ap_idle),
        .O(tap_A_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \tap_A_OBUF[3]_inst_i_2 
       (.I0(k[0]),
        .I1(k[1]),
        .O(\tap_A_OBUF[3]_inst_i_2_n_0 ));
  OBUF \tap_A_OBUF[4]_inst 
       (.I(tap_A_OBUF[4]),
        .O(tap_A[4]));
  LUT6 #(
    .INIT(64'hD8D8D8D800FF0000)) 
    \tap_A_OBUF[4]_inst_i_1 
       (.I0(\tap_A_OBUF[6]_inst_i_2_n_0 ),
        .I1(araddr_buffer[4]),
        .I2(awaddr_buffer[4]),
        .I3(\tap_A_OBUF[4]_inst_i_2_n_0 ),
        .I4(p_2_in),
        .I5(ap_idle),
        .O(tap_A_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \tap_A_OBUF[4]_inst_i_2 
       (.I0(k[0]),
        .I1(k[1]),
        .I2(k[2]),
        .O(\tap_A_OBUF[4]_inst_i_2_n_0 ));
  OBUF \tap_A_OBUF[5]_inst 
       (.I(tap_A_OBUF[5]),
        .O(tap_A[5]));
  LUT6 #(
    .INIT(64'hD8D8D8D800FF0000)) 
    \tap_A_OBUF[5]_inst_i_1 
       (.I0(\tap_A_OBUF[6]_inst_i_2_n_0 ),
        .I1(araddr_buffer[5]),
        .I2(awaddr_buffer[5]),
        .I3(\tap_A_OBUF[5]_inst_i_2_n_0 ),
        .I4(p_2_in),
        .I5(ap_idle),
        .O(tap_A_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \tap_A_OBUF[5]_inst_i_2 
       (.I0(k[0]),
        .I1(k[1]),
        .I2(k[2]),
        .I3(k[3]),
        .O(\tap_A_OBUF[5]_inst_i_2_n_0 ));
  OBUF \tap_A_OBUF[6]_inst 
       (.I(tap_A_OBUF[6]),
        .O(tap_A[6]));
  LUT6 #(
    .INIT(64'hD8D8D8D800FF0000)) 
    \tap_A_OBUF[6]_inst_i_1 
       (.I0(\tap_A_OBUF[6]_inst_i_2_n_0 ),
        .I1(araddr_buffer[6]),
        .I2(awaddr_buffer[6]),
        .I3(\tap_A_OBUF[6]_inst_i_3_n_0 ),
        .I4(p_2_in),
        .I5(ap_idle),
        .O(tap_A_OBUF[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tap_A_OBUF[6]_inst_i_2 
       (.I0(wready_OBUF),
        .I1(wvalid_IBUF),
        .O(\tap_A_OBUF[6]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \tap_A_OBUF[6]_inst_i_3 
       (.I0(k[0]),
        .I1(k[2]),
        .I2(k[1]),
        .I3(k[3]),
        .I4(k[4]),
        .O(\tap_A_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \tap_A_OBUF[6]_inst_i_4 
       (.I0(k[5]),
        .I1(k[3]),
        .I2(k[1]),
        .I3(k[2]),
        .I4(k[4]),
        .I5(k[0]),
        .O(p_2_in));
  OBUF \tap_A_OBUF[7]_inst 
       (.I(1'b0),
        .O(tap_A[7]));
  OBUF \tap_A_OBUF[8]_inst 
       (.I(1'b0),
        .O(tap_A[8]));
  OBUF \tap_A_OBUF[9]_inst 
       (.I(1'b0),
        .O(tap_A[9]));
  OBUF \tap_Di_OBUF[0]_inst 
       (.I(tap_Di_OBUF[0]),
        .O(tap_Di[0]));
  OBUF \tap_Di_OBUF[10]_inst 
       (.I(tap_Di_OBUF[10]),
        .O(tap_Di[10]));
  OBUF \tap_Di_OBUF[11]_inst 
       (.I(tap_Di_OBUF[11]),
        .O(tap_Di[11]));
  OBUF \tap_Di_OBUF[12]_inst 
       (.I(tap_Di_OBUF[12]),
        .O(tap_Di[12]));
  OBUF \tap_Di_OBUF[13]_inst 
       (.I(tap_Di_OBUF[13]),
        .O(tap_Di[13]));
  OBUF \tap_Di_OBUF[14]_inst 
       (.I(tap_Di_OBUF[14]),
        .O(tap_Di[14]));
  OBUF \tap_Di_OBUF[15]_inst 
       (.I(tap_Di_OBUF[15]),
        .O(tap_Di[15]));
  OBUF \tap_Di_OBUF[16]_inst 
       (.I(tap_Di_OBUF[16]),
        .O(tap_Di[16]));
  OBUF \tap_Di_OBUF[17]_inst 
       (.I(tap_Di_OBUF[17]),
        .O(tap_Di[17]));
  OBUF \tap_Di_OBUF[18]_inst 
       (.I(tap_Di_OBUF[18]),
        .O(tap_Di[18]));
  OBUF \tap_Di_OBUF[19]_inst 
       (.I(tap_Di_OBUF[19]),
        .O(tap_Di[19]));
  OBUF \tap_Di_OBUF[1]_inst 
       (.I(tap_Di_OBUF[1]),
        .O(tap_Di[1]));
  OBUF \tap_Di_OBUF[20]_inst 
       (.I(tap_Di_OBUF[20]),
        .O(tap_Di[20]));
  OBUF \tap_Di_OBUF[21]_inst 
       (.I(tap_Di_OBUF[21]),
        .O(tap_Di[21]));
  OBUF \tap_Di_OBUF[22]_inst 
       (.I(tap_Di_OBUF[22]),
        .O(tap_Di[22]));
  OBUF \tap_Di_OBUF[23]_inst 
       (.I(tap_Di_OBUF[23]),
        .O(tap_Di[23]));
  OBUF \tap_Di_OBUF[24]_inst 
       (.I(tap_Di_OBUF[24]),
        .O(tap_Di[24]));
  OBUF \tap_Di_OBUF[25]_inst 
       (.I(tap_Di_OBUF[25]),
        .O(tap_Di[25]));
  OBUF \tap_Di_OBUF[26]_inst 
       (.I(tap_Di_OBUF[26]),
        .O(tap_Di[26]));
  OBUF \tap_Di_OBUF[27]_inst 
       (.I(tap_Di_OBUF[27]),
        .O(tap_Di[27]));
  OBUF \tap_Di_OBUF[28]_inst 
       (.I(tap_Di_OBUF[28]),
        .O(tap_Di[28]));
  OBUF \tap_Di_OBUF[29]_inst 
       (.I(tap_Di_OBUF[29]),
        .O(tap_Di[29]));
  OBUF \tap_Di_OBUF[2]_inst 
       (.I(tap_Di_OBUF[2]),
        .O(tap_Di[2]));
  OBUF \tap_Di_OBUF[30]_inst 
       (.I(tap_Di_OBUF[30]),
        .O(tap_Di[30]));
  OBUF \tap_Di_OBUF[31]_inst 
       (.I(tap_Di_OBUF[31]),
        .O(tap_Di[31]));
  OBUF \tap_Di_OBUF[3]_inst 
       (.I(tap_Di_OBUF[3]),
        .O(tap_Di[3]));
  OBUF \tap_Di_OBUF[4]_inst 
       (.I(tap_Di_OBUF[4]),
        .O(tap_Di[4]));
  OBUF \tap_Di_OBUF[5]_inst 
       (.I(tap_Di_OBUF[5]),
        .O(tap_Di[5]));
  OBUF \tap_Di_OBUF[6]_inst 
       (.I(tap_Di_OBUF[6]),
        .O(tap_Di[6]));
  OBUF \tap_Di_OBUF[7]_inst 
       (.I(tap_Di_OBUF[7]),
        .O(tap_Di[7]));
  OBUF \tap_Di_OBUF[8]_inst 
       (.I(tap_Di_OBUF[8]),
        .O(tap_Di[8]));
  OBUF \tap_Di_OBUF[9]_inst 
       (.I(tap_Di_OBUF[9]),
        .O(tap_Di[9]));
  IBUF \tap_Do_IBUF[0]_inst 
       (.I(tap_Do[0]),
        .O(tap_Do_IBUF[0]));
  IBUF \tap_Do_IBUF[10]_inst 
       (.I(tap_Do[10]),
        .O(tap_Do_IBUF[10]));
  IBUF \tap_Do_IBUF[11]_inst 
       (.I(tap_Do[11]),
        .O(tap_Do_IBUF[11]));
  IBUF \tap_Do_IBUF[12]_inst 
       (.I(tap_Do[12]),
        .O(tap_Do_IBUF[12]));
  IBUF \tap_Do_IBUF[13]_inst 
       (.I(tap_Do[13]),
        .O(tap_Do_IBUF[13]));
  IBUF \tap_Do_IBUF[14]_inst 
       (.I(tap_Do[14]),
        .O(tap_Do_IBUF[14]));
  IBUF \tap_Do_IBUF[15]_inst 
       (.I(tap_Do[15]),
        .O(tap_Do_IBUF[15]));
  IBUF \tap_Do_IBUF[16]_inst 
       (.I(tap_Do[16]),
        .O(tap_Do_IBUF[16]));
  IBUF \tap_Do_IBUF[17]_inst 
       (.I(tap_Do[17]),
        .O(tap_Do_IBUF[17]));
  IBUF \tap_Do_IBUF[18]_inst 
       (.I(tap_Do[18]),
        .O(tap_Do_IBUF[18]));
  IBUF \tap_Do_IBUF[19]_inst 
       (.I(tap_Do[19]),
        .O(tap_Do_IBUF[19]));
  IBUF \tap_Do_IBUF[1]_inst 
       (.I(tap_Do[1]),
        .O(tap_Do_IBUF[1]));
  IBUF \tap_Do_IBUF[20]_inst 
       (.I(tap_Do[20]),
        .O(tap_Do_IBUF[20]));
  IBUF \tap_Do_IBUF[21]_inst 
       (.I(tap_Do[21]),
        .O(tap_Do_IBUF[21]));
  IBUF \tap_Do_IBUF[22]_inst 
       (.I(tap_Do[22]),
        .O(tap_Do_IBUF[22]));
  IBUF \tap_Do_IBUF[23]_inst 
       (.I(tap_Do[23]),
        .O(tap_Do_IBUF[23]));
  IBUF \tap_Do_IBUF[24]_inst 
       (.I(tap_Do[24]),
        .O(tap_Do_IBUF[24]));
  IBUF \tap_Do_IBUF[25]_inst 
       (.I(tap_Do[25]),
        .O(tap_Do_IBUF[25]));
  IBUF \tap_Do_IBUF[26]_inst 
       (.I(tap_Do[26]),
        .O(tap_Do_IBUF[26]));
  IBUF \tap_Do_IBUF[27]_inst 
       (.I(tap_Do[27]),
        .O(tap_Do_IBUF[27]));
  IBUF \tap_Do_IBUF[28]_inst 
       (.I(tap_Do[28]),
        .O(tap_Do_IBUF[28]));
  IBUF \tap_Do_IBUF[29]_inst 
       (.I(tap_Do[29]),
        .O(tap_Do_IBUF[29]));
  IBUF \tap_Do_IBUF[2]_inst 
       (.I(tap_Do[2]),
        .O(tap_Do_IBUF[2]));
  IBUF \tap_Do_IBUF[30]_inst 
       (.I(tap_Do[30]),
        .O(tap_Do_IBUF[30]));
  IBUF \tap_Do_IBUF[31]_inst 
       (.I(tap_Do[31]),
        .O(tap_Do_IBUF[31]));
  IBUF \tap_Do_IBUF[3]_inst 
       (.I(tap_Do[3]),
        .O(tap_Do_IBUF[3]));
  IBUF \tap_Do_IBUF[4]_inst 
       (.I(tap_Do[4]),
        .O(tap_Do_IBUF[4]));
  IBUF \tap_Do_IBUF[5]_inst 
       (.I(tap_Do[5]),
        .O(tap_Do_IBUF[5]));
  IBUF \tap_Do_IBUF[6]_inst 
       (.I(tap_Do[6]),
        .O(tap_Do_IBUF[6]));
  IBUF \tap_Do_IBUF[7]_inst 
       (.I(tap_Do[7]),
        .O(tap_Do_IBUF[7]));
  IBUF \tap_Do_IBUF[8]_inst 
       (.I(tap_Do[8]),
        .O(tap_Do_IBUF[8]));
  IBUF \tap_Do_IBUF[9]_inst 
       (.I(tap_Do[9]),
        .O(tap_Do_IBUF[9]));
  OBUF tap_EN_OBUF_inst
       (.I(tap_EN_OBUF),
        .O(tap_EN));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    tap_EN_OBUF_inst_i_1
       (.I0(tap_EN_OBUF_inst_i_2_n_0),
        .I1(araddr_buffer[7]),
        .I2(ap_idle),
        .I3(tap_EN_OBUF_inst_i_3_n_0),
        .O(tap_EN_OBUF));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tap_EN_OBUF_inst_i_2
       (.I0(araddr_buffer[9]),
        .I1(araddr_buffer[8]),
        .I2(araddr_buffer[11]),
        .I3(araddr_buffer[10]),
        .O(tap_EN_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h00FF767600007676)) 
    tap_EN_OBUF_inst_i_3
       (.I0(k[5]),
        .I1(tap_EN_OBUF_inst_i_4_n_0),
        .I2(k[0]),
        .I3(tap_EN_OBUF_inst_i_5_n_0),
        .I4(ap_idle),
        .I5(awaddr_buffer[7]),
        .O(tap_EN_OBUF_inst_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    tap_EN_OBUF_inst_i_4
       (.I0(k[3]),
        .I1(k[1]),
        .I2(k[2]),
        .I3(k[4]),
        .O(tap_EN_OBUF_inst_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    tap_EN_OBUF_inst_i_5
       (.I0(awaddr_buffer[9]),
        .I1(awaddr_buffer[8]),
        .I2(awaddr_buffer[11]),
        .I3(awaddr_buffer[10]),
        .O(tap_EN_OBUF_inst_i_5_n_0));
  OBUF \tap_WE_OBUF[0]_inst 
       (.I(tap_WE_OBUF),
        .O(tap_WE[0]));
  OBUF \tap_WE_OBUF[1]_inst 
       (.I(tap_WE_OBUF),
        .O(tap_WE[1]));
  OBUF \tap_WE_OBUF[2]_inst 
       (.I(tap_WE_OBUF),
        .O(tap_WE[2]));
  OBUF \tap_WE_OBUF[3]_inst 
       (.I(tap_WE_OBUF),
        .O(tap_WE[3]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \tap_WE_OBUF[3]_inst_i_1 
       (.I0(awaddr_buffer[9]),
        .I1(awaddr_buffer[8]),
        .I2(awaddr_buffer[11]),
        .I3(awaddr_buffer[10]),
        .I4(awaddr_buffer[7]),
        .I5(\tap_WE_OBUF[3]_inst_i_2_n_0 ),
        .O(tap_WE_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \tap_WE_OBUF[3]_inst_i_2 
       (.I0(ap_idle),
        .I1(wvalid_IBUF),
        .I2(wready_OBUF),
        .O(\tap_WE_OBUF[3]_inst_i_2_n_0 ));
  IBUF \wdata_IBUF[0]_inst 
       (.I(wdata[0]),
        .O(tap_Di_OBUF[0]));
  IBUF \wdata_IBUF[10]_inst 
       (.I(wdata[10]),
        .O(tap_Di_OBUF[10]));
  IBUF \wdata_IBUF[11]_inst 
       (.I(wdata[11]),
        .O(tap_Di_OBUF[11]));
  IBUF \wdata_IBUF[12]_inst 
       (.I(wdata[12]),
        .O(tap_Di_OBUF[12]));
  IBUF \wdata_IBUF[13]_inst 
       (.I(wdata[13]),
        .O(tap_Di_OBUF[13]));
  IBUF \wdata_IBUF[14]_inst 
       (.I(wdata[14]),
        .O(tap_Di_OBUF[14]));
  IBUF \wdata_IBUF[15]_inst 
       (.I(wdata[15]),
        .O(tap_Di_OBUF[15]));
  IBUF \wdata_IBUF[16]_inst 
       (.I(wdata[16]),
        .O(tap_Di_OBUF[16]));
  IBUF \wdata_IBUF[17]_inst 
       (.I(wdata[17]),
        .O(tap_Di_OBUF[17]));
  IBUF \wdata_IBUF[18]_inst 
       (.I(wdata[18]),
        .O(tap_Di_OBUF[18]));
  IBUF \wdata_IBUF[19]_inst 
       (.I(wdata[19]),
        .O(tap_Di_OBUF[19]));
  IBUF \wdata_IBUF[1]_inst 
       (.I(wdata[1]),
        .O(tap_Di_OBUF[1]));
  IBUF \wdata_IBUF[20]_inst 
       (.I(wdata[20]),
        .O(tap_Di_OBUF[20]));
  IBUF \wdata_IBUF[21]_inst 
       (.I(wdata[21]),
        .O(tap_Di_OBUF[21]));
  IBUF \wdata_IBUF[22]_inst 
       (.I(wdata[22]),
        .O(tap_Di_OBUF[22]));
  IBUF \wdata_IBUF[23]_inst 
       (.I(wdata[23]),
        .O(tap_Di_OBUF[23]));
  IBUF \wdata_IBUF[24]_inst 
       (.I(wdata[24]),
        .O(tap_Di_OBUF[24]));
  IBUF \wdata_IBUF[25]_inst 
       (.I(wdata[25]),
        .O(tap_Di_OBUF[25]));
  IBUF \wdata_IBUF[26]_inst 
       (.I(wdata[26]),
        .O(tap_Di_OBUF[26]));
  IBUF \wdata_IBUF[27]_inst 
       (.I(wdata[27]),
        .O(tap_Di_OBUF[27]));
  IBUF \wdata_IBUF[28]_inst 
       (.I(wdata[28]),
        .O(tap_Di_OBUF[28]));
  IBUF \wdata_IBUF[29]_inst 
       (.I(wdata[29]),
        .O(tap_Di_OBUF[29]));
  IBUF \wdata_IBUF[2]_inst 
       (.I(wdata[2]),
        .O(tap_Di_OBUF[2]));
  IBUF \wdata_IBUF[30]_inst 
       (.I(wdata[30]),
        .O(tap_Di_OBUF[30]));
  IBUF \wdata_IBUF[31]_inst 
       (.I(wdata[31]),
        .O(tap_Di_OBUF[31]));
  IBUF \wdata_IBUF[3]_inst 
       (.I(wdata[3]),
        .O(tap_Di_OBUF[3]));
  IBUF \wdata_IBUF[4]_inst 
       (.I(wdata[4]),
        .O(tap_Di_OBUF[4]));
  IBUF \wdata_IBUF[5]_inst 
       (.I(wdata[5]),
        .O(tap_Di_OBUF[5]));
  IBUF \wdata_IBUF[6]_inst 
       (.I(wdata[6]),
        .O(tap_Di_OBUF[6]));
  IBUF \wdata_IBUF[7]_inst 
       (.I(wdata[7]),
        .O(tap_Di_OBUF[7]));
  IBUF \wdata_IBUF[8]_inst 
       (.I(wdata[8]),
        .O(tap_Di_OBUF[8]));
  IBUF \wdata_IBUF[9]_inst 
       (.I(wdata[9]),
        .O(tap_Di_OBUF[9]));
  OBUF wready_OBUF_inst
       (.I(wready_OBUF),
        .O(wready));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    wready_reg_i_1
       (.I0(ap_idle),
        .I1(wready_OBUF),
        .I2(wvalid_IBUF),
        .I3(awaddr_buffer_is_full),
        .O(wready_reg0));
  LUT1 #(
    .INIT(2'h1)) 
    wready_reg_i_2
       (.I0(axis_rst_n_IBUF),
        .O(wready_reg_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    wready_reg_reg
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(wready_reg0),
        .Q(wready_OBUF));
  IBUF wvalid_IBUF_inst
       (.I(wvalid),
        .O(wvalid_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \x_cnt[0]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg_n_0_[0] ),
        .O(\x_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[10]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[12]_i_2_n_6 ),
        .O(\x_cnt[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[11]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[12]_i_2_n_5 ),
        .O(\x_cnt[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[12]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[12]_i_2_n_4 ),
        .O(\x_cnt[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[13]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[16]_i_2_n_7 ),
        .O(\x_cnt[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[14]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[16]_i_2_n_6 ),
        .O(\x_cnt[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[15]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[16]_i_2_n_5 ),
        .O(\x_cnt[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[16]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[16]_i_2_n_4 ),
        .O(\x_cnt[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[17]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[20]_i_2_n_7 ),
        .O(\x_cnt[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[18]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[20]_i_2_n_6 ),
        .O(\x_cnt[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[19]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[20]_i_2_n_5 ),
        .O(\x_cnt[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[1]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[4]_i_2_n_7 ),
        .O(\x_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[20]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[20]_i_2_n_4 ),
        .O(\x_cnt[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[21]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[24]_i_2_n_7 ),
        .O(\x_cnt[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[22]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[24]_i_2_n_6 ),
        .O(\x_cnt[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[23]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[24]_i_2_n_5 ),
        .O(\x_cnt[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[24]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[24]_i_2_n_4 ),
        .O(\x_cnt[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[25]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[28]_i_2_n_7 ),
        .O(\x_cnt[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[26]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[28]_i_2_n_6 ),
        .O(\x_cnt[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[27]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[28]_i_2_n_5 ),
        .O(\x_cnt[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[28]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[28]_i_2_n_4 ),
        .O(\x_cnt[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[29]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[31]_i_5_n_7 ),
        .O(\x_cnt[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[2]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[4]_i_2_n_6 ),
        .O(\x_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[30]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[31]_i_5_n_6 ),
        .O(\x_cnt[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \x_cnt[31]_i_1 
       (.I0(ap_idle),
        .I1(x_cnt2),
        .I2(ap_done),
        .O(\x_cnt[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \x_cnt[31]_i_11 
       (.I0(\x_cnt_reg_n_0_[31] ),
        .I1(x_cnt4[31]),
        .I2(\x_cnt_reg_n_0_[30] ),
        .I3(x_cnt4[30]),
        .O(\x_cnt[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_12 
       (.I0(x_cnt4[29]),
        .I1(\x_cnt_reg_n_0_[29] ),
        .I2(x_cnt4[28]),
        .I3(\x_cnt_reg_n_0_[28] ),
        .I4(\x_cnt_reg_n_0_[27] ),
        .I5(x_cnt4[27]),
        .O(\x_cnt[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_13 
       (.I0(x_cnt4[26]),
        .I1(\x_cnt_reg_n_0_[26] ),
        .I2(x_cnt4[25]),
        .I3(\x_cnt_reg_n_0_[25] ),
        .I4(\x_cnt_reg_n_0_[24] ),
        .I5(x_cnt4[24]),
        .O(\x_cnt[31]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \x_cnt[31]_i_15 
       (.I0(\RAM_0x14_reg_n_0_[23] ),
        .I1(\RAM_0x14_reg_n_0_[22] ),
        .I2(\RAM_0x14_reg_n_0_[21] ),
        .O(\x_cnt[31]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \x_cnt[31]_i_16 
       (.I0(\RAM_0x14_reg_n_0_[20] ),
        .I1(\RAM_0x14_reg_n_0_[19] ),
        .I2(\RAM_0x14_reg_n_0_[18] ),
        .O(\x_cnt[31]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \x_cnt[31]_i_17 
       (.I0(\RAM_0x14_reg_n_0_[17] ),
        .I1(\RAM_0x14_reg_n_0_[16] ),
        .I2(\RAM_0x14_reg_n_0_[15] ),
        .O(\x_cnt[31]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \x_cnt[31]_i_18 
       (.I0(\RAM_0x14_reg_n_0_[14] ),
        .I1(\RAM_0x14_reg_n_0_[13] ),
        .I2(\RAM_0x14_reg_n_0_[12] ),
        .O(\x_cnt[31]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[31]_i_2 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[31]_i_5_n_5 ),
        .O(\x_cnt[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_20 
       (.I0(x_cnt4[23]),
        .I1(\x_cnt_reg_n_0_[23] ),
        .I2(x_cnt4[22]),
        .I3(\x_cnt_reg_n_0_[22] ),
        .I4(\x_cnt_reg_n_0_[21] ),
        .I5(x_cnt4[21]),
        .O(\x_cnt[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_21 
       (.I0(x_cnt4[20]),
        .I1(\x_cnt_reg_n_0_[20] ),
        .I2(x_cnt4[19]),
        .I3(\x_cnt_reg_n_0_[19] ),
        .I4(\x_cnt_reg_n_0_[18] ),
        .I5(x_cnt4[18]),
        .O(\x_cnt[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_22 
       (.I0(x_cnt4[17]),
        .I1(\x_cnt_reg_n_0_[17] ),
        .I2(x_cnt4[16]),
        .I3(\x_cnt_reg_n_0_[16] ),
        .I4(\x_cnt_reg_n_0_[15] ),
        .I5(x_cnt4[15]),
        .O(\x_cnt[31]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_23 
       (.I0(x_cnt4[14]),
        .I1(\x_cnt_reg_n_0_[14] ),
        .I2(x_cnt4[13]),
        .I3(\x_cnt_reg_n_0_[13] ),
        .I4(\x_cnt_reg_n_0_[12] ),
        .I5(x_cnt4[12]),
        .O(\x_cnt[31]_i_23_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \x_cnt[31]_i_27 
       (.I0(\RAM_0x14_reg_n_0_[11] ),
        .I1(\RAM_0x14_reg_n_0_[10] ),
        .I2(\RAM_0x14_reg_n_0_[9] ),
        .O(\x_cnt[31]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \x_cnt[31]_i_28 
       (.I0(\RAM_0x14_reg_n_0_[8] ),
        .I1(\RAM_0x14_reg_n_0_[7] ),
        .I2(\RAM_0x14_reg_n_0_[6] ),
        .O(\x_cnt[31]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_29 
       (.I0(\RAM_0x14_reg_n_0_[5] ),
        .I1(k[5]),
        .I2(\RAM_0x14_reg_n_0_[4] ),
        .I3(k[4]),
        .I4(k[3]),
        .I5(\RAM_0x14_reg_n_0_[3] ),
        .O(\x_cnt[31]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_30 
       (.I0(\RAM_0x14_reg_n_0_[2] ),
        .I1(k[2]),
        .I2(\RAM_0x14_reg_n_0_[1] ),
        .I3(k[1]),
        .I4(k[0]),
        .I5(\RAM_0x14_reg_n_0_[0] ),
        .O(\x_cnt[31]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_31 
       (.I0(x_cnt4[11]),
        .I1(\x_cnt_reg_n_0_[11] ),
        .I2(x_cnt4[10]),
        .I3(\x_cnt_reg_n_0_[10] ),
        .I4(\x_cnt_reg_n_0_[9] ),
        .I5(x_cnt4[9]),
        .O(\x_cnt[31]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_32 
       (.I0(x_cnt4[8]),
        .I1(\x_cnt_reg_n_0_[8] ),
        .I2(x_cnt4[7]),
        .I3(\x_cnt_reg_n_0_[7] ),
        .I4(\x_cnt_reg_n_0_[6] ),
        .I5(x_cnt4[6]),
        .O(\x_cnt[31]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \x_cnt[31]_i_33 
       (.I0(x_cnt4[5]),
        .I1(\x_cnt_reg_n_0_[5] ),
        .I2(x_cnt4[4]),
        .I3(\x_cnt_reg_n_0_[4] ),
        .I4(\x_cnt_reg_n_0_[3] ),
        .I5(x_cnt4[3]),
        .O(\x_cnt[31]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    \x_cnt[31]_i_34 
       (.I0(x_cnt4[2]),
        .I1(\x_cnt_reg_n_0_[2] ),
        .I2(x_cnt4[1]),
        .I3(\x_cnt_reg_n_0_[1] ),
        .I4(\x_cnt_reg_n_0_[0] ),
        .I5(\RAM_0x14_reg_n_0_[0] ),
        .O(\x_cnt[31]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_38 
       (.I0(\RAM_0x14_reg_n_0_[31] ),
        .O(\x_cnt[31]_i_38_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_39 
       (.I0(\RAM_0x14_reg_n_0_[30] ),
        .O(\x_cnt[31]_i_39_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_40 
       (.I0(\RAM_0x14_reg_n_0_[29] ),
        .O(\x_cnt[31]_i_40_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_41 
       (.I0(\RAM_0x14_reg_n_0_[28] ),
        .O(\x_cnt[31]_i_41_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_42 
       (.I0(\RAM_0x14_reg_n_0_[27] ),
        .O(\x_cnt[31]_i_42_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_43 
       (.I0(\RAM_0x14_reg_n_0_[26] ),
        .O(\x_cnt[31]_i_43_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_44 
       (.I0(\RAM_0x14_reg_n_0_[25] ),
        .O(\x_cnt[31]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_45 
       (.I0(\RAM_0x14_reg_n_0_[24] ),
        .O(\x_cnt[31]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_46 
       (.I0(\RAM_0x14_reg_n_0_[23] ),
        .O(\x_cnt[31]_i_46_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_47 
       (.I0(\RAM_0x14_reg_n_0_[22] ),
        .O(\x_cnt[31]_i_47_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_48 
       (.I0(\RAM_0x14_reg_n_0_[21] ),
        .O(\x_cnt[31]_i_48_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_51 
       (.I0(\RAM_0x14_reg_n_0_[20] ),
        .O(\x_cnt[31]_i_51_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_52 
       (.I0(\RAM_0x14_reg_n_0_[19] ),
        .O(\x_cnt[31]_i_52_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_53 
       (.I0(\RAM_0x14_reg_n_0_[18] ),
        .O(\x_cnt[31]_i_53_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_54 
       (.I0(\RAM_0x14_reg_n_0_[17] ),
        .O(\x_cnt[31]_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_55 
       (.I0(\RAM_0x14_reg_n_0_[16] ),
        .O(\x_cnt[31]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_56 
       (.I0(\RAM_0x14_reg_n_0_[15] ),
        .O(\x_cnt[31]_i_56_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_57 
       (.I0(\RAM_0x14_reg_n_0_[14] ),
        .O(\x_cnt[31]_i_57_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_58 
       (.I0(\RAM_0x14_reg_n_0_[13] ),
        .O(\x_cnt[31]_i_58_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_59 
       (.I0(\RAM_0x14_reg_n_0_[12] ),
        .O(\x_cnt[31]_i_59_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_60 
       (.I0(\RAM_0x14_reg_n_0_[11] ),
        .O(\x_cnt[31]_i_60_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_61 
       (.I0(\RAM_0x14_reg_n_0_[10] ),
        .O(\x_cnt[31]_i_61_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_62 
       (.I0(\RAM_0x14_reg_n_0_[9] ),
        .O(\x_cnt[31]_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_63 
       (.I0(\RAM_0x14_reg_n_0_[8] ),
        .O(\x_cnt[31]_i_63_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_64 
       (.I0(\RAM_0x14_reg_n_0_[7] ),
        .O(\x_cnt[31]_i_64_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_65 
       (.I0(\RAM_0x14_reg_n_0_[6] ),
        .O(\x_cnt[31]_i_65_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_66 
       (.I0(\RAM_0x14_reg_n_0_[5] ),
        .O(\x_cnt[31]_i_66_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_67 
       (.I0(\RAM_0x14_reg_n_0_[4] ),
        .O(\x_cnt[31]_i_67_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_68 
       (.I0(\RAM_0x14_reg_n_0_[3] ),
        .O(\x_cnt[31]_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_69 
       (.I0(\RAM_0x14_reg_n_0_[2] ),
        .O(\x_cnt[31]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \x_cnt[31]_i_7 
       (.I0(\RAM_0x14_reg_n_0_[31] ),
        .I1(\RAM_0x14_reg_n_0_[30] ),
        .O(\x_cnt[31]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \x_cnt[31]_i_70 
       (.I0(\RAM_0x14_reg_n_0_[1] ),
        .O(\x_cnt[31]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \x_cnt[31]_i_8 
       (.I0(\RAM_0x14_reg_n_0_[29] ),
        .I1(\RAM_0x14_reg_n_0_[28] ),
        .I2(\RAM_0x14_reg_n_0_[27] ),
        .O(\x_cnt[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \x_cnt[31]_i_9 
       (.I0(\RAM_0x14_reg_n_0_[26] ),
        .I1(\RAM_0x14_reg_n_0_[25] ),
        .I2(\RAM_0x14_reg_n_0_[24] ),
        .O(\x_cnt[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[3]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[4]_i_2_n_5 ),
        .O(\x_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[4]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[4]_i_2_n_4 ),
        .O(\x_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[5]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[8]_i_2_n_7 ),
        .O(\x_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[6]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[8]_i_2_n_6 ),
        .O(\x_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[7]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[8]_i_2_n_5 ),
        .O(\x_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[8]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[8]_i_2_n_4 ),
        .O(\x_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \x_cnt[9]_i_1 
       (.I0(ap_done),
        .I1(x_cnt3),
        .I2(\x_cnt_reg[12]_i_2_n_7 ),
        .O(\x_cnt[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[0]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[10]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[11]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[12] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[12]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[12] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[12]_i_2 
       (.CI(\x_cnt_reg[8]_i_2_n_0 ),
        .CO({\x_cnt_reg[12]_i_2_n_0 ,\x_cnt_reg[12]_i_2_n_1 ,\x_cnt_reg[12]_i_2_n_2 ,\x_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_cnt_reg[12]_i_2_n_4 ,\x_cnt_reg[12]_i_2_n_5 ,\x_cnt_reg[12]_i_2_n_6 ,\x_cnt_reg[12]_i_2_n_7 }),
        .S({\x_cnt_reg_n_0_[12] ,\x_cnt_reg_n_0_[11] ,\x_cnt_reg_n_0_[10] ,\x_cnt_reg_n_0_[9] }));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[13] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[13]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[14] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[14]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[15] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[15]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[16] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[16]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[16] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[16]_i_2 
       (.CI(\x_cnt_reg[12]_i_2_n_0 ),
        .CO({\x_cnt_reg[16]_i_2_n_0 ,\x_cnt_reg[16]_i_2_n_1 ,\x_cnt_reg[16]_i_2_n_2 ,\x_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_cnt_reg[16]_i_2_n_4 ,\x_cnt_reg[16]_i_2_n_5 ,\x_cnt_reg[16]_i_2_n_6 ,\x_cnt_reg[16]_i_2_n_7 }),
        .S({\x_cnt_reg_n_0_[16] ,\x_cnt_reg_n_0_[15] ,\x_cnt_reg_n_0_[14] ,\x_cnt_reg_n_0_[13] }));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[17] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[17]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[18] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[18]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[19] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[19]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[1]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[20] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[20]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[20] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[20]_i_2 
       (.CI(\x_cnt_reg[16]_i_2_n_0 ),
        .CO({\x_cnt_reg[20]_i_2_n_0 ,\x_cnt_reg[20]_i_2_n_1 ,\x_cnt_reg[20]_i_2_n_2 ,\x_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_cnt_reg[20]_i_2_n_4 ,\x_cnt_reg[20]_i_2_n_5 ,\x_cnt_reg[20]_i_2_n_6 ,\x_cnt_reg[20]_i_2_n_7 }),
        .S({\x_cnt_reg_n_0_[20] ,\x_cnt_reg_n_0_[19] ,\x_cnt_reg_n_0_[18] ,\x_cnt_reg_n_0_[17] }));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[21] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[21]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[22] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[22]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[23] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[23]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[24] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[24]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[24] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[24]_i_2 
       (.CI(\x_cnt_reg[20]_i_2_n_0 ),
        .CO({\x_cnt_reg[24]_i_2_n_0 ,\x_cnt_reg[24]_i_2_n_1 ,\x_cnt_reg[24]_i_2_n_2 ,\x_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_cnt_reg[24]_i_2_n_4 ,\x_cnt_reg[24]_i_2_n_5 ,\x_cnt_reg[24]_i_2_n_6 ,\x_cnt_reg[24]_i_2_n_7 }),
        .S({\x_cnt_reg_n_0_[24] ,\x_cnt_reg_n_0_[23] ,\x_cnt_reg_n_0_[22] ,\x_cnt_reg_n_0_[21] }));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[25] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[25]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[26] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[26]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[27] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[27]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[28] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[28]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[28] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[28]_i_2 
       (.CI(\x_cnt_reg[24]_i_2_n_0 ),
        .CO({\x_cnt_reg[28]_i_2_n_0 ,\x_cnt_reg[28]_i_2_n_1 ,\x_cnt_reg[28]_i_2_n_2 ,\x_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_cnt_reg[28]_i_2_n_4 ,\x_cnt_reg[28]_i_2_n_5 ,\x_cnt_reg[28]_i_2_n_6 ,\x_cnt_reg[28]_i_2_n_7 }),
        .S({\x_cnt_reg_n_0_[28] ,\x_cnt_reg_n_0_[27] ,\x_cnt_reg_n_0_[26] ,\x_cnt_reg_n_0_[25] }));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[29] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[29]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[2]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[30] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[30]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[31] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[31]_i_2_n_0 ),
        .Q(\x_cnt_reg_n_0_[31] ));
  CARRY4 \x_cnt_reg[31]_i_10 
       (.CI(\x_cnt_reg[31]_i_19_n_0 ),
        .CO({\x_cnt_reg[31]_i_10_n_0 ,\x_cnt_reg[31]_i_10_n_1 ,\x_cnt_reg[31]_i_10_n_2 ,\x_cnt_reg[31]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_x_cnt_reg[31]_i_10_O_UNCONNECTED [3:0]),
        .S({\x_cnt[31]_i_20_n_0 ,\x_cnt[31]_i_21_n_0 ,\x_cnt[31]_i_22_n_0 ,\x_cnt[31]_i_23_n_0 }));
  CARRY4 \x_cnt_reg[31]_i_14 
       (.CI(1'b0),
        .CO({\x_cnt_reg[31]_i_14_n_0 ,\x_cnt_reg[31]_i_14_n_1 ,\x_cnt_reg[31]_i_14_n_2 ,\x_cnt_reg[31]_i_14_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_x_cnt_reg[31]_i_14_O_UNCONNECTED [3:0]),
        .S({\x_cnt[31]_i_27_n_0 ,\x_cnt[31]_i_28_n_0 ,\x_cnt[31]_i_29_n_0 ,\x_cnt[31]_i_30_n_0 }));
  CARRY4 \x_cnt_reg[31]_i_19 
       (.CI(1'b0),
        .CO({\x_cnt_reg[31]_i_19_n_0 ,\x_cnt_reg[31]_i_19_n_1 ,\x_cnt_reg[31]_i_19_n_2 ,\x_cnt_reg[31]_i_19_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_x_cnt_reg[31]_i_19_O_UNCONNECTED [3:0]),
        .S({\x_cnt[31]_i_31_n_0 ,\x_cnt[31]_i_32_n_0 ,\x_cnt[31]_i_33_n_0 ,\x_cnt[31]_i_34_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[31]_i_24 
       (.CI(\x_cnt_reg[31]_i_25_n_0 ),
        .CO({\NLW_x_cnt_reg[31]_i_24_CO_UNCONNECTED [3:2],\x_cnt_reg[31]_i_24_n_2 ,\x_cnt_reg[31]_i_24_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\RAM_0x14_reg_n_0_[30] ,\RAM_0x14_reg_n_0_[29] }),
        .O({\NLW_x_cnt_reg[31]_i_24_O_UNCONNECTED [3],x_cnt4[31:29]}),
        .S({1'b0,\x_cnt[31]_i_38_n_0 ,\x_cnt[31]_i_39_n_0 ,\x_cnt[31]_i_40_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[31]_i_25 
       (.CI(\x_cnt_reg[31]_i_26_n_0 ),
        .CO({\x_cnt_reg[31]_i_25_n_0 ,\x_cnt_reg[31]_i_25_n_1 ,\x_cnt_reg[31]_i_25_n_2 ,\x_cnt_reg[31]_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\RAM_0x14_reg_n_0_[28] ,\RAM_0x14_reg_n_0_[27] ,\RAM_0x14_reg_n_0_[26] ,\RAM_0x14_reg_n_0_[25] }),
        .O(x_cnt4[28:25]),
        .S({\x_cnt[31]_i_41_n_0 ,\x_cnt[31]_i_42_n_0 ,\x_cnt[31]_i_43_n_0 ,\x_cnt[31]_i_44_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[31]_i_26 
       (.CI(\x_cnt_reg[31]_i_35_n_0 ),
        .CO({\x_cnt_reg[31]_i_26_n_0 ,\x_cnt_reg[31]_i_26_n_1 ,\x_cnt_reg[31]_i_26_n_2 ,\x_cnt_reg[31]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({\RAM_0x14_reg_n_0_[24] ,\RAM_0x14_reg_n_0_[23] ,\RAM_0x14_reg_n_0_[22] ,\RAM_0x14_reg_n_0_[21] }),
        .O(x_cnt4[24:21]),
        .S({\x_cnt[31]_i_45_n_0 ,\x_cnt[31]_i_46_n_0 ,\x_cnt[31]_i_47_n_0 ,\x_cnt[31]_i_48_n_0 }));
  CARRY4 \x_cnt_reg[31]_i_3 
       (.CI(\x_cnt_reg[31]_i_6_n_0 ),
        .CO({\NLW_x_cnt_reg[31]_i_3_CO_UNCONNECTED [3],x_cnt2,\x_cnt_reg[31]_i_3_n_2 ,\x_cnt_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_x_cnt_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,\x_cnt[31]_i_7_n_0 ,\x_cnt[31]_i_8_n_0 ,\x_cnt[31]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[31]_i_35 
       (.CI(\x_cnt_reg[31]_i_36_n_0 ),
        .CO({\x_cnt_reg[31]_i_35_n_0 ,\x_cnt_reg[31]_i_35_n_1 ,\x_cnt_reg[31]_i_35_n_2 ,\x_cnt_reg[31]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({\RAM_0x14_reg_n_0_[20] ,\RAM_0x14_reg_n_0_[19] ,\RAM_0x14_reg_n_0_[18] ,\RAM_0x14_reg_n_0_[17] }),
        .O(x_cnt4[20:17]),
        .S({\x_cnt[31]_i_51_n_0 ,\x_cnt[31]_i_52_n_0 ,\x_cnt[31]_i_53_n_0 ,\x_cnt[31]_i_54_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[31]_i_36 
       (.CI(\x_cnt_reg[31]_i_37_n_0 ),
        .CO({\x_cnt_reg[31]_i_36_n_0 ,\x_cnt_reg[31]_i_36_n_1 ,\x_cnt_reg[31]_i_36_n_2 ,\x_cnt_reg[31]_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({\RAM_0x14_reg_n_0_[16] ,\RAM_0x14_reg_n_0_[15] ,\RAM_0x14_reg_n_0_[14] ,\RAM_0x14_reg_n_0_[13] }),
        .O(x_cnt4[16:13]),
        .S({\x_cnt[31]_i_55_n_0 ,\x_cnt[31]_i_56_n_0 ,\x_cnt[31]_i_57_n_0 ,\x_cnt[31]_i_58_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[31]_i_37 
       (.CI(\x_cnt_reg[31]_i_49_n_0 ),
        .CO({\x_cnt_reg[31]_i_37_n_0 ,\x_cnt_reg[31]_i_37_n_1 ,\x_cnt_reg[31]_i_37_n_2 ,\x_cnt_reg[31]_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({\RAM_0x14_reg_n_0_[12] ,\RAM_0x14_reg_n_0_[11] ,\RAM_0x14_reg_n_0_[10] ,\RAM_0x14_reg_n_0_[9] }),
        .O(x_cnt4[12:9]),
        .S({\x_cnt[31]_i_59_n_0 ,\x_cnt[31]_i_60_n_0 ,\x_cnt[31]_i_61_n_0 ,\x_cnt[31]_i_62_n_0 }));
  CARRY4 \x_cnt_reg[31]_i_4 
       (.CI(\x_cnt_reg[31]_i_10_n_0 ),
        .CO({\NLW_x_cnt_reg[31]_i_4_CO_UNCONNECTED [3],x_cnt3,\x_cnt_reg[31]_i_4_n_2 ,\x_cnt_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_x_cnt_reg[31]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\x_cnt[31]_i_11_n_0 ,\x_cnt[31]_i_12_n_0 ,\x_cnt[31]_i_13_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[31]_i_49 
       (.CI(\x_cnt_reg[31]_i_50_n_0 ),
        .CO({\x_cnt_reg[31]_i_49_n_0 ,\x_cnt_reg[31]_i_49_n_1 ,\x_cnt_reg[31]_i_49_n_2 ,\x_cnt_reg[31]_i_49_n_3 }),
        .CYINIT(1'b0),
        .DI({\RAM_0x14_reg_n_0_[8] ,\RAM_0x14_reg_n_0_[7] ,\RAM_0x14_reg_n_0_[6] ,\RAM_0x14_reg_n_0_[5] }),
        .O(x_cnt4[8:5]),
        .S({\x_cnt[31]_i_63_n_0 ,\x_cnt[31]_i_64_n_0 ,\x_cnt[31]_i_65_n_0 ,\x_cnt[31]_i_66_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[31]_i_5 
       (.CI(\x_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_x_cnt_reg[31]_i_5_CO_UNCONNECTED [3:2],\x_cnt_reg[31]_i_5_n_2 ,\x_cnt_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_x_cnt_reg[31]_i_5_O_UNCONNECTED [3],\x_cnt_reg[31]_i_5_n_5 ,\x_cnt_reg[31]_i_5_n_6 ,\x_cnt_reg[31]_i_5_n_7 }),
        .S({1'b0,\x_cnt_reg_n_0_[31] ,\x_cnt_reg_n_0_[30] ,\x_cnt_reg_n_0_[29] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[31]_i_50 
       (.CI(1'b0),
        .CO({\x_cnt_reg[31]_i_50_n_0 ,\x_cnt_reg[31]_i_50_n_1 ,\x_cnt_reg[31]_i_50_n_2 ,\x_cnt_reg[31]_i_50_n_3 }),
        .CYINIT(\RAM_0x14_reg_n_0_[0] ),
        .DI({\RAM_0x14_reg_n_0_[4] ,\RAM_0x14_reg_n_0_[3] ,\RAM_0x14_reg_n_0_[2] ,\RAM_0x14_reg_n_0_[1] }),
        .O({x_cnt4[4:2],\NLW_x_cnt_reg[31]_i_50_O_UNCONNECTED [0]}),
        .S({\x_cnt[31]_i_67_n_0 ,\x_cnt[31]_i_68_n_0 ,\x_cnt[31]_i_69_n_0 ,\x_cnt[31]_i_70_n_0 }));
  CARRY4 \x_cnt_reg[31]_i_6 
       (.CI(\x_cnt_reg[31]_i_14_n_0 ),
        .CO({\x_cnt_reg[31]_i_6_n_0 ,\x_cnt_reg[31]_i_6_n_1 ,\x_cnt_reg[31]_i_6_n_2 ,\x_cnt_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_x_cnt_reg[31]_i_6_O_UNCONNECTED [3:0]),
        .S({\x_cnt[31]_i_15_n_0 ,\x_cnt[31]_i_16_n_0 ,\x_cnt[31]_i_17_n_0 ,\x_cnt[31]_i_18_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[3]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[4]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\x_cnt_reg[4]_i_2_n_0 ,\x_cnt_reg[4]_i_2_n_1 ,\x_cnt_reg[4]_i_2_n_2 ,\x_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\x_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_cnt_reg[4]_i_2_n_4 ,\x_cnt_reg[4]_i_2_n_5 ,\x_cnt_reg[4]_i_2_n_6 ,\x_cnt_reg[4]_i_2_n_7 }),
        .S({\x_cnt_reg_n_0_[4] ,\x_cnt_reg_n_0_[3] ,\x_cnt_reg_n_0_[2] ,\x_cnt_reg_n_0_[1] }));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[5]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[6]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[7]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[8]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \x_cnt_reg[8]_i_2 
       (.CI(\x_cnt_reg[4]_i_2_n_0 ),
        .CO({\x_cnt_reg[8]_i_2_n_0 ,\x_cnt_reg[8]_i_2_n_1 ,\x_cnt_reg[8]_i_2_n_2 ,\x_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\x_cnt_reg[8]_i_2_n_4 ,\x_cnt_reg[8]_i_2_n_5 ,\x_cnt_reg[8]_i_2_n_6 ,\x_cnt_reg[8]_i_2_n_7 }),
        .S({\x_cnt_reg_n_0_[8] ,\x_cnt_reg_n_0_[7] ,\x_cnt_reg_n_0_[6] ,\x_cnt_reg_n_0_[5] }));
  FDCE #(
    .INIT(1'b0)) 
    \x_cnt_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(\x_cnt[31]_i_1_n_0 ),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_cnt[9]_i_1_n_0 ),
        .Q(\x_cnt_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[0]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[0]),
        .O(\x_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[10]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[10]),
        .O(\x_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[11]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[11]),
        .O(\x_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[12]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[12]),
        .O(\x_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[13]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[13]),
        .O(\x_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[14]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[14]),
        .O(\x_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[15]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[15]),
        .O(\x_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[16]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[16]),
        .O(\x_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[17]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[17]),
        .O(\x_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[18]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[18]),
        .O(\x_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[19]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[19]),
        .O(\x_reg[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[1]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[1]),
        .O(\x_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[20]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[20]),
        .O(\x_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[21]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[21]),
        .O(\x_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[22]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[22]),
        .O(\x_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[23]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[23]),
        .O(\x_reg[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[24]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[24]),
        .O(\x_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[25]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[25]),
        .O(\x_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[26]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[26]),
        .O(\x_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[27]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[27]),
        .O(\x_reg[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[28]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[28]),
        .O(\x_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[29]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[29]),
        .O(\x_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[2]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[2]),
        .O(\x_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[30]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[30]),
        .O(\x_reg[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[31]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[31]),
        .O(\x_reg[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \x_reg[31]_i_2 
       (.I0(\x_reg[31]_i_3_n_0 ),
        .I1(k[5]),
        .I2(k[3]),
        .I3(k[1]),
        .I4(k[2]),
        .I5(k[4]),
        .O(\x_reg[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \x_reg[31]_i_3 
       (.I0(\data_A_OBUF[11]_inst_i_2_n_0 ),
        .I1(ap_idle),
        .O(\x_reg[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[3]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[3]),
        .O(\x_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[4]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[4]),
        .O(\x_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[5]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[5]),
        .O(\x_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[6]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[6]),
        .O(\x_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[7]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[7]),
        .O(\x_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[8]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[8]),
        .O(\x_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \x_reg[9]_i_1 
       (.I0(\x_reg[31]_i_2_n_0 ),
        .I1(data_Do_IBUF[9]),
        .O(\x_reg[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[0]_i_1_n_0 ),
        .Q(x_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[10]_i_1_n_0 ),
        .Q(x_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[11]_i_1_n_0 ),
        .Q(x_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[12] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[12]_i_1_n_0 ),
        .Q(x_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[13] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[13]_i_1_n_0 ),
        .Q(x_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[14] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[14]_i_1_n_0 ),
        .Q(x_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[15] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[15]_i_1_n_0 ),
        .Q(x_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[16] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[16]_i_1_n_0 ),
        .Q(x_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[17] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[17]_i_1_n_0 ),
        .Q(x_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[18] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[18]_i_1_n_0 ),
        .Q(x_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[19] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[19]_i_1_n_0 ),
        .Q(x_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[1]_i_1_n_0 ),
        .Q(x_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[20] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[20]_i_1_n_0 ),
        .Q(x_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[21] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[21]_i_1_n_0 ),
        .Q(x_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[22] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[22]_i_1_n_0 ),
        .Q(x_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[23] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[23]_i_1_n_0 ),
        .Q(x_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[24] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[24]_i_1_n_0 ),
        .Q(x_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[25] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[25]_i_1_n_0 ),
        .Q(x_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[26] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[26]_i_1_n_0 ),
        .Q(x_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[27] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[27]_i_1_n_0 ),
        .Q(x_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[28] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[28]_i_1_n_0 ),
        .Q(x_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[29] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[29]_i_1_n_0 ),
        .Q(x_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[2]_i_1_n_0 ),
        .Q(x_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[30] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[30]_i_1_n_0 ),
        .Q(x_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[31] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[31]_i_1_n_0 ),
        .Q(x_reg[31]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[3]_i_1_n_0 ),
        .Q(x_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[4]_i_1_n_0 ),
        .Q(x_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[5]_i_1_n_0 ),
        .Q(x_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[6]_i_1_n_0 ),
        .Q(x_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[7]_i_1_n_0 ),
        .Q(x_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[8]_i_1_n_0 ),
        .Q(x_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \x_reg_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\x_reg[9]_i_1_n_0 ),
        .Q(x_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[0]_i_1 
       (.I0(m_tmp_reg[0]),
        .I1(y_tmp_reg2[0]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[10]_i_1 
       (.I0(m_tmp_reg[10]),
        .I1(y_tmp_reg2[10]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[11]_i_1 
       (.I0(m_tmp_reg[11]),
        .I1(y_tmp_reg2[11]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[11]_i_3 
       (.I0(m_tmp_reg[11]),
        .I1(y_tmp_reg[11]),
        .O(\y_tmp_reg[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[11]_i_4 
       (.I0(m_tmp_reg[10]),
        .I1(y_tmp_reg[10]),
        .O(\y_tmp_reg[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[11]_i_5 
       (.I0(m_tmp_reg[9]),
        .I1(y_tmp_reg[9]),
        .O(\y_tmp_reg[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[11]_i_6 
       (.I0(m_tmp_reg[8]),
        .I1(y_tmp_reg[8]),
        .O(\y_tmp_reg[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[12]_i_1 
       (.I0(m_tmp_reg[12]),
        .I1(y_tmp_reg2[12]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[13]_i_1 
       (.I0(m_tmp_reg[13]),
        .I1(y_tmp_reg2[13]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[14]_i_1 
       (.I0(m_tmp_reg[14]),
        .I1(y_tmp_reg2[14]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[15]_i_1 
       (.I0(m_tmp_reg[15]),
        .I1(y_tmp_reg2[15]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[15]_i_3 
       (.I0(m_tmp_reg[15]),
        .I1(y_tmp_reg[15]),
        .O(\y_tmp_reg[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[15]_i_4 
       (.I0(m_tmp_reg[14]),
        .I1(y_tmp_reg[14]),
        .O(\y_tmp_reg[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[15]_i_5 
       (.I0(m_tmp_reg[13]),
        .I1(y_tmp_reg[13]),
        .O(\y_tmp_reg[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[15]_i_6 
       (.I0(m_tmp_reg[12]),
        .I1(y_tmp_reg[12]),
        .O(\y_tmp_reg[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[16]_i_1 
       (.I0(m_tmp_reg[16]),
        .I1(y_tmp_reg2[16]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[17]_i_1 
       (.I0(m_tmp_reg[17]),
        .I1(y_tmp_reg2[17]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[18]_i_1 
       (.I0(m_tmp_reg[18]),
        .I1(y_tmp_reg2[18]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[19]_i_1 
       (.I0(m_tmp_reg[19]),
        .I1(y_tmp_reg2[19]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[19]_i_3 
       (.I0(m_tmp_reg[19]),
        .I1(y_tmp_reg[19]),
        .O(\y_tmp_reg[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[19]_i_4 
       (.I0(m_tmp_reg[18]),
        .I1(y_tmp_reg[18]),
        .O(\y_tmp_reg[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[19]_i_5 
       (.I0(m_tmp_reg[17]),
        .I1(y_tmp_reg[17]),
        .O(\y_tmp_reg[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[19]_i_6 
       (.I0(m_tmp_reg[16]),
        .I1(y_tmp_reg[16]),
        .O(\y_tmp_reg[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[1]_i_1 
       (.I0(m_tmp_reg[1]),
        .I1(y_tmp_reg2[1]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[20]_i_1 
       (.I0(m_tmp_reg[20]),
        .I1(y_tmp_reg2[20]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[21]_i_1 
       (.I0(m_tmp_reg[21]),
        .I1(y_tmp_reg2[21]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[22]_i_1 
       (.I0(m_tmp_reg[22]),
        .I1(y_tmp_reg2[22]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[23]_i_1 
       (.I0(m_tmp_reg[23]),
        .I1(y_tmp_reg2[23]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[23]_i_3 
       (.I0(m_tmp_reg[23]),
        .I1(y_tmp_reg[23]),
        .O(\y_tmp_reg[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[23]_i_4 
       (.I0(m_tmp_reg[22]),
        .I1(y_tmp_reg[22]),
        .O(\y_tmp_reg[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[23]_i_5 
       (.I0(m_tmp_reg[21]),
        .I1(y_tmp_reg[21]),
        .O(\y_tmp_reg[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[23]_i_6 
       (.I0(m_tmp_reg[20]),
        .I1(y_tmp_reg[20]),
        .O(\y_tmp_reg[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[24]_i_1 
       (.I0(m_tmp_reg[24]),
        .I1(y_tmp_reg2[24]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[25]_i_1 
       (.I0(m_tmp_reg[25]),
        .I1(y_tmp_reg2[25]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[26]_i_1 
       (.I0(m_tmp_reg[26]),
        .I1(y_tmp_reg2[26]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[27]_i_1 
       (.I0(m_tmp_reg[27]),
        .I1(y_tmp_reg2[27]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[27]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[27]_i_3 
       (.I0(m_tmp_reg[27]),
        .I1(y_tmp_reg[27]),
        .O(\y_tmp_reg[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[27]_i_4 
       (.I0(m_tmp_reg[26]),
        .I1(y_tmp_reg[26]),
        .O(\y_tmp_reg[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[27]_i_5 
       (.I0(m_tmp_reg[25]),
        .I1(y_tmp_reg[25]),
        .O(\y_tmp_reg[27]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[27]_i_6 
       (.I0(m_tmp_reg[24]),
        .I1(y_tmp_reg[24]),
        .O(\y_tmp_reg[27]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[28]_i_1 
       (.I0(m_tmp_reg[28]),
        .I1(y_tmp_reg2[28]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[29]_i_1 
       (.I0(m_tmp_reg[29]),
        .I1(y_tmp_reg2[29]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[2]_i_1 
       (.I0(m_tmp_reg[2]),
        .I1(y_tmp_reg2[2]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[30]_i_1 
       (.I0(m_tmp_reg[30]),
        .I1(y_tmp_reg2[30]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[31]_i_1 
       (.I0(m_tmp_reg[31]),
        .I1(y_tmp_reg2[31]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[31]_i_3 
       (.I0(m_tmp_reg[31]),
        .I1(y_tmp_reg[31]),
        .O(\y_tmp_reg[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[31]_i_4 
       (.I0(m_tmp_reg[30]),
        .I1(y_tmp_reg[30]),
        .O(\y_tmp_reg[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[31]_i_5 
       (.I0(m_tmp_reg[29]),
        .I1(y_tmp_reg[29]),
        .O(\y_tmp_reg[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[31]_i_6 
       (.I0(m_tmp_reg[28]),
        .I1(y_tmp_reg[28]),
        .O(\y_tmp_reg[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[3]_i_1 
       (.I0(m_tmp_reg[3]),
        .I1(y_tmp_reg2[3]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[3]_i_3 
       (.I0(m_tmp_reg[3]),
        .I1(y_tmp_reg[3]),
        .O(\y_tmp_reg[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[3]_i_4 
       (.I0(m_tmp_reg[2]),
        .I1(y_tmp_reg[2]),
        .O(\y_tmp_reg[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[3]_i_5 
       (.I0(m_tmp_reg[1]),
        .I1(y_tmp_reg[1]),
        .O(\y_tmp_reg[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[3]_i_6 
       (.I0(m_tmp_reg[0]),
        .I1(y_tmp_reg[0]),
        .O(\y_tmp_reg[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[4]_i_1 
       (.I0(m_tmp_reg[4]),
        .I1(y_tmp_reg2[4]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[5]_i_1 
       (.I0(m_tmp_reg[5]),
        .I1(y_tmp_reg2[5]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[6]_i_1 
       (.I0(m_tmp_reg[6]),
        .I1(y_tmp_reg2[6]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[7]_i_1 
       (.I0(m_tmp_reg[7]),
        .I1(y_tmp_reg2[7]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[7]_i_3 
       (.I0(m_tmp_reg[7]),
        .I1(y_tmp_reg[7]),
        .O(\y_tmp_reg[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[7]_i_4 
       (.I0(m_tmp_reg[6]),
        .I1(y_tmp_reg[6]),
        .O(\y_tmp_reg[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[7]_i_5 
       (.I0(m_tmp_reg[5]),
        .I1(y_tmp_reg[5]),
        .O(\y_tmp_reg[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \y_tmp_reg[7]_i_6 
       (.I0(m_tmp_reg[4]),
        .I1(y_tmp_reg[4]),
        .O(\y_tmp_reg[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[8]_i_1 
       (.I0(m_tmp_reg[8]),
        .I1(y_tmp_reg2[8]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0ACA)) 
    \y_tmp_reg[9]_i_1 
       (.I0(m_tmp_reg[9]),
        .I1(y_tmp_reg2[9]),
        .I2(p_2_in),
        .I3(ap_idle),
        .O(\y_tmp_reg[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[0] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[0]_i_1_n_0 ),
        .Q(y_tmp_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[10] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[10]_i_1_n_0 ),
        .Q(y_tmp_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[11] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[11]_i_1_n_0 ),
        .Q(y_tmp_reg[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_tmp_reg_reg[11]_i_2 
       (.CI(\y_tmp_reg_reg[7]_i_2_n_0 ),
        .CO({\y_tmp_reg_reg[11]_i_2_n_0 ,\y_tmp_reg_reg[11]_i_2_n_1 ,\y_tmp_reg_reg[11]_i_2_n_2 ,\y_tmp_reg_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_tmp_reg[11:8]),
        .O(y_tmp_reg2[11:8]),
        .S({\y_tmp_reg[11]_i_3_n_0 ,\y_tmp_reg[11]_i_4_n_0 ,\y_tmp_reg[11]_i_5_n_0 ,\y_tmp_reg[11]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[12] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[12]_i_1_n_0 ),
        .Q(y_tmp_reg[12]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[13] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[13]_i_1_n_0 ),
        .Q(y_tmp_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[14] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[14]_i_1_n_0 ),
        .Q(y_tmp_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[15] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[15]_i_1_n_0 ),
        .Q(y_tmp_reg[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_tmp_reg_reg[15]_i_2 
       (.CI(\y_tmp_reg_reg[11]_i_2_n_0 ),
        .CO({\y_tmp_reg_reg[15]_i_2_n_0 ,\y_tmp_reg_reg[15]_i_2_n_1 ,\y_tmp_reg_reg[15]_i_2_n_2 ,\y_tmp_reg_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_tmp_reg[15:12]),
        .O(y_tmp_reg2[15:12]),
        .S({\y_tmp_reg[15]_i_3_n_0 ,\y_tmp_reg[15]_i_4_n_0 ,\y_tmp_reg[15]_i_5_n_0 ,\y_tmp_reg[15]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[16] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[16]_i_1_n_0 ),
        .Q(y_tmp_reg[16]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[17] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[17]_i_1_n_0 ),
        .Q(y_tmp_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[18] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[18]_i_1_n_0 ),
        .Q(y_tmp_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[19] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[19]_i_1_n_0 ),
        .Q(y_tmp_reg[19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_tmp_reg_reg[19]_i_2 
       (.CI(\y_tmp_reg_reg[15]_i_2_n_0 ),
        .CO({\y_tmp_reg_reg[19]_i_2_n_0 ,\y_tmp_reg_reg[19]_i_2_n_1 ,\y_tmp_reg_reg[19]_i_2_n_2 ,\y_tmp_reg_reg[19]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_tmp_reg[19:16]),
        .O(y_tmp_reg2[19:16]),
        .S({\y_tmp_reg[19]_i_3_n_0 ,\y_tmp_reg[19]_i_4_n_0 ,\y_tmp_reg[19]_i_5_n_0 ,\y_tmp_reg[19]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[1] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[1]_i_1_n_0 ),
        .Q(y_tmp_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[20] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[20]_i_1_n_0 ),
        .Q(y_tmp_reg[20]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[21] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[21]_i_1_n_0 ),
        .Q(y_tmp_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[22] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[22]_i_1_n_0 ),
        .Q(y_tmp_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[23] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[23]_i_1_n_0 ),
        .Q(y_tmp_reg[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_tmp_reg_reg[23]_i_2 
       (.CI(\y_tmp_reg_reg[19]_i_2_n_0 ),
        .CO({\y_tmp_reg_reg[23]_i_2_n_0 ,\y_tmp_reg_reg[23]_i_2_n_1 ,\y_tmp_reg_reg[23]_i_2_n_2 ,\y_tmp_reg_reg[23]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_tmp_reg[23:20]),
        .O(y_tmp_reg2[23:20]),
        .S({\y_tmp_reg[23]_i_3_n_0 ,\y_tmp_reg[23]_i_4_n_0 ,\y_tmp_reg[23]_i_5_n_0 ,\y_tmp_reg[23]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[24] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[24]_i_1_n_0 ),
        .Q(y_tmp_reg[24]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[25] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[25]_i_1_n_0 ),
        .Q(y_tmp_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[26] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[26]_i_1_n_0 ),
        .Q(y_tmp_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[27] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[27]_i_1_n_0 ),
        .Q(y_tmp_reg[27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_tmp_reg_reg[27]_i_2 
       (.CI(\y_tmp_reg_reg[23]_i_2_n_0 ),
        .CO({\y_tmp_reg_reg[27]_i_2_n_0 ,\y_tmp_reg_reg[27]_i_2_n_1 ,\y_tmp_reg_reg[27]_i_2_n_2 ,\y_tmp_reg_reg[27]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_tmp_reg[27:24]),
        .O(y_tmp_reg2[27:24]),
        .S({\y_tmp_reg[27]_i_3_n_0 ,\y_tmp_reg[27]_i_4_n_0 ,\y_tmp_reg[27]_i_5_n_0 ,\y_tmp_reg[27]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[28] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[28]_i_1_n_0 ),
        .Q(y_tmp_reg[28]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[29] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[29]_i_1_n_0 ),
        .Q(y_tmp_reg[29]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[2] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[2]_i_1_n_0 ),
        .Q(y_tmp_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[30] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[30]_i_1_n_0 ),
        .Q(y_tmp_reg[30]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[31] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[31]_i_1_n_0 ),
        .Q(y_tmp_reg[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_tmp_reg_reg[31]_i_2 
       (.CI(\y_tmp_reg_reg[27]_i_2_n_0 ),
        .CO({\NLW_y_tmp_reg_reg[31]_i_2_CO_UNCONNECTED [3],\y_tmp_reg_reg[31]_i_2_n_1 ,\y_tmp_reg_reg[31]_i_2_n_2 ,\y_tmp_reg_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,m_tmp_reg[30:28]}),
        .O(y_tmp_reg2[31:28]),
        .S({\y_tmp_reg[31]_i_3_n_0 ,\y_tmp_reg[31]_i_4_n_0 ,\y_tmp_reg[31]_i_5_n_0 ,\y_tmp_reg[31]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[3] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[3]_i_1_n_0 ),
        .Q(y_tmp_reg[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_tmp_reg_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\y_tmp_reg_reg[3]_i_2_n_0 ,\y_tmp_reg_reg[3]_i_2_n_1 ,\y_tmp_reg_reg[3]_i_2_n_2 ,\y_tmp_reg_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_tmp_reg[3:0]),
        .O(y_tmp_reg2[3:0]),
        .S({\y_tmp_reg[3]_i_3_n_0 ,\y_tmp_reg[3]_i_4_n_0 ,\y_tmp_reg[3]_i_5_n_0 ,\y_tmp_reg[3]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[4] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[4]_i_1_n_0 ),
        .Q(y_tmp_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[5] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[5]_i_1_n_0 ),
        .Q(y_tmp_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[6] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[6]_i_1_n_0 ),
        .Q(y_tmp_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[7] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[7]_i_1_n_0 ),
        .Q(y_tmp_reg[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \y_tmp_reg_reg[7]_i_2 
       (.CI(\y_tmp_reg_reg[3]_i_2_n_0 ),
        .CO({\y_tmp_reg_reg[7]_i_2_n_0 ,\y_tmp_reg_reg[7]_i_2_n_1 ,\y_tmp_reg_reg[7]_i_2_n_2 ,\y_tmp_reg_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(m_tmp_reg[7:4]),
        .O(y_tmp_reg2[7:4]),
        .S({\y_tmp_reg[7]_i_3_n_0 ,\y_tmp_reg[7]_i_4_n_0 ,\y_tmp_reg[7]_i_5_n_0 ,\y_tmp_reg[7]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[8] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[8]_i_1_n_0 ),
        .Q(y_tmp_reg[8]));
  FDCE #(
    .INIT(1'b0)) 
    \y_tmp_reg_reg[9] 
       (.C(axis_clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(wready_reg_i_2_n_0),
        .D(\y_tmp_reg[9]_i_1_n_0 ),
        .Q(y_tmp_reg[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
