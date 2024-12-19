source args.tcl

yosys "read_verilog -sv $design"

yosys "hierarchy -check -top $top"

yosys "read_liberty $lib"

yosys "proc"

yosys "flatten"

yosys "techmap"

#yosys "opt"

yosys "synth -flatten -top $top"

#yosys "opt -purge"

yosys "write_verilog -noattr -noexpr $pre_net"

yosys "dfflibmap -prepare -liberty $lib"

#yosys "opt -purge"

# The script doesn't work, it creates unknown $something cells instead of library cells
#yosys "abc -dff -liberty $lib -script +strash;scorr;fraig;dc2;dch,-f;ifraig;retime,-D,{D},-M,6;strash"
yosys "abc -dff -liberty $lib"

yosys "dfflibmap -liberty $lib"

yosys "setundef -zero"

yosys "splitnets"

yosys "write_verilog -noattr -noexpr $pre_opt"

#yosys "opt -undriven"

yosys "opt_clean -purge"

# Seems the same as opt_clean
#yosys "clean"

# Print status isn't recognised
#yosys "abc print_stats"

yosys "check"

yosys "flatten"

yosys "write_verilog -noattr -noexpr $post_net"
#write_blif $top_netlist.blif

# Stat is crashing the tool, creating gigabytes of log file
# run the yosys.report.tcl script to get the stats
#yosys "stat -liberty $lib"
