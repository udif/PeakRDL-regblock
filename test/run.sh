#!/bin/bash
set -e


../export.py test_regblock.rdl

vlog -sv -f vlog_args.f -f src.f
vsim -c -quiet tb -do "log -r /*; run -all; exit;"
