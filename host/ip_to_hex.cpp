#include "ip_to_hex.h"
#include <sstream>

unsigned int ip_to_hex(const std::string& ip_address) {
    std::stringstream ss(ip_address);
    unsigned int a, b, c, d;
    char ch;
    ss >> a >> ch >> b >> ch >> c >> ch >> d;
    unsigned int hex = (a << 24) + (b << 16) + (c << 8) + d;
    return hex;
}

