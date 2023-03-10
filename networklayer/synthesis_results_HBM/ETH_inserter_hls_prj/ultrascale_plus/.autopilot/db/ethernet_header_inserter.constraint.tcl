set clock_constraint { \
    name clk \
    module ethernet_header_inserter \
    port ap_clk \
    period 3.1 \
    uncertainty 0.2 \
}

set all_path {}

set false_path {}

