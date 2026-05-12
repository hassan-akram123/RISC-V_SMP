#=========================================================
# SDC for rv64i_top
# Based on NCDC PD Lab #01 style
#=========================================================

#----------------------------------------
# Clock definition
# 10ns period = 100 MHz
# 50% duty cycle waveform
#----------------------------------------
create_clock -name clk_i -period 10 -waveform {0 5} [get_ports clk_i]

#----------------------------------------
# Clock uncertainty
# Manual examples discuss setup and hold uncertainty
#----------------------------------------
set_clock_uncertainty -setup 2 [get_clocks clk_i]
set_clock_uncertainty -hold  1 [get_clocks clk_i]

#----------------------------------------
# Clock transition
# Lab manual shows rise/fall transition constraints
#----------------------------------------
set_clock_transition -rise 0.1 [get_clocks clk_i]
set_clock_transition -fall 0.1 [get_clocks clk_i]

#----------------------------------------
# Input transition
# Apply to all non-clock inputs
#----------------------------------------
set_input_transition -max 1.0 [remove_from_collection [all_inputs] [get_ports clk_i]]

#----------------------------------------
# Input delays with respect to clock
# Apply to all inputs except clk_i
#----------------------------------------
set_input_delay -clock [get_clocks clk_i] 1.0 [remove_from_collection [all_inputs] [get_ports clk_i]]

#----------------------------------------
# Output delays with respect to clock
#----------------------------------------
set_output_delay -clock [get_clocks clk_i] 1.0 [all_outputs]

#----------------------------------------
# Reset handling
# Since resetn_i is an async reset input, do not time it as normal data
#----------------------------------------
set_false_path -from [get_ports resetn_i]
