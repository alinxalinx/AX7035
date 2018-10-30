# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a35tfgg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.cache/wt [current_project]
set_property parent.project_path D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ad/ad9280_sample.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/aq_axi_master.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/arp_cache.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/rx/arp_rx.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/tx/arp_tx.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/crc.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/dpram.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/eth_cmd.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/eth_top.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/frame_fifo_read.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/frame_fifo_write.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/frame_read_write.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/icmp_reply.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/rx/ip_rx.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/tx/ip_tx.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/tx/ip_tx_mode.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/mac_ctrl.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/rx/mac_rx.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/rx/mac_rx_top.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/mac_top.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/tx/mac_tx.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/tx/mac_tx_mode.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/tx/mac_tx_top.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/reset.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/rx/udp_rx.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/mac/tx/udp_tx.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/imports/src/util_gmii_to_rgmii.v
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/top.v
}
read_vhdl -library xil_defaultlib {
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/imports/miim/miim_types.vhd
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/imports/miim/utility.vhd
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/imports/miim/miim.vhd
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/imports/miim/miim_registers.vhd
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/imports/miim/miim_control.vhd
  D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/imports/miim/miim_top.vhd
}
read_ip -quiet D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/ddr3/ddr3.xci
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/ddr3/ddr3/user_design/constraints/ddr3.xdc]
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/ddr3/ddr3/user_design/constraints/ddr3_ooc.xdc]

read_ip -quiet D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/afifo_16i_64o_512/afifo_16i_64o_512.xci
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/afifo_16i_64o_512/afifo_16i_64o_512.xdc]
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/afifo_16i_64o_512/afifo_16i_64o_512_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/afifo_16i_64o_512/afifo_16i_64o_512_ooc.xdc]

read_ip -quiet D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/afifo_64i_16o_128/afifo_64i_16o_128.xci
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/afifo_64i_16o_128/afifo_64i_16o_128.xdc]
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/afifo_64i_16o_128/afifo_64i_16o_128_clocks.xdc]
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/afifo_64i_16o_128/afifo_64i_16o_128_ooc.xdc]

read_ip -quiet D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/clk_200M/clk_200M.xci
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/clk_200M/clk_200M_board.xdc]
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/clk_200M/clk_200M.xdc]
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/clk_200M/clk_200M_ooc.xdc]

read_ip -quiet D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/video_pll/video_pll.xci
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/video_pll/video_pll_board.xdc]
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/video_pll/video_pll.xdc]
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/video_pll/video_pll_late.xdc]
set_property used_in_implementation false [get_files -all d:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/sources_1/ip/video_pll/video_pll_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/constrs_1/new/ad9280_ethernet.xdc
set_property used_in_implementation false [get_files D:/AX7035/23_ad9280_ethernet/ad9280_ethernet/ad9280_ethernet.srcs/constrs_1/new/ad9280_ethernet.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top top -part xc7a35tfgg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb"
