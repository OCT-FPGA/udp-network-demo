set ModuleHierarchy {[{
"Name" : "ethernet_header_inserter","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "broadcaster_and_mac_request_U0","ID" : "1","Type" : "pipeline"},
	{"Name" : "compute_and_insert_ip_checksum_U0","ID" : "2","Type" : "pipeline"},
	{"Name" : "entry_proc_U0","ID" : "3","Type" : "sequential"},
	{"Name" : "handle_output_U0","ID" : "4","Type" : "pipeline"},]
}]}