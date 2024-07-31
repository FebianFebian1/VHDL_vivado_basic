### This file is a general .xdc for the Nexys Video Rev. A
### To use it in a project:
### - uncomment the lines corresponding to used pins
### - rename the used ports (in each line, after get_ports) according to the top level signal names in the project


## Clock Signal
set_property -dict {PACKAGE_PIN R4 IOSTANDARD LVCMOS33} [get_ports SYSCLK]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports SYSCLK]

## FMC Transceiver clocks (Must be set to value provided by Mezzanine card, currently set to 156.25 MHz)
## Note: This clock is attached to a MGTREFCLK pin
#set_property -dict { PACKAGE_PIN E6 } [get_ports { GTP_CLK_N }];
#set_property -dict { PACKAGE_PIN F6 } [get_ports { GTP_CLK_P }];
#create_clock -add -name gtpclk0_pin -period 6.400 -waveform {0 3.200} [get_ports {GTP_CLK_P}];
#set_property -dict { PACKAGE_PIN E10 } [get_ports { FMC_MGT_CLK_N }];
#set_property -dict { PACKAGE_PIN F10 } [get_ports { FMC_MGT_CLK_P }];
#create_clock -add -name mgtclk1_pin -period 6.400 -waveform {0 3.200} [get_ports {FMC_MGT_CLK_P}];


## LEDs
set_property -dict {PACKAGE_PIN T14 IOSTANDARD LVCMOS25} [get_ports {LED[0]}]
set_property -dict {PACKAGE_PIN T15 IOSTANDARD LVCMOS25} [get_ports {LED[1]}]
set_property -dict {PACKAGE_PIN T16 IOSTANDARD LVCMOS25} [get_ports {LED[2]}]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS25} [get_ports {LED[3]}]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS25} [get_ports {LED[4]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS25} [get_ports {LED[5]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS25} [get_ports {LED[6]}]
set_property -dict {PACKAGE_PIN Y13 IOSTANDARD LVCMOS25} [get_ports {LED[7]}]


## Buttons (Vadj)
set_property -dict {PACKAGE_PIN B22 IOSTANDARD LVCMOS25} [get_ports PAUSE]
#set_property -dict {PACKAGE_PIN D22 IOSTANDARD LVCMOS12} [get_ports PAUSE]
#set_property -dict {PACKAGE_PIN C22 IOSTANDARD LVCMOS12} [get_ports DAQ]
set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS25} [get_ports MCLK_RST]
#set_property -dict { PACKAGE_PIN F15 IOSTANDARD LVCMOS12 } [get_ports { btnu }]; #IO_0_16 Sch=btnu
#set_property -dict { PACKAGE_PIN G4  IOSTANDARD LVCMOS15 } [get_ports { cpu_resetn }]; #IO_L12N_T1_MRCC_35 Sch=cpu_resetn


## Switches (Vadj)
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS25} [get_ports {sw_i[0]}]
set_property -dict {PACKAGE_PIN F21 IOSTANDARD LVCMOS25} [get_ports {sw_i[1]}]
set_property -dict {PACKAGE_PIN G21 IOSTANDARD LVCMOS25} [get_ports {sw_i[2]}]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS25} [get_ports {sw_i[3]}]
set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS25} [get_ports {sw_i[4]}]
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS25} [get_ports {sw_i[5]}]
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS25} [get_ports {sw_i[6]}]
set_property -dict {PACKAGE_PIN M17 IOSTANDARD LVCMOS25} [get_ports {sw_i[7]}]


## OLED Display
#set_property -dict { PACKAGE_PIN W22   IOSTANDARD LVCMOS33 } [get_ports { oled_dc }]; #IO_L7N_T1_D10_14 Sch=oled_dc
#set_property -dict { PACKAGE_PIN U21   IOSTANDARD LVCMOS33 } [get_ports { oled_res }]; #IO_L4N_T0_D05_14 Sch=oled_res
#set_property -dict { PACKAGE_PIN W21   IOSTANDARD LVCMOS33 } [get_ports { oled_sclk }]; #IO_L7P_T1_D09_14 Sch=oled_sclk
#set_property -dict { PACKAGE_PIN Y22   IOSTANDARD LVCMOS33 } [get_ports { oled_sdin }]; #IO_L9N_T1_DQS_D13_14 Sch=oled_sdin
#set_property -dict { PACKAGE_PIN P20   IOSTANDARD LVCMOS33 } [get_ports { oled_vbat }]; #IO_0_14 Sch=oled_vbat
#set_property -dict { PACKAGE_PIN V22   IOSTANDARD LVCMOS33 } [get_ports { oled_vdd }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=oled_vdd


## HDMI in
#set_property -dict { PACKAGE_PIN AA5   IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_cec }]; #IO_L10P_T1_34 Sch=hdmi_rx_cec
#set_property -dict { PACKAGE_PIN W4    IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_clk_n }]; #IO_L12N_T1_MRCC_34 Sch=hdmi_rx_clk_n
#set_property -dict { PACKAGE_PIN V4    IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_clk_p }]; #IO_L12P_T1_MRCC_34 Sch=hdmi_rx_clk_p
#set_property -dict { PACKAGE_PIN AB12  IOSTANDARD LVCMOS25 } [get_ports { hdmi_rx_hpa }]; #IO_L7N_T1_13 Sch=hdmi_rx_hpa
#set_property -dict { PACKAGE_PIN Y4    IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_scl }]; #IO_L11P_T1_SRCC_34 Sch=hdmi_rx_scl
#set_property -dict { PACKAGE_PIN AB5   IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_sda }]; #IO_L10N_T1_34 Sch=hdmi_rx_sda
#set_property -dict { PACKAGE_PIN R3    IOSTANDARD LVCMOS33 } [get_ports { hdmi_rx_txen }]; #IO_L3P_T0_DQS_34 Sch=hdmi_rx_txen
#set_property -dict { PACKAGE_PIN AA3   IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_n[0] }]; #IO_L9N_T1_DQS_34 Sch=hdmi_rx_n[0]
#set_property -dict { PACKAGE_PIN Y3    IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_p[0] }]; #IO_L9P_T1_DQS_34 Sch=hdmi_rx_p[0]
#set_property -dict { PACKAGE_PIN Y2    IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_n[1] }]; #IO_L4N_T0_34 Sch=hdmi_rx_n[1]
#set_property -dict { PACKAGE_PIN W2    IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_p[1] }]; #IO_L4P_T0_34 Sch=hdmi_rx_p[1]
#set_property -dict { PACKAGE_PIN V2    IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_n[2] }]; #IO_L2N_T0_34 Sch=hdmi_rx_n[2]
#set_property -dict { PACKAGE_PIN U2    IOSTANDARD TMDS_33  } [get_ports { hdmi_rx_p[2] }]; #IO_L2P_T0_34 Sch=hdmi_rx_p[2]


## HDMI out
#set_property -dict { PACKAGE_PIN AA4   IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_cec }]; #IO_L11N_T1_SRCC_34 Sch=hdmi_tx_cec
#set_property -dict { PACKAGE_PIN U1    IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_clk_n }]; #IO_L1N_T0_34 Sch=hdmi_tx_clk_n
#set_property -dict { PACKAGE_PIN T1    IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_clk_p }]; #IO_L1P_T0_34 Sch=hdmi_tx_clk_p
#set_property -dict { PACKAGE_PIN AB13  IOSTANDARD LVCMOS25 } [get_ports { hdmi_tx_hpd }]; #IO_L3N_T0_DQS_13 Sch=hdmi_tx_hpd
#set_property -dict { PACKAGE_PIN U3    IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_rscl }]; #IO_L6P_T0_34 Sch=hdmi_tx_rscl
#set_property -dict { PACKAGE_PIN V3    IOSTANDARD LVCMOS33 } [get_ports { hdmi_tx_rsda }]; #IO_L6N_T0_VREF_34 Sch=hdmi_tx_rsda
#set_property -dict { PACKAGE_PIN Y1    IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_n[0] }]; #IO_L5N_T0_34 Sch=hdmi_tx_n[0]
#set_property -dict { PACKAGE_PIN W1    IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_p[0] }]; #IO_L5P_T0_34 Sch=hdmi_tx_p[0]
#set_property -dict { PACKAGE_PIN AB1   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_n[1] }]; #IO_L7N_T1_34 Sch=hdmi_tx_n[1]
#set_property -dict { PACKAGE_PIN AA1   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_p[1] }]; #IO_L7P_T1_34 Sch=hdmi_tx_p[1]
#set_property -dict { PACKAGE_PIN AB2   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_n[2] }]; #IO_L8N_T1_34 Sch=hdmi_tx_n[2]
#set_property -dict { PACKAGE_PIN AB3   IOSTANDARD TMDS_33  } [get_ports { hdmi_tx_p[2] }]; #IO_L8P_T1_34 Sch=hdmi_tx_p[2]


## Display Port
#set_property -dict { PACKAGE_PIN AB10  IOSTANDARD TMDS_33  } [get_ports { dp_tx_aux_n }]; #IO_L8N_T1_13 Sch=dp_tx_aux_n
#set_property -dict { PACKAGE_PIN AA11  IOSTANDARD TMDS_33  } [get_ports { dp_tx_aux_n }]; #IO_L9N_T1_DQS_13 Sch=dp_tx_aux_n
#set_property -dict { PACKAGE_PIN AA9   IOSTANDARD TMDS_33  } [get_ports { dp_tx_aux_p }]; #IO_L8P_T1_13 Sch=dp_tx_aux_p
#set_property -dict { PACKAGE_PIN AA10  IOSTANDARD TMDS_33  } [get_ports { dp_tx_aux_p }]; #IO_L9P_T1_DQS_13 Sch=dp_tx_aux_p
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { dp_tx_hpd }]; #IO_25_14 Sch=dp_tx_hpd


## Audio Codec
#set_property -dict { PACKAGE_PIN T4    IOSTANDARD LVCMOS33 } [get_ports { ac_adc_sdata }]; #IO_L13N_T2_MRCC_34 Sch=ac_adc_sdata
#set_property -dict { PACKAGE_PIN T5    IOSTANDARD LVCMOS33 } [get_ports { ac_bclk }]; #IO_L14P_T2_SRCC_34 Sch=ac_bclk
#set_property -dict { PACKAGE_PIN W6    IOSTANDARD LVCMOS33 } [get_ports { ac_dac_sdata }]; #IO_L15P_T2_DQS_34 Sch=ac_dac_sdata
#set_property -dict { PACKAGE_PIN U5    IOSTANDARD LVCMOS33 } [get_ports { ac_lrclk }]; #IO_L14N_T2_SRCC_34 Sch=ac_lrclk
#set_property -dict { PACKAGE_PIN U6    IOSTANDARD LVCMOS33 } [get_ports { ac_mclk }]; #IO_L16P_T2_34 Sch=ac_mclk


## Pmod header JA
#set_property -dict { PACKAGE_PIN AB22  IOSTANDARD LVCMOS33 } [get_ports { DVALID }]; #IO_L10N_T1_D15_14 Sch=ja[1]
#set_property -dict { PACKAGE_PIN AB21  IOSTANDARD LVCMOS33 } [get_ports { DIN_CFG }]; #IO_L10P_T1_D14_14 Sch=ja[2]
#set_property -dict { PACKAGE_PIN AB20  IOSTANDARD LVCMOS33 } [get_ports { CLK_CFG }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ja[3]
#set_property -dict { PACKAGE_PIN AB18  IOSTANDARD LVCMOS33 } [get_ports { RESET }]; #IO_L17N_T2_A13_D29_14 Sch=ja[4]
#set_property -dict { PACKAGE_PIN Y21   IOSTANDARD LVCMOS33 } [get_ports { DCLK }]; #IO_L9P_T1_DQS_14 Sch=ja[7]
#set_property -dict { PACKAGE_PIN AA21  IOSTANDARD LVCMOS33 } [get_ports { CLK }]; #IO_L8N_T1_D12_14 Sch=ja[8]
#set_property -dict { PACKAGE_PIN AA20  IOSTANDARD LVCMOS33 } [get_ports { DOUT}]; #IO_L8P_T1_D11_14 Sch=ja[9]
#set_property -dict { PACKAGE_PIN AA18  IOSTANDARD LVCMOS33 } [get_ports { CONV }]; #IO_L17P_T2_A14_D30_14 Sch=ja[10]


## Pmod header JB
#set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVCMOS33} [get_ports DVALID]
#set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports DIN_CFG]
#set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports CLK_CFG]
#set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports RESET]
#set_property -dict {PACKAGE_PIN W9 IOSTANDARD LVCMOS33} [get_ports DCLK]
#set_property -dict {PACKAGE_PIN Y9 IOSTANDARD LVCMOS33} [get_ports CLK]
#set_property -dict {PACKAGE_PIN Y8 IOSTANDARD LVCMOS33} [get_ports DOUT]
#set_property -dict {PACKAGE_PIN Y7 IOSTANDARD LVCMOS33} [get_ports CONV]


## Pmod header JC
set_property -dict {PACKAGE_PIN Y6 IOSTANDARD LVCMOS33} [get_ports pmod_DVALID_i]
set_property -dict {PACKAGE_PIN AA6 IOSTANDARD LVCMOS33} [get_ports pmod_DIN_CFG_o]
set_property -dict {PACKAGE_PIN AA8 IOSTANDARD LVCMOS33} [get_ports pmod_CLK_CFG_o]
set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS33} [get_ports pmod_RESET_o]
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS33} [get_ports pmod_DCLK_o]
set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVCMOS33} [get_ports pmod_CLK_o]
set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVCMOS33} [get_ports pmod_DOUT_i]
set_property -dict {PACKAGE_PIN AB6 IOSTANDARD LVCMOS33} [get_ports pmod_CONV_o]


## XADC Header
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { xa_p[0] }]; #IO_L3P_T0_DQS_AD1P_15 Sch=xa_p[1]
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { xa_n[0] }]; #IO_L3N_T0_DQS_AD1N_15 Sch=xa_n[1]
#set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { xa_p[1] }]; #IO_L1P_T0_AD0P_15 Sch=xa_p[2]
#set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { xa_n[1] }]; #IO_L1N_T0_AD0N_15 Sch=xa_n[2]
#set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { xa_p[2] }]; #IO_L2P_T0_AD8P_15 Sch=xa_p[3]
#set_property -dict { PACKAGE_PIN G16   IOSTANDARD LVCMOS33 } [get_ports { xa_n[2] }]; #IO_L2N_T0_AD8N_15 Sch=xa_n[3]
#set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { xa_p[3] }]; #IO_L5P_T0_AD9P_15 Sch=xa_p[4]
#set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { xa_n[3] }]; #IO_L5N_T0_AD9N_15 Sch=xa_n[4]


## UART
#set_property -dict { PACKAGE_PIN AA19  IOSTANDARD LVCMOS33 } [get_ports { o_UART_TX }]; #IO_L15P_T2_DQS_RDWR_B_14 Sch=uart_rx_out
#set_property -dict { PACKAGE_PIN V18   IOSTANDARD LVCMOS33 } [get_ports { i_UART_RX }]; #IO_L14P_T2_SRCC_14 Sch=uart_tx_in


## Ethernet
#set_property -dict { PACKAGE_PIN Y14   IOSTANDARD LVCMOS25 } [get_ports { eth_int_b }]; #IO_L6N_T0_VREF_13 Sch=eth_int_b
#set_property -dict { PACKAGE_PIN AA16  IOSTANDARD LVCMOS25 } [get_ports { eth_mdc }]; #IO_L1N_T0_13 Sch=eth_mdc
#set_property -dict { PACKAGE_PIN Y16   IOSTANDARD LVCMOS25 } [get_ports { eth_mdio }]; #IO_L1P_T0_13 Sch=eth_mdio
#set_property -dict { PACKAGE_PIN W14   IOSTANDARD LVCMOS25 } [get_ports { eth_pme_b }]; #IO_L6P_T0_13 Sch=eth_pme_b
#set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33 } [get_ports { eth_rst_b }]; #IO_25_34 Sch=eth_rst_b
#set_property -dict { PACKAGE_PIN V13   IOSTANDARD LVCMOS25 } [get_ports { eth_rxck }]; #IO_L13P_T2_MRCC_13 Sch=eth_rxck
#set_property -dict { PACKAGE_PIN W10   IOSTANDARD LVCMOS25 } [get_ports { eth_rxctl }]; #IO_L10N_T1_13 Sch=eth_rxctl
#set_property -dict { PACKAGE_PIN AB16  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[0] }]; #IO_L2P_T0_13 Sch=eth_rxd[0]
#set_property -dict { PACKAGE_PIN AA15  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[1] }]; #IO_L4P_T0_13 Sch=eth_rxd[1]
#set_property -dict { PACKAGE_PIN AB15  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[2] }]; #IO_L4N_T0_13 Sch=eth_rxd[2]
#set_property -dict { PACKAGE_PIN AB11  IOSTANDARD LVCMOS25 } [get_ports { eth_rxd[3] }]; #IO_L7P_T1_13 Sch=eth_rxd[3]
#set_property -dict { PACKAGE_PIN AA14  IOSTANDARD LVCMOS25 } [get_ports { eth_txck }]; #IO_L5N_T0_13 Sch=eth_txck
#set_property -dict { PACKAGE_PIN V10   IOSTANDARD LVCMOS25 } [get_ports { eth_txctl }]; #IO_L10P_T1_13 Sch=eth_txctl
#set_property -dict { PACKAGE_PIN Y12   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[0] }]; #IO_L11N_T1_SRCC_13 Sch=eth_txd[0]
#set_property -dict { PACKAGE_PIN W12   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[1] }]; #IO_L12N_T1_MRCC_13 Sch=eth_txd[1]
#set_property -dict { PACKAGE_PIN W11   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[2] }]; #IO_L12P_T1_MRCC_13 Sch=eth_txd[2]
#set_property -dict { PACKAGE_PIN Y11   IOSTANDARD LVCMOS25 } [get_ports { eth_txd[3] }]; #IO_L11P_T1_SRCC_13 Sch=eth_txd[3]


## Fan PWM
#set_property -dict { PACKAGE_PIN U15   IOSTANDARD LVCMOS25 } [get_ports { fan_pwm }]; #IO_L14P_T2_SRCC_13 Sch=fan_pwm


## DPTI/DSPI
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports prog_clko]

create_clock -period 16.666 -name clk_prog_clko -waveform {0.000 5.000} -add [get_ports prog_clko]

set_property -dict {PACKAGE_PIN U20 IOSTANDARD LVCMOS33} [get_ports {prog_d[0]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {prog_d[1]}]
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports {prog_d[2]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {prog_d[3]}]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD LVCMOS33} [get_ports {prog_d[4]}]
set_property -dict {PACKAGE_PIN P16 IOSTANDARD LVCMOS33} [get_ports {prog_d[5]}]
set_property -dict {PACKAGE_PIN R18 IOSTANDARD LVCMOS33} [get_ports {prog_d[6]}]
set_property -dict {PACKAGE_PIN N14 IOSTANDARD LVCMOS33} [get_ports {prog_d[7]}]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports prog_oen]
set_property -dict {PACKAGE_PIN P19 IOSTANDARD LVCMOS33} [get_ports prog_rdn]
set_property -dict {PACKAGE_PIN N17 IOSTANDARD LVCMOS33} [get_ports prog_rxen]
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports prog_siwun]
#set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { prog_spien }]; #IO_L19N_T3_A09_D25_VREF_14 Sch=prog_spien
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports prog_txen]
set_property -dict {PACKAGE_PIN R19 IOSTANDARD LVCMOS33} [get_ports prog_wrn]


## HID port
#set_property -dict { PACKAGE_PIN W17   IOSTANDARD LVCMOS33   PULLUP true } [get_ports { ps2_clk }]; #IO_L16N_T2_A15_D31_14 Sch=ps2_clk
#set_property -dict { PACKAGE_PIN N13   IOSTANDARD LVCMOS33   PULLUP true } [get_ports { ps2_data }]; #IO_L23P_T3_A03_D19_14 Sch=ps2_data


## QSPI
#set_property -dict { PACKAGE_PIN T19   IOSTANDARD LVCMOS33 } [get_ports { qspi_cs }]; #IO_L6P_T0_FCS_B_14 Sch=qspi_cs
#set_property -dict { PACKAGE_PIN P22   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[0] }]; #IO_L1P_T0_D00_MOSI_14 Sch=qspi_dq[0]
#set_property -dict { PACKAGE_PIN R22   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[1] }]; #IO_L1N_T0_D01_DIN_14 Sch=qspi_dq[1]
#set_property -dict { PACKAGE_PIN P21   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[2] }]; #IO_L2P_T0_D02_14 Sch=qspi_dq[2]
#set_property -dict { PACKAGE_PIN R21   IOSTANDARD LVCMOS33 } [get_ports { qspi_dq[3] }]; #IO_L2N_T0_D03_14 Sch=qspi_dq[3]


## SD card
#set_property -dict { PACKAGE_PIN W19   IOSTANDARD LVCMOS33 } [get_ports { sd_cclk }]; #IO_L12P_T1_MRCC_14 Sch=sd_cclk
#set_property -dict { PACKAGE_PIN T18   IOSTANDARD LVCMOS33 } [get_ports { sd_cd }]; #IO_L20N_T3_A07_D23_14 Sch=sd_cd
#set_property -dict { PACKAGE_PIN W20   IOSTANDARD LVCMOS33 } [get_ports { sd_cmd }]; #IO_L12N_T1_MRCC_14 Sch=sd_cmd
#set_property -dict { PACKAGE_PIN V19   IOSTANDARD LVCMOS33 } [get_ports { sd_d[0] }]; #IO_L14N_T2_SRCC_14 Sch=sd_d[0]
#set_property -dict { PACKAGE_PIN T21   IOSTANDARD LVCMOS33 } [get_ports { sd_d[1] }]; #IO_L4P_T0_D04_14 Sch=sd_d[1]
#set_property -dict { PACKAGE_PIN T20   IOSTANDARD LVCMOS33 } [get_ports { sd_d[2] }]; #IO_L6N_T0_D08_VREF_14 Sch=sd_d[2]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { sd_d[3] }]; #IO_L18N_T2_A11_D27_14 Sch=sd_d[3]
#set_property -dict { PACKAGE_PIN V20   IOSTANDARD LVCMOS33 } [get_ports { sd_reset }]; #IO_L11N_T1_SRCC_14 Sch=sd_reset


## I2C
#set_property -dict { PACKAGE_PIN W5    IOSTANDARD LVCMOS33 } [get_ports { scl }]; #IO_L15N_T2_DQS_34 Sch=scl
#set_property -dict { PACKAGE_PIN V5    IOSTANDARD LVCMOS33 } [get_ports { sda }]; #IO_L16N_T2_34 Sch=sda


## Voltage Adjust
set_property -dict {PACKAGE_PIN AA13 IOSTANDARD LVCMOS25} [get_ports {set_vadj[0]}]
set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS25} [get_ports {set_vadj[1]}]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS25} [get_ports vadj_en]


## FMC (Vadj)
#set_property -dict { PACKAGE_PIN H19   IOSTANDARD LVCMOS25 } [get_ports { -fmc_clk0_m2c_n }]; #IO_L12N_T1_MRCC_15 Sch=fmc_clk0_m2c_n
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS25 } [get_ports { -fmc_clk0_m2c_p }]; #IO_L12P_T1_MRCC_15 Sch=fmc_clk0_m2c_p
#set_property -dict { PACKAGE_PIN C19   IOSTANDARD LVCMOS25 } [get_ports { -fmc_clk1_m2c_n }]; #IO_L13N_T2_MRCC_16 Sch=fmc_clk1_m2c_n
#set_property -dict { PACKAGE_PIN C18   IOSTANDARD LVCMOS25 } [get_ports { -fmc_clk1_m2c_p }]; #IO_L13P_T2_MRCC_16 Sch=fmc_clk1_m2c_p
set_property IOSTANDARD LVDS_25 [get_ports usbc2_CLK_no]
set_property -dict { PACKAGE_PIN K19   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc2_CLK_no }];     #IO_L13N_T2_MRCC_15 Sch=fmc_la00_cc_n
set_property PACKAGE_PIN K18 [get_ports usbc2_CLK_po]
set_property PACKAGE_PIN K19 [get_ports usbc2_CLK_no]
set_property IOSTANDARD LVDS_25 [get_ports usbc2_CLK_po]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc2_CLK_po }];     #IO_L13P_T2_MRCC_15 Sch=fmc_la00_cc_p
#set_property -dict { PACKAGE_PIN J21   IOSTANDARD LVCMOS25 } [get_ports { fmc_la01_cc_n }];   #IO_L11N_T1_SRCC_15 Sch=fmc_la01_cc_n
set_property -dict { PACKAGE_PIN J20   IOSTANDARD LVCMOS25 } [get_ports { usbc2_CC2_i }];       #IO_L11P_T1_SRCC_15 Sch=fmc_la01_cc_p
set_property -dict {PACKAGE_PIN L18 IOSTANDARD LVDS_25 DIFF_TERM 1 IBUF_LOW_PWR 0} [get_ports j2_DOUT_ni]
set_property -dict {PACKAGE_PIN M18 IOSTANDARD LVDS_25 DIFF_TERM 1 IBUF_LOW_PWR 0} [get_ports j2_DOUT_pi]
set_property IOSTANDARD LVDS_25 [get_ports usbc2_DCLK_no]
set_property -dict { PACKAGE_PIN N19   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc2_DCLK_no }];    #IO_L17N_T2_A25_15 Sch=fmc_la_n[03]
set_property PACKAGE_PIN N18 [get_ports usbc2_DCLK_po]
set_property PACKAGE_PIN N19 [get_ports usbc2_DCLK_no]
set_property IOSTANDARD LVDS_25 [get_ports usbc2_DCLK_po]
set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc2_DCLK_po }];    #IO_L17P_T2_A26_15 Sch=fmc_la_p[03]
set_property -dict {PACKAGE_PIN M20 IOSTANDARD LVDS_25 DIFF_TERM 1 IBUF_LOW_PWR 0} [get_ports j2_DVALID_ni]
set_property -dict {PACKAGE_PIN N20 IOSTANDARD LVDS_25 DIFF_TERM 1 IBUF_LOW_PWR 0} [get_ports j2_DVALID_pi]
set_property IOSTANDARD LVDS_25 [get_ports usbc2_CLK_CFG_no]
set_property -dict { PACKAGE_PIN L21   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc2_CLK_CFG_no }]; #IO_L10N_T1_AD11N_15 Sch=fmc_la_n[05]
set_property PACKAGE_PIN M21 [get_ports usbc2_CLK_CFG_po]
set_property PACKAGE_PIN L21 [get_ports usbc2_CLK_CFG_no]
set_property IOSTANDARD LVDS_25 [get_ports usbc2_CLK_CFG_po]
set_property -dict { PACKAGE_PIN M21   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc2_CLK_CFG_po }]; #IO_L10P_T1_AD11P_15 Sch=fmc_la_p[05]
#set_property -dict { PACKAGE_PIN M22   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_n[06] }];    #IO_L15N_T2_DQS_ADV_B_15 Sch=fmc_la_n[06]
set_property -dict {PACKAGE_PIN N22 IOSTANDARD LVCMOS25} [get_ports usbc2_DVALID_i]
set_property -dict {PACKAGE_PIN L13 IOSTANDARD LVCMOS25} [get_ports ju2_RESET_o]
set_property -dict {PACKAGE_PIN M13 IOSTANDARD LVCMOS25} [get_ports ju2_CONV_o]
set_property -dict {PACKAGE_PIN M16 IOSTANDARD LVDS_25 DIFF_TERM 1 IBUF_LOW_PWR 0} [get_ports usbc2_DOUT_ni]
set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVDS_25 DIFF_TERM 1 IBUF_LOW_PWR 0} [get_ports usbc2_DOUT_pi]
set_property IOSTANDARD LVDS_25 [get_ports usbc2_DIN_CFG_no]
set_property -dict { PACKAGE_PIN G20   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc2_DIN_CFG_no }]; #IO_L8N_T1_AD10N_15 Sch=fmc_la_n[09]
set_property PACKAGE_PIN H20 [get_ports usbc2_DIN_CFG_po]
set_property PACKAGE_PIN G20 [get_ports usbc2_DIN_CFG_no]
set_property IOSTANDARD LVDS_25 [get_ports usbc2_DIN_CFG_po]
set_property -dict { PACKAGE_PIN H20   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc2_DIN_CFG_po }]; #IO_L8P_T1_AD10P_15 Sch=fmc_la_p[09]
set_property -dict {PACKAGE_PIN K22 IOSTANDARD LVDS_25 DIFF_TERM 1 IBUF_LOW_PWR 0} [get_ports j1_DOUT_ni]
set_property -dict {PACKAGE_PIN K21 IOSTANDARD LVDS_25 DIFF_TERM 1 IBUF_LOW_PWR 0} [get_ports j1_DOUT_pi]
set_property IOSTANDARD LVDS_25 [get_ports j2_DIN_CFG_no]
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j2_DIN_CFG_no }];    #IO_L22N_T3_A16_15 Sch=fmc_la_n[11]
set_property PACKAGE_PIN L14 [get_ports j2_DIN_CFG_po]
set_property PACKAGE_PIN L15 [get_ports j2_DIN_CFG_no]
set_property IOSTANDARD LVDS_25 [get_ports j2_DIN_CFG_po]
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j2_DIN_CFG_po }];    #IO_L22P_T3_A17_15 Sch=fmc_la_p[11]
#set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_n[12] }];    #IO_L14N_T2_SRCC_15 Sch=fmc_la_n[12]
#set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_p[12] }];    #IO_L14P_T2_SRCC_15 Sch=fmc_la_p[12]
set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVDS_25 DIFF_TERM 1 IBUF_LOW_PWR 0} [get_ports j1_DVALID_ni]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVDS_25 DIFF_TERM 1 IBUF_LOW_PWR 0} [get_ports j1_DVALID_pi]
set_property IOSTANDARD LVDS_25 [get_ports j1_DIN_CFG_no]
set_property -dict { PACKAGE_PIN H22   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j1_DIN_CFG_no }];    #IO_L7N_T1_AD2N_15 Sch=fmc_la_n[14]
set_property PACKAGE_PIN J22 [get_ports j1_DIN_CFG_po]
set_property PACKAGE_PIN H22 [get_ports j1_DIN_CFG_no]
set_property IOSTANDARD LVDS_25 [get_ports j1_DIN_CFG_po]
set_property -dict { PACKAGE_PIN J22   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j1_DIN_CFG_po }];    #IO_L7P_T1_AD2P_15 Sch=fmc_la_p[14]
set_property IOSTANDARD LVDS_25 [get_ports j2_CLK_CFG_no]
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j2_CLK_CFG_no }];    #IO_L23N_T3_FWE_B_15 Sch=fmc_la_n[15]
set_property PACKAGE_PIN L16 [get_ports j2_CLK_CFG_po]
set_property PACKAGE_PIN K16 [get_ports j2_CLK_CFG_no]
set_property IOSTANDARD LVDS_25 [get_ports j2_CLK_CFG_po]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j2_CLK_CFG_po }];    #IO_L23P_T3_FOE_B_15 Sch=fmc_la_p[15]
#set_property -dict { PACKAGE_PIN G18   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_n[16] }];    #IO_L4N_T0_15 Sch=fmc_la_n[16]
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_p[16] }];    #IO_L4P_T0_15 Sch=fmc_la_p[16]
set_property IOSTANDARD LVDS_25 [get_ports j1_CLK_CFG_no]
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j1_CLK_CFG_no }];    #IO_L11N_T1_SRCC_16 Sch=fmc_la17_cc_n
set_property PACKAGE_PIN B17 [get_ports j1_CLK_CFG_po]
set_property PACKAGE_PIN B18 [get_ports j1_CLK_CFG_no]
set_property IOSTANDARD LVDS_25 [get_ports j1_CLK_CFG_po]
set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j1_CLK_CFG_po }];    #IO_L11P_T1_SRCC_16 Sch=fmc_la17_cc_p
set_property IOSTANDARD LVDS_25 [get_ports j1_CLK_no]
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j1_CLK_no }];        #IO_L12N_T1_MRCC_16 Sch=fmc_la18_cc_n
set_property PACKAGE_PIN D17 [get_ports j1_CLK_po]
set_property PACKAGE_PIN C17 [get_ports j1_CLK_no]
set_property IOSTANDARD LVDS_25 [get_ports j1_CLK_po]
set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j1_CLK_po }];        #IO_L12P_T1_MRCC_16 Sch=fmc_la18_cc_p
set_property IOSTANDARD LVDS_25 [get_ports j2_CLK_no]
set_property -dict { PACKAGE_PIN A19   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j2_CLK_no }];        #IO_L17N_T2_16 Sch=fmc_la_n[19]
set_property PACKAGE_PIN A18 [get_ports j2_CLK_po]
set_property PACKAGE_PIN A19 [get_ports j2_CLK_no]
set_property IOSTANDARD LVDS_25 [get_ports j2_CLK_po]
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j2_CLK_po }];        #IO_L17P_T2_16 Sch=fmc_la_p[19]
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS25 } [get_ports { -fmc_la_n[20] }];   #IO_L18N_T2_16 Sch=fmc_la_n[20]
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS25 } [get_ports { -fmc_la_p[20] }];   #IO_L18P_T2_16 Sch=fmc_la_p[20]
set_property IOSTANDARD LVDS_25 [get_ports j2_DCLK_no]
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j2_DCLK_no }];       #IO_L14N_T2_SRCC_16 Sch=fmc_la_n[21]
set_property PACKAGE_PIN E19 [get_ports j2_DCLK_po]
set_property PACKAGE_PIN D19 [get_ports j2_DCLK_no]
set_property IOSTANDARD LVDS_25 [get_ports j2_DCLK_po]
set_property -dict { PACKAGE_PIN E19   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j2_DCLK_po }];       #IO_L14P_T2_SRCC_16 Sch=fmc_la_p[21]
set_property -dict {PACKAGE_PIN D21 IOSTANDARD LVCMOS25} [get_ports ju1_CONV_o]
set_property -dict {PACKAGE_PIN E21 IOSTANDARD LVCMOS25} [get_ports ju1_RESET_o]
#set_property -dict { PACKAGE_PIN A21   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_n[23] }];    #IO_L21N_T3_DQS_16 Sch=fmc_la_n[23]
#set_property -dict { PACKAGE_PIN B21   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_p[23] }];    #IO_L21P_T3_DQS_16 Sch=fmc_la_p[23]
#set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_n[24] }];    #IO_L7N_T1_16 Sch=fmc_la_n[24]
#set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_p[24] }];    #IO_L7P_T1_16 Sch=fmc_la_p[24]
set_property IOSTANDARD LVDS_25 [get_ports usbc1_CLK_no]
set_property -dict { PACKAGE_PIN E17   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc1_CLK_no }];     #IO_L2N_T0_16 Sch=fmc_la_n[25]
set_property PACKAGE_PIN F16 [get_ports usbc1_CLK_po]
set_property PACKAGE_PIN E17 [get_ports usbc1_CLK_no]
set_property IOSTANDARD LVDS_25 [get_ports usbc1_CLK_po]
set_property -dict { PACKAGE_PIN F16   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc1_CLK_po }];     #IO_L2P_T0_16 Sch=fmc_la_p[25]
set_property IOSTANDARD LVDS_25 [get_ports usbc1_DCLK_no]
set_property -dict { PACKAGE_PIN E18   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc1_DCLK_no }];    #IO_L15N_T2_DQS_16 Sch=fmc_la_n[26]
set_property PACKAGE_PIN F18 [get_ports usbc1_DCLK_po]
set_property PACKAGE_PIN E18 [get_ports usbc1_DCLK_no]
set_property IOSTANDARD LVDS_25 [get_ports usbc1_DCLK_po]
set_property -dict { PACKAGE_PIN F18   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc1_DCLK_po }];    #IO_L15P_T2_DQS_16 Sch=fmc_la_p[26]
set_property IOSTANDARD LVDS_25 [get_ports j1_DCLK_no]
set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j1_DCLK_no }];       #IO_L16N_T2_16 Sch=fmc_la_n[27]
set_property PACKAGE_PIN B20 [get_ports j1_DCLK_po]
set_property PACKAGE_PIN A20 [get_ports j1_DCLK_no]
set_property IOSTANDARD LVDS_25 [get_ports j1_DCLK_po]
set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { j1_DCLK_po }];       #IO_L16P_T2_16 Sch=fmc_la_p[27]
#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_n[28] }];    #IO_L8N_T1_16 Sch=fmc_la_n[28]
#set_property -dict { PACKAGE_PIN C13   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_p[28] }];    #IO_L8P_T1_16 Sch=fmc_la_p[28]
set_property IOSTANDARD LVDS_25 [get_ports usbc1_CLK_CFG_no]
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc1_CLK_CFG_no }]; #IO_L3N_T0_DQS_16 Sch=fmc_la_n[29]
set_property PACKAGE_PIN C14 [get_ports usbc1_CLK_CFG_po]
set_property PACKAGE_PIN C15 [get_ports usbc1_CLK_CFG_no]
set_property IOSTANDARD LVDS_25 [get_ports usbc1_CLK_CFG_po]
set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc1_CLK_CFG_po }]; #IO_L3P_T0_DQS_16 Sch=fmc_la_p[29]
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS25 } [get_ports { usbc1_CC2_i }];       #IO_L10N_T1_16 Sch=fmc_la_n[30]
set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVCMOS25} [get_ports usbc1_DVALID_i]
set_property IOSTANDARD LVDS_25 [get_ports usbc1_DOUT_ni]
set_property IBUF_LOW_PWR FALSE [get_ports usbc1_DOUT_ni]
set_property PACKAGE_PIN E13 [get_ports usbc1_DOUT_pi]
set_property PACKAGE_PIN E14 [get_ports usbc1_DOUT_ni]
set_property IOSTANDARD LVDS_25 [get_ports usbc1_DOUT_pi]
set_property IBUF_LOW_PWR FALSE [get_ports usbc1_DOUT_pi]
#set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_n[32] }];    #IO_L9N_T1_DQS_16 Sch=fmc_la_n[32]
#set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS25 } [get_ports { fmc_la_p[32] }];    #IO_L9P_T1_DQS_16 Sch=fmc_la_p[32]
set_property IOSTANDARD LVDS_25 [get_ports usbc1_DIN_CFG_no]
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc1_DIN_CFG_no }]; #IO_L1N_T0_16 Sch=fmc_la_n[33]
set_property PACKAGE_PIN F13 [get_ports usbc1_DIN_CFG_po]
set_property PACKAGE_PIN F14 [get_ports usbc1_DIN_CFG_no]
set_property IOSTANDARD LVDS_25 [get_ports usbc1_DIN_CFG_po]
set_property -dict { PACKAGE_PIN F13   IOSTANDARD LVDS_25  SLEW FAST} [get_ports { usbc1_DIN_CFG_po }]; #IO_L1P_T0_16 Sch=fmc_la_p[33]


## Configuration options, can be used for all designs
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]


