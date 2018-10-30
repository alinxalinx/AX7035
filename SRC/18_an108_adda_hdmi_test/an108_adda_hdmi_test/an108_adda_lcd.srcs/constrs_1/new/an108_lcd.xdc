############## NET - IOSTANDARD ##################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLUP [current_design]
#############SPI Configurate Setting##################
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design] 
set_property CONFIG_MODE SPIx4 [current_design] 
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design] 
############## clock and reset define##################
create_clock -period 20 [get_ports sys_clk]
set_property IOSTANDARD LVCMOS33 [get_ports {sys_clk}]
set_property PACKAGE_PIN Y18 [get_ports {sys_clk}]

set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]
set_property PACKAGE_PIN F20 [get_ports {rst_n}]
############## HDMI_O###########################
set_property IOSTANDARD TMDS_33 [get_ports tmds_clk_n]

set_property PACKAGE_PIN E1 [get_ports tmds_clk_p]
set_property IOSTANDARD TMDS_33 [get_ports tmds_clk_p]

set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n[0]}]

set_property PACKAGE_PIN G1 [get_ports {tmds_data_p[0]}]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p[0]}]

set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n[1]}]

set_property PACKAGE_PIN H2 [get_ports {tmds_data_p[1]}]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p[1]}]

set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_n[2]}]

set_property PACKAGE_PIN K1 [get_ports {tmds_data_p[2]}]
set_property IOSTANDARD TMDS_33 [get_ports {tmds_data_p[2]}]


set_property PACKAGE_PIN M6 [get_ports {HDMI_OEN[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {HDMI_OEN[0]}]

### Asynchronous clock domain crossings ###
set_false_path -through [get_pins -filter {NAME =~ */SyncAsync*/oSyncStages*/PRE || NAME =~ */SyncAsync*/oSyncStages*/CLR} -hier]
set_false_path -through [get_pins -filter {NAME =~ *SyncAsync*/oSyncStages_reg[0]/D} -hier]
########AN108 ON AX7035 J9##################
set_property PACKAGE_PIN F14 [get_ports {ad9708_clk}]
set_property PACKAGE_PIN F13  [get_ports {ad9708_data[7]}]
set_property PACKAGE_PIN E14 [get_ports {ad9708_data[6]}]
set_property PACKAGE_PIN E13 [get_ports {ad9708_data[5]}]
set_property PACKAGE_PIN D15 [get_ports {ad9708_data[4]}]
set_property PACKAGE_PIN D14  [get_ports {ad9708_data[3]}]
set_property PACKAGE_PIN B13 [get_ports {ad9708_data[2]}]
set_property PACKAGE_PIN C13 [get_ports {ad9708_data[1]}]
set_property PACKAGE_PIN A14  [get_ports {ad9708_data[0]}]
set_property PACKAGE_PIN B18  [get_ports {ad9280_data[0]}]
set_property PACKAGE_PIN B17  [get_ports {ad9280_data[1]}]
set_property PACKAGE_PIN A19  [get_ports {ad9280_data[2]}]
set_property PACKAGE_PIN A18  [get_ports {ad9280_data[3]}]
set_property PACKAGE_PIN C19 [get_ports {ad9280_data[4]}]
set_property PACKAGE_PIN C18 [get_ports {ad9280_data[5]}]
set_property PACKAGE_PIN A20  [get_ports {ad9280_data[6]}]
set_property PACKAGE_PIN B20  [get_ports {ad9280_data[7]}]
set_property PACKAGE_PIN C17  [get_ports {ad9280_clk}]

set_property IOSTANDARD LVCMOS33 [get_ports {ad9708_clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9708_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9708_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9708_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9708_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9708_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9708_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9708_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9708_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9280_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9280_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9280_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9280_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9280_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9280_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9280_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9280_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ad9280_clk}]




