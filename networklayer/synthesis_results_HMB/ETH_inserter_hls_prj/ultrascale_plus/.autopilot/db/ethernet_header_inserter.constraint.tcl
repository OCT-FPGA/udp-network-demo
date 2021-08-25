set clock_constraint { \
    name clk \
    module ethernet_header_inserter \
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
            module ethernet_header_inserter \
            instance myMacAddress_V \
            bitWidth 48 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

set one_path { \
    name conx_path_1 \
    type single_source \
    source { \
            module ethernet_header_inserter \
            instance regSubNetMask_V \
            bitWidth 32 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1

set one_path { \
    name conx_path_2 \
    type single_source \
    source { \
            module ethernet_header_inserter \
            instance regDefaultGateway_V \
            bitWidth 32 \
            type port \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_2

