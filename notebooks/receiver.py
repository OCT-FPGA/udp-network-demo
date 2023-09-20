import argparse
import ipaddress
import numpy as np
import pynq
from vnx_utils import *
import os
import sys
from validate import *

packet_size = 1408
my_port = 60000
their_port = 50000

# Function to parse command-line arguments
def parse_args():
    parser = argparse.ArgumentParser(description='UDP receiver program with optional arguments')
    parser.add_argument('bitstream', help='Path to the bitstream file')
    parser.add_argument('--num_packets', type=int, default=1, help='Number of packets')
    parser.add_argument('--decrypt', type=validate_boolean, default=False, help='Decryption flag')
    parser.add_argument('--my_ip', type=validate_ip, default='192.168.40.200', help='My IP address')
    parser.add_argument('--their_ip', type=validate_ip,  default='192.168.40.100', help='Their IP address')
    parser.add_argument('--ip_gw', type=validate_ip, default='192.168.40.254', help='Gateway IP address')
    return parser.parse_args()

# Parse the command-line arguments
args = parse_args()

# Assign arguments to variables
bitstream = args.bitstream
num_packets = args.num_packets
decrypt = args.decrypt
my_ip = args.my_ip
their_ip = args.their_ip
ip_gw = args.ip_gw

packet_size_total = packet_size * num_packets
dest_dir = os.path.expanduser("~/udp-demo")

# Load the hardware overlay
ol = pynq.Overlay(bitstream)

# Check Link
print("Link interface 0 {}".format(ol.cmac_0.link_status()))

# Network Layer
nl = ol.networklayer_0
nl.set_ip_address(my_ip, ip_gw, debug=True)
nl.sockets[0] = (their_ip, their_port, my_port, True)
nl.populate_socket_table()
nl.arp_discovery()
nl.get_arp_table()

# User Logic
rxkrnl = ol.rxkrnl_0
rx_buf = pynq.allocate(shape=(packet_size_total,), dtype='u1')
rxkrnl_wh = rxkrnl.start(rx_buf, packet_size_total, decrypt)
rxkrnl_wh.wait()
rx_buf.sync_from_device()
rx_buf_chars = [chr(num) for num in rx_buf]
# Combine the characters into a string
rx_buf_str = ''.join(rx_buf_chars)
text_file_path = os.path.join(dest_dir, "rx_buf.txt")
with open(text_file_path, 'w') as text_file:
    text_file.write(rx_buf_str)

