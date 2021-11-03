set clock_constraint { \
    name clk \
    module icmp_server \
    port ap_clk \
    period 3.1 \
    uncertainty 0.2 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module icmp_server \
            instance myIpAddress \
            bitWidth 32 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

