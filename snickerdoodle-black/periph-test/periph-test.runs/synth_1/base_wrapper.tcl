# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
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
create_project -in_memory -part xc7z020clg400-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir Z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.cache/wt [current_project]
set_property parent.project_path Z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths Z:/Software/snickerdoodle-board-files [current_project]
set_property board_part krtkl.com:snickerdoodle_black:part0:1.0 [current_project]
set_property ip_output_repo z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib Z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/hdl/base_wrapper.v
add_files Z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/base.bd
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_processing_system7_0_0/base_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_gpio_0_0/base_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_gpio_0_0/base_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_gpio_0_0/base_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_iic_0_0/base_axi_iic_0_0_board.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_iic_0_0/base_axi_iic_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_quad_spi_0_0/base_axi_quad_spi_0_0_board.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_quad_spi_0_0/base_axi_quad_spi_0_0.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_quad_spi_0_0/base_axi_quad_spi_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_quad_spi_0_0/base_axi_quad_spi_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_uart16550_0_0/base_axi_uart16550_0_0_board.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_uart16550_0_0/base_axi_uart16550_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_axi_uart16550_0_0/base_axi_uart16550_0_0.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_rst_ps7_0_99M_0/base_rst_ps7_0_99M_0_board.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_rst_ps7_0_99M_0/base_rst_ps7_0_99M_0.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_rst_ps7_0_99M_0/base_rst_ps7_0_99M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_xbar_0/base_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/ip/base_auto_pc_0/base_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all Z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/sources_1/bd/base/base_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc Z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/constrs_1/new/top.xdc
set_property used_in_implementation false [get_files Z:/Projects/snickerdoodle/snickerdoodle-examples/snickerdoodle-black/periph-test/periph-test.srcs/constrs_1/new/top.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top base_wrapper -part xc7z020clg400-3


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef base_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file base_wrapper_utilization_synth.rpt -pb base_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
