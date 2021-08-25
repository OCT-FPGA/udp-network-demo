set clock_constraint { \
    name clk \
    module udp \
    port ap_clk \
    period 2.5 \
    uncertainty 0.2 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module udp \
            instance myIpAddress_V \
            bitWidth 32 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

