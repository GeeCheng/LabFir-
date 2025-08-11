# FIR Filter Optimization Synthesis Script
# Target: Xilinx Zynq-7020 (xc7z020clg400-1)

# Performance optimization synthesis script
set_param general.maxThreads 8

# Create project for optimized design
create_project fir_optimized ./fir_optimized_project -part xc7z020clg400-1 -force

# Add source files
add_files -norecurse {
    fir_optimized.v
}

# Add constraint file for optimization
set constraint_file "./fir_optimization_constraints.xdc"
add_files -fileset constrs_1 -norecurse $constraint_file

# Create constraints file with optimization directives
set fp [open $constraint_file w]
puts $fp {
# Timing Constraints for Optimized FIR Filter
# Target frequency: 160 MHz (6.25 ns period)

# Primary clock constraint
create_clock -period 6.25 -name axis_clk [get_ports axis_clk]

# Input/Output Delays - optimized for AXI interfaces
set_input_delay -clock axis_clk -max 2.0 [get_ports {awvalid awaddr wvalid wdata arvalid araddr ss_tvalid ss_tdata ss_tlast sm_tready}]
set_input_delay -clock axis_clk -min 0.5 [get_ports {awvalid awaddr wvalid wdata arvalid araddr ss_tvalid ss_tdata ss_tlast sm_tready}]

set_output_delay -clock axis_clk -max 2.0 [get_ports {awready wready arready rvalid rdata ss_tready sm_tvalid sm_tdata sm_tlast}]
set_output_delay -clock axis_clk -min 0.5 [get_ports {awready wready arready rvalid rdata ss_tready sm_tvalid sm_tdata sm_tlast}]

# Critical path constraints for pipeline optimization
set_max_delay -from [get_pins */h_reg_stage1_reg*/C] -to [get_pins */mult_result_stage1_reg*/D] 6.0
set_max_delay -from [get_pins */x_reg_stage1_reg*/C] -to [get_pins */mult_result_stage1_reg*/D] 6.0

# Memory interface timing optimization
set_max_delay -from [get_pins */k_reg*/C] -to [get_ports {tap_A data_A}] 4.0

# DSP block optimization - encourage DSP inference
set_property USE_DSP yes [get_cells -hierarchical -filter {NAME =~ "*mult*"}]

# Synthesis directives for performance optimization
set_property STRATEGY Performance_Explore [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.DIRECTIVE PerformanceOptimized [get_runs synth_1]
set_property STEPS.SYNTH_DESIGN.ARGS.RETIMING true [get_runs synth_1]

# Place and Route optimization
set_property STRATEGY Performance_ExtraTimingOpt [get_runs impl_1]
set_property STEPS.PLACE_DESIGN.ARGS.DIRECTIVE ExtraTimingOpt [get_runs impl_1]
set_property STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE AlternateCLBRouting [get_runs impl_1]

# Floorplanning for critical paths (optional - uncomment if needed)
# create_pblock pblock_mac_pipeline
# add_cells_to_pblock pblock_mac_pipeline [get_cells -hierarchical -filter {NAME =~ "*h_reg_stage*" || NAME =~ "*x_reg_stage*" || NAME =~ "*mult_result*"}]
# resize_pblock pblock_mac_pipeline -add {SLICE_X0Y0:SLICE_X25Y49}

# Power optimization
set_property POWER_OPT.PAR_HIGH_EFFORT true [get_runs impl_1]
}
close $fp

# Set synthesis properties for optimization
set_property top fir_optimized [current_fileset]
set_property target_language Verilog [current_project]

# Synthesis with optimization
launch_runs synth_1 -jobs 8
wait_on_run synth_1

# Check synthesis results
if {[get_property PROGRESS [get_runs synth_1]] != "100%"} {
    error "Synthesis failed"
}

# Generate utilization report
open_run synth_1 -name synth_1
report_utilization -file fir_optimized_utilization.rpt
report_timing_summary -file fir_optimized_timing_synth.rpt
report_power -file fir_optimized_power_synth.rpt

# Implementation
launch_runs impl_1 -jobs 8
wait_on_run impl_1

# Check implementation results
if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
    error "Implementation failed"
}

# Generate final reports
open_run impl_1
report_utilization -file fir_optimized_utilization_impl.rpt
report_timing_summary -file fir_optimized_timing_impl.rpt
report_power -file fir_optimized_power_impl.rpt

# Performance analysis
set timing_slack [get_property SLACK [get_timing_paths -max_paths 1]]
set achieved_freq [expr 1000 / ([get_property REQUIREMENT [get_clocks axis_clk]] - $timing_slack)]

puts "====== OPTIMIZATION RESULTS ======"
puts "Target Frequency: 160 MHz"
puts "Achieved Frequency: $achieved_freq MHz"
puts "Timing Slack: $timing_slack ns"

# Resource comparison with original design
puts "====== RESOURCE UTILIZATION ======"
set luts [get_property USED [get_cells -hierarchical -filter {PRIMITIVE_TYPE =~ LUT*}]]
set ffs [get_property USED [get_cells -hierarchical -filter {PRIMITIVE_TYPE =~ FDRE}]]
set dsps [get_property USED [get_cells -hierarchical -filter {PRIMITIVE_TYPE =~ DSP48E1}]]

puts "LUTs Used: $luts"
puts "Flip-Flops Used: $ffs" 
puts "DSP Blocks Used: $dsps"

# Comparison with original (from synthesis report)
set orig_luts 500
set orig_ffs 343
set orig_dsps 3

set lut_improvement [expr ($orig_luts - $luts) * 100.0 / $orig_luts]
set ff_change [expr ($ffs - $orig_ffs) * 100.0 / $orig_ffs]
set dsp_utilization [expr $dsps * 100.0 / 220]

puts "LUT Improvement: [format %.1f $lut_improvement]%"
puts "FF Change: [format %.1f $ff_change]%"
puts "DSP Utilization: [format %.1f $dsp_utilization]%"

# Save final checkpoint
write_checkpoint -force fir_optimized_final.dcp

puts "====== OPTIMIZATION COMPLETE ======"
puts "Reports generated:"
puts "  - fir_optimized_utilization_impl.rpt"
puts "  - fir_optimized_timing_impl.rpt"
puts "  - fir_optimized_power_impl.rpt"