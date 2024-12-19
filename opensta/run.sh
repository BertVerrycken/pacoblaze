#!/bin/bash

if [ -f "../yosys/args.tcl" ]; then
  echo "Running opensta"
  sta opensta.tcl
else
  echo "No args.tcl file found. Please run yosys first in ../yosys via the run.sh file there."
fi
