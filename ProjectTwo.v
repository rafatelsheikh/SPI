// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Aug  5 16:51:57 2025
// Host        : Rafat running 64-bit major release  (build 9200)
// Command     : write_verilog E:/DigitalDiploma/ProjectTwo/ProjectTwo.v
// Design      : top_module
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (tx_valid,
    MISO_reg,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    rx_valid_reg,
    SR,
    D,
    WEA,
    \rx_data_reg[8] ,
    \parallel_to_serial_reg[2] ,
    \parallel_to_serial_reg[1] ,
    \parallel_to_serial_reg[0] ,
    E);
  output tx_valid;
  output MISO_reg;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input rx_valid_reg;
  input [0:0]SR;
  input [7:0]D;
  input [0:0]WEA;
  input \rx_data_reg[8] ;
  input \parallel_to_serial_reg[2] ;
  input \parallel_to_serial_reg[1] ;
  input \parallel_to_serial_reg[0] ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]D;
  wire [0:0]E;
  wire MISO_i_3_n_0;
  wire MISO_i_4_n_0;
  wire MISO_reg;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [7:0]address;
  wire clk_IBUF_BUFG;
  wire \parallel_to_serial_reg[0] ;
  wire \parallel_to_serial_reg[1] ;
  wire \parallel_to_serial_reg[2] ;
  wire rst_n_IBUF;
  wire \rx_data_reg[8] ;
  wire rx_valid_reg;
  wire [7:0]tx_data;
  wire tx_valid;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    MISO_i_3
       (.I0(tx_data[6]),
        .I1(tx_data[4]),
        .I2(\parallel_to_serial_reg[1] ),
        .I3(tx_data[7]),
        .I4(\parallel_to_serial_reg[0] ),
        .I5(tx_data[5]),
        .O(MISO_i_3_n_0));
  LUT6 #(
    .INIT(64'hCACAFFF0CACA0F00)) 
    MISO_i_4
       (.I0(tx_data[2]),
        .I1(tx_data[0]),
        .I2(\parallel_to_serial_reg[1] ),
        .I3(tx_data[3]),
        .I4(\parallel_to_serial_reg[0] ),
        .I5(tx_data[1]),
        .O(MISO_i_4_n_0));
  MUXF7 MISO_reg_i_2
       (.I0(MISO_i_3_n_0),
        .I1(MISO_i_4_n_0),
        .O(MISO_reg),
        .S(\parallel_to_serial_reg[2] ));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[0]),
        .Q(address[0]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[1]),
        .Q(address[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[2]),
        .Q(address[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[3]),
        .Q(address[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[4]),
        .Q(address[4]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[5]),
        .Q(address[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[6]),
        .Q(address[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \address_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .D(D[7]),
        .Q(address[7]),
        .R(\<const0> ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "inst2/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const1> ,\<const1> ,address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,\<const1> ,address,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .CLKARDCLK(clk_IBUF_BUFG),
        .CLKBWRCLK(clk_IBUF_BUFG),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,D}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rst_n_IBUF),
        .ENBWREN(rx_valid_reg),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
  FDRE #(
    .INIT(1'b0)) 
    tx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data_reg[8] ),
        .Q(tx_valid),
        .R(SR));
endmodule

module SPI
   (MISO_OBUF,
    SR,
    WEA,
    D,
    E,
    tx_valid_reg,
    mem_reg,
    \parallel_to_serial_reg[2]_0 ,
    \parallel_to_serial_reg[2]_1 ,
    \parallel_to_serial_reg[2]_2 ,
    \parallel_to_serial_reg[2]_3 ,
    clk_IBUF_BUFG,
    tx_valid,
    SS_n_IBUF,
    MOSI_IBUF,
    rst_n_IBUF);
  output MISO_OBUF;
  output [0:0]SR;
  output [0:0]WEA;
  output [7:0]D;
  output [0:0]E;
  output tx_valid_reg;
  output mem_reg;
  output \parallel_to_serial_reg[2]_0 ;
  output \parallel_to_serial_reg[2]_1 ;
  output \parallel_to_serial_reg[2]_2 ;
  input \parallel_to_serial_reg[2]_3 ;
  input clk_IBUF_BUFG;
  input tx_valid;
  input SS_n_IBUF;
  input MOSI_IBUF;
  input rst_n_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]D;
  wire [0:0]E;
  wire MISO1_out;
  wire MISO_OBUF;
  wire MOSI_IBUF;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [2:0]cs;
  wire is_read_data_i_1_n_0;
  wire is_read_data_reg_n_0;
  wire mem_reg;
  wire [2:0]ns;
  wire parallel_to_serial;
  wire \parallel_to_serial[0]_i_1_n_0 ;
  wire \parallel_to_serial[1]_i_1_n_0 ;
  wire \parallel_to_serial[2]_i_1_n_0 ;
  wire \parallel_to_serial_reg[2]_0 ;
  wire \parallel_to_serial_reg[2]_1 ;
  wire \parallel_to_serial_reg[2]_2 ;
  wire \parallel_to_serial_reg[2]_3 ;
  wire rst_n_IBUF;
  wire [9:8]rx_data;
  wire [9:9]rx_data1_in;
  wire \rx_data[0]_i_1_n_0 ;
  wire \rx_data[1]_i_1_n_0 ;
  wire \rx_data[2]_i_1_n_0 ;
  wire \rx_data[3]_i_1_n_0 ;
  wire \rx_data[3]_i_2_n_0 ;
  wire \rx_data[4]_i_1_n_0 ;
  wire \rx_data[5]_i_1_n_0 ;
  wire \rx_data[6]_i_1_n_0 ;
  wire \rx_data[7]_i_1_n_0 ;
  wire \rx_data[7]_i_3_n_0 ;
  wire \rx_data[7]_i_4_n_0 ;
  wire \rx_data[8]_i_1_n_0 ;
  wire \rx_data[8]_i_2_n_0 ;
  wire \rx_data[9]_i_1_n_0 ;
  wire \rx_data[9]_i_2_n_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;
  wire serial_to_parallel;
  wire \serial_to_parallel[0]_i_1_n_0 ;
  wire \serial_to_parallel[1]_i_1_n_0 ;
  wire \serial_to_parallel[1]_i_2_n_0 ;
  wire \serial_to_parallel[2]_i_1_n_0 ;
  wire \serial_to_parallel[3]_i_1_n_0 ;
  wire \serial_to_parallel[3]_i_3_n_0 ;
  wire \serial_to_parallel[3]_i_4_n_0 ;
  wire \serial_to_parallel_reg_n_0_[0] ;
  wire \serial_to_parallel_reg_n_0_[1] ;
  wire \serial_to_parallel_reg_n_0_[2] ;
  wire \serial_to_parallel_reg_n_0_[3] ;
  wire tx_valid;
  wire tx_valid_reg;

  LUT6 #(
    .INIT(64'h3333333333002333)) 
    \FSM_gray_cs[0]_i_1 
       (.I0(is_read_data_reg_n_0),
        .I1(SS_n_IBUF),
        .I2(MOSI_IBUF),
        .I3(cs[0]),
        .I4(cs[1]),
        .I5(cs[2]),
        .O(ns[0]));
  LUT4 #(
    .INIT(16'h0F0E)) 
    \FSM_gray_cs[1]_i_1 
       (.I0(cs[2]),
        .I1(cs[0]),
        .I2(SS_n_IBUF),
        .I3(cs[1]),
        .O(ns[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_gray_cs[2]_i_1 
       (.I0(rst_n_IBUF),
        .O(SR));
  LUT6 #(
    .INIT(64'h0000FFFF00000800)) 
    \FSM_gray_cs[2]_i_2 
       (.I0(MOSI_IBUF),
        .I1(cs[0]),
        .I2(cs[1]),
        .I3(is_read_data_reg_n_0),
        .I4(SS_n_IBUF),
        .I5(cs[2]),
        .O(ns[2]));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,IDLE:000,READ_DATA:111" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[0]),
        .Q(cs[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,IDLE:000,READ_DATA:111" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[1]),
        .Q(cs[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,IDLE:000,READ_DATA:111" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_cs_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(ns[2]),
        .Q(cs[2]),
        .R(SR));
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    MISO_i_1
       (.I0(cs[2]),
        .I1(SS_n_IBUF),
        .I2(tx_valid),
        .I3(cs[0]),
        .I4(cs[1]),
        .I5(\serial_to_parallel[1]_i_2_n_0 ),
        .O(MISO1_out));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(clk_IBUF_BUFG),
        .CE(MISO1_out),
        .D(\parallel_to_serial_reg[2]_3 ),
        .Q(MISO_OBUF),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \address[7]_i_1 
       (.I0(rx_data[8]),
        .I1(rx_valid),
        .I2(rst_n_IBUF),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    is_read_data_i_1
       (.I0(\serial_to_parallel[1]_i_2_n_0 ),
        .I1(SS_n_IBUF),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(cs[2]),
        .I5(is_read_data_reg_n_0),
        .O(is_read_data_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    is_read_data_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(is_read_data_i_1_n_0),
        .Q(is_read_data_reg_n_0),
        .R(SR));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .I2(rx_data[9]),
        .I3(rst_n_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h40)) 
    mem_reg_i_2
       (.I0(rx_data[9]),
        .I1(rx_data[8]),
        .I2(rx_valid),
        .O(WEA));
  LUT6 #(
    .INIT(64'hC4C444C400008000)) 
    \parallel_to_serial[0]_i_1 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(tx_valid),
        .I4(\serial_to_parallel[1]_i_2_n_0 ),
        .I5(\parallel_to_serial_reg[2]_1 ),
        .O(\parallel_to_serial[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08FF8000)) 
    \parallel_to_serial[1]_i_1 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(\parallel_to_serial_reg[2]_1 ),
        .I3(parallel_to_serial),
        .I4(\parallel_to_serial_reg[2]_0 ),
        .O(\parallel_to_serial[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7000FFFF80000000)) 
    \parallel_to_serial[2]_i_1 
       (.I0(\parallel_to_serial_reg[2]_0 ),
        .I1(\parallel_to_serial_reg[2]_1 ),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(parallel_to_serial),
        .I5(\parallel_to_serial_reg[2]_2 ),
        .O(\parallel_to_serial[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3B3BBB3B)) 
    \parallel_to_serial[2]_i_2 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(tx_valid),
        .I4(\serial_to_parallel[1]_i_2_n_0 ),
        .O(parallel_to_serial));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_to_serial_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\parallel_to_serial[0]_i_1_n_0 ),
        .Q(\parallel_to_serial_reg[2]_1 ),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_to_serial_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\parallel_to_serial[1]_i_1_n_0 ),
        .Q(\parallel_to_serial_reg[2]_0 ),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \parallel_to_serial_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\parallel_to_serial[2]_i_1_n_0 ),
        .Q(\parallel_to_serial_reg[2]_2 ),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFAAAA2000AAAA)) 
    \rx_data[0]_i_1 
       (.I0(rx_data1_in),
        .I1(\serial_to_parallel_reg_n_0_[1] ),
        .I2(\serial_to_parallel_reg_n_0_[0] ),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(\rx_data[7]_i_4_n_0 ),
        .I5(D[0]),
        .O(\rx_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFAAAA0200AAAA)) 
    \rx_data[1]_i_1 
       (.I0(rx_data1_in),
        .I1(\serial_to_parallel_reg_n_0_[0] ),
        .I2(\serial_to_parallel_reg_n_0_[1] ),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(\rx_data[7]_i_4_n_0 ),
        .I5(D[1]),
        .O(\rx_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFAAAA8000AAAA)) 
    \rx_data[2]_i_1 
       (.I0(rx_data1_in),
        .I1(\serial_to_parallel_reg_n_0_[1] ),
        .I2(\serial_to_parallel_reg_n_0_[0] ),
        .I3(\rx_data[3]_i_2_n_0 ),
        .I4(\rx_data[7]_i_4_n_0 ),
        .I5(D[2]),
        .O(\rx_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFAAAA0080AAAA)) 
    \rx_data[3]_i_1 
       (.I0(rx_data1_in),
        .I1(\rx_data[3]_i_2_n_0 ),
        .I2(\serial_to_parallel_reg_n_0_[1] ),
        .I3(\serial_to_parallel_reg_n_0_[0] ),
        .I4(\rx_data[7]_i_4_n_0 ),
        .I5(D[3]),
        .O(\rx_data[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \rx_data[3]_i_2 
       (.I0(\serial_to_parallel_reg_n_0_[1] ),
        .I1(\serial_to_parallel_reg_n_0_[2] ),
        .I2(\serial_to_parallel_reg_n_0_[3] ),
        .O(\rx_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFAAAA2000AAAA)) 
    \rx_data[4]_i_1 
       (.I0(rx_data1_in),
        .I1(\serial_to_parallel_reg_n_0_[1] ),
        .I2(\serial_to_parallel_reg_n_0_[0] ),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(\rx_data[7]_i_4_n_0 ),
        .I5(D[4]),
        .O(\rx_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFAAAA0200AAAA)) 
    \rx_data[5]_i_1 
       (.I0(rx_data1_in),
        .I1(\serial_to_parallel_reg_n_0_[0] ),
        .I2(\serial_to_parallel_reg_n_0_[1] ),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(\rx_data[7]_i_4_n_0 ),
        .I5(D[5]),
        .O(\rx_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFAAAA8000AAAA)) 
    \rx_data[6]_i_1 
       (.I0(rx_data1_in),
        .I1(\serial_to_parallel_reg_n_0_[1] ),
        .I2(\serial_to_parallel_reg_n_0_[0] ),
        .I3(\rx_data[7]_i_3_n_0 ),
        .I4(\rx_data[7]_i_4_n_0 ),
        .I5(D[6]),
        .O(\rx_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFAAAA0080AAAA)) 
    \rx_data[7]_i_1 
       (.I0(rx_data1_in),
        .I1(\rx_data[7]_i_3_n_0 ),
        .I2(\serial_to_parallel_reg_n_0_[1] ),
        .I3(\serial_to_parallel_reg_n_0_[0] ),
        .I4(\rx_data[7]_i_4_n_0 ),
        .I5(D[7]),
        .O(\rx_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8088)) 
    \rx_data[7]_i_2 
       (.I0(cs[1]),
        .I1(MOSI_IBUF),
        .I2(cs[0]),
        .I3(cs[2]),
        .O(rx_data1_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \rx_data[7]_i_3 
       (.I0(\serial_to_parallel_reg_n_0_[1] ),
        .I1(\serial_to_parallel_reg_n_0_[2] ),
        .I2(\serial_to_parallel_reg_n_0_[3] ),
        .O(\rx_data[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \rx_data[7]_i_4 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(cs[2]),
        .O(\rx_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBB0B000088080000)) 
    \rx_data[8]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\rx_data[8]_i_2_n_0 ),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(cs[1]),
        .I5(rx_data[8]),
        .O(\rx_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \rx_data[8]_i_2 
       (.I0(\serial_to_parallel_reg_n_0_[0] ),
        .I1(\serial_to_parallel_reg_n_0_[1] ),
        .I2(\serial_to_parallel_reg_n_0_[2] ),
        .I3(\serial_to_parallel_reg_n_0_[3] ),
        .O(\rx_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBB0B000088080000)) 
    \rx_data[9]_i_1 
       (.I0(MOSI_IBUF),
        .I1(\rx_data[9]_i_2_n_0 ),
        .I2(cs[2]),
        .I3(cs[0]),
        .I4(cs[1]),
        .I5(rx_data[9]),
        .O(\rx_data[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_data[9]_i_2 
       (.I0(\serial_to_parallel_reg_n_0_[0] ),
        .I1(\serial_to_parallel_reg_n_0_[1] ),
        .I2(\serial_to_parallel_reg_n_0_[2] ),
        .I3(\serial_to_parallel_reg_n_0_[3] ),
        .O(\rx_data[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[7]_i_1_n_0 ),
        .Q(D[7]),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[8]_i_1_n_0 ),
        .Q(rx_data[8]),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(\rx_data[9]_i_1_n_0 ),
        .Q(rx_data[9]),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A200F300)) 
    rx_valid_i_1
       (.I0(rx_valid),
        .I1(cs[2]),
        .I2(cs[0]),
        .I3(cs[1]),
        .I4(\serial_to_parallel[1]_i_2_n_0 ),
        .I5(\serial_to_parallel[3]_i_1_n_0 ),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \serial_to_parallel[0]_i_1 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(\serial_to_parallel[1]_i_2_n_0 ),
        .I4(\serial_to_parallel_reg_n_0_[0] ),
        .O(\serial_to_parallel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00008A808A800000)) 
    \serial_to_parallel[1]_i_1 
       (.I0(cs[1]),
        .I1(cs[0]),
        .I2(cs[2]),
        .I3(\serial_to_parallel[1]_i_2_n_0 ),
        .I4(\serial_to_parallel_reg_n_0_[1] ),
        .I5(\serial_to_parallel_reg_n_0_[0] ),
        .O(\serial_to_parallel[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \serial_to_parallel[1]_i_2 
       (.I0(\serial_to_parallel_reg_n_0_[1] ),
        .I1(\serial_to_parallel_reg_n_0_[2] ),
        .I2(\serial_to_parallel_reg_n_0_[3] ),
        .O(\serial_to_parallel[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \serial_to_parallel[2]_i_1 
       (.I0(\serial_to_parallel[3]_i_4_n_0 ),
        .I1(\serial_to_parallel_reg_n_0_[2] ),
        .I2(\serial_to_parallel_reg_n_0_[1] ),
        .I3(\serial_to_parallel_reg_n_0_[0] ),
        .O(\serial_to_parallel[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \serial_to_parallel[3]_i_1 
       (.I0(SS_n_IBUF),
        .I1(rst_n_IBUF),
        .O(\serial_to_parallel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \serial_to_parallel[3]_i_2 
       (.I0(cs[2]),
        .I1(cs[1]),
        .I2(cs[0]),
        .I3(\serial_to_parallel_reg_n_0_[3] ),
        .I4(\serial_to_parallel_reg_n_0_[2] ),
        .I5(\serial_to_parallel_reg_n_0_[1] ),
        .O(serial_to_parallel));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \serial_to_parallel[3]_i_3 
       (.I0(\serial_to_parallel[3]_i_4_n_0 ),
        .I1(\serial_to_parallel_reg_n_0_[3] ),
        .I2(\serial_to_parallel_reg_n_0_[2] ),
        .I3(\serial_to_parallel_reg_n_0_[0] ),
        .I4(\serial_to_parallel_reg_n_0_[1] ),
        .O(\serial_to_parallel[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF57005700000000)) 
    \serial_to_parallel[3]_i_4 
       (.I0(\serial_to_parallel_reg_n_0_[3] ),
        .I1(\serial_to_parallel_reg_n_0_[2] ),
        .I2(\serial_to_parallel_reg_n_0_[1] ),
        .I3(cs[2]),
        .I4(cs[0]),
        .I5(cs[1]),
        .O(\serial_to_parallel[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \serial_to_parallel_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(serial_to_parallel),
        .D(\serial_to_parallel[0]_i_1_n_0 ),
        .Q(\serial_to_parallel_reg_n_0_[0] ),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \serial_to_parallel_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(serial_to_parallel),
        .D(\serial_to_parallel[1]_i_1_n_0 ),
        .Q(\serial_to_parallel_reg_n_0_[1] ),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \serial_to_parallel_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(serial_to_parallel),
        .D(\serial_to_parallel[2]_i_1_n_0 ),
        .Q(\serial_to_parallel_reg_n_0_[2] ),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \serial_to_parallel_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(serial_to_parallel),
        .D(\serial_to_parallel[3]_i_3_n_0 ),
        .Q(\serial_to_parallel_reg_n_0_[3] ),
        .R(\serial_to_parallel[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    tx_valid_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(tx_valid),
        .O(tx_valid_reg));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module top_module
   (clk,
    rst_n,
    MOSI,
    MISO,
    SS_n);
  input clk;
  input rst_n;
  input MOSI;
  output MISO;
  input SS_n;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SS_n;
  wire SS_n_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire inst1_n_1;
  wire inst1_n_11;
  wire inst1_n_12;
  wire inst1_n_13;
  wire inst1_n_14;
  wire inst1_n_15;
  wire inst1_n_16;
  wire inst2_n_1;
  wire mem;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]rx_data;
  wire tx_valid;

  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  SPI inst1
       (.D(rx_data),
        .E(inst1_n_11),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .SR(inst1_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .mem_reg(inst1_n_13),
        .\parallel_to_serial_reg[2]_0 (inst1_n_14),
        .\parallel_to_serial_reg[2]_1 (inst1_n_15),
        .\parallel_to_serial_reg[2]_2 (inst1_n_16),
        .\parallel_to_serial_reg[2]_3 (inst2_n_1),
        .rst_n_IBUF(rst_n_IBUF),
        .tx_valid(tx_valid),
        .tx_valid_reg(inst1_n_12));
  RAM inst2
       (.D(rx_data),
        .E(inst1_n_11),
        .MISO_reg(inst2_n_1),
        .SR(inst1_n_1),
        .WEA(mem),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\parallel_to_serial_reg[0] (inst1_n_15),
        .\parallel_to_serial_reg[1] (inst1_n_14),
        .\parallel_to_serial_reg[2] (inst1_n_16),
        .rst_n_IBUF(rst_n_IBUF),
        .\rx_data_reg[8] (inst1_n_12),
        .rx_valid_reg(inst1_n_13),
        .tx_valid(tx_valid));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
