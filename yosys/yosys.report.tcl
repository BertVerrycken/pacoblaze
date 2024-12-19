source args.tcl

yosys "read_verilog -sv $post_net"

yosys "stat -liberty $lib"
