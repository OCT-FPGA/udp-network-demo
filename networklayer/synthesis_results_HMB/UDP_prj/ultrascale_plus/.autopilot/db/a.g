#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/ubuntu/xup_vitis_network_example/NetLayers/100G-fpga-network-stack-core/synthesis_results_HMB/UDP_prj/ultrascale_plus/.autopilot/db/a.g.bc ${1+"$@"}
