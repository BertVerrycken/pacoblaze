# Name

Pacoblaze

## Prerequisites

``` language:bash
sudo apt install default-jre
'''

## Commands

### ROM generation

``` language:bash
cd test
make all
```

### Icarus Simulation

``` language:bash
cd pacoblaze
make all VERILOG=iverilog
```

The makefile seems to run this, so customize:

``` language:bash
iverilog  -DHAS_DEBUG -DTEST_FILE="\""../test/adc_ctrl.rmh"\"" -DTEST_CYCLES=2000 -DTEST_IRQ=100 -DUSE_ONEHOT_ENCODING  pacoblaze3_tb.v blockram.v pacoblaze3.v
```

It produces "a.out" which is an executable, run it.

### Documentation

``` language:bash
cd pacoblaze
make all doc
```