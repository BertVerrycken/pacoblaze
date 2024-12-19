source ../yosys/args.tcl
read_liberty $lib
read_verilog ../yosys/$post_net
link_design $top
read_sdc default.sdc
report_checks
exit
