#!/bin/bash

############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "The run script runs yosys with these options:"
   echo
   echo "Syntax: run.sh [-h|i|l|d|o|n]"
   echo "options:"
   echo "h          Print this help."
   echo "i          Include sv to verilog conversion step."
   echo "l <lib>    Define the tech library (options: default: 130, others: 45, 7)."
   echo "d <design> Design top level verilog module name (default: pacoblaze3)."
   echo "o          Run opensta."
   echo "o          Run opensta."
   echo "n          No args.tcl file overwrite"
   echo "Example:"
   echo "  run.sh -i -l 130 -d pacoblaze3"

}

############################################################
############################################################
# Main program                                             #
############################################################
############################################################
convert="FALSE"
lib="130"
design="pacoblaze3"
sta="FALSE"
overwrite="TRUE"

while getopts "hil:d:on" option; do
   case $option in
      h) # display Help
         Help
         exit;;
      \?) # Invalid option
         echo "Error invalid option"
         exit;;
      i) # Include step to convert sv to verilog
         convert="TRUE";;
      l) # Define liberty library
         lib=$OPTARG;;
      d) # Define design
         design=$OPTARG;;
      o) # Run opensta
         sta="TRUE";;
      n) # Don't overwrite the args.tcl file if already existing
         overwrite="FALSE";;
   esac
done

echo "Running with following options:"
echo "  Convert sv to v:       -i ${convert}"
echo "  Tech liberty file:     -l ${lib}"
echo "  Design unit:           -d ${design}"
echo "  Run opensta:           -o ${sta}"
echo "  Don't create args.tcl: -n ${overwrite}"
echo ""

# Copy and cleanup stuff
echo "Moving stuff to dir old and cleaning up"
if [ -d "old" ]; then
  cp args.tcl old/
  mv *netlist.v old/
  mv *.log old/
else
  mkdir old
  cp args.tcl old/
  mv *netlist.v old/
  mv *.log old/
fi

if [ "$convert" == "TRUE" ]; then
  sv2v ../pacoblaze/pacoblaze3.v ../pacoblaze/pacoblaze_inc.v ../pacoblaze/pacoblaze_register.v ../pacoblaze/pacoblaze_scratch.v \
       ../pacoblaze/pacoblaze_util.v ../pacoblaze/addsub.v ../pacoblaze/blockram.v ../pacoblaze/pacoblaze_stack.v \
       ../pacoblaze/pacoblaze_idu.v ../pacoblaze/pacoblaze_alu.v ../pacoblaze/pacoblaze.v > pacoblaze3.v
fi

if [ "$overwrite" == "TRUE" ]; then
  if [ "$lib" == "130" ]; then
    echo "set lib \"../../hdllibs/sky130b/lib/sky130_fd_sc_hd__tt_025C_1v80.lib\"" > args.tcl
  fi
  if [ "$lib" == "45" ]; then
    echo "set lib \"../../hdllibs/nand45/lib/NangateOpenCellLibrary_typical_no_clkgates.lib\"" > args.tcl
  fi
  if [ "$lib" == "7" ]; then
    echo "set lib \"../../hdllibs/asap7/lib/asap7.lib\"" > args.tcl
  fi

  if [ "$design" == "pacoblaze3" ]; then
    echo "set top      \"${design}\"" >> args.tcl
    echo "set design   \"./${design}.v\"" >> args.tcl
    echo "set pre_net  \"./${design}_generic_netlist.v\"" >> args.tcl
    echo "set pre_opt  \"./${design}_before_opt_netlist.v\"" >> args.tcl
    echo "set post_net \"./${design}_netlist.v\"" >> args.tcl
  fi
fi

# Run synthesis
if [ -f "./args.tcl" ]; then
  echo "Running synthesis"
  yosys -c yosys.synth.tcl -l yosys.synth.log
else
  echo "ERROR: No args.tcl found"
fi

# Report area
if [ -f "./${design}_netlist.v" ]; then
  echo "Running reporting"
  yosys -c yosys.report.tcl -l yosys.report.log
  if [ "$sta" == "TRUE" ]; then
    cd ../opensta
    ./run.sh
    cd ../yosys
  fi
else
  echo "ERROR: No netlist generated"
fi
