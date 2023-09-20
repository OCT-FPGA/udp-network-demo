import argparse
import ipaddress
def validate_boolean(value):
    if value.lower() in ['true', 'false']:
        return value.lower() == 'true'
    else:
        raise argparse.ArgumentTypeError('Valid values are True or False')

def validate_ip(ip):
    try:
        ipaddress.ip_address(ip)
        return ip
    except ValueError:
        raise argparse.ArgumentTypeError(f"'{ip}' is not a valid IP address")

