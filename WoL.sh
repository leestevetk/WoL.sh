# WoL.sh
# Project homepage: https://leesteve.tk/wol.sh
# Version 0.1 (20200302) (Pre-release)

# MIT License

# Copyright (c) 2020 Steve's Toolkit

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

if [ $# -le 0 ]; then
# Display help if no arguments
printf "Wake-On-LAN Utility

This utility sends a magic packet to wake up a machine properly configured to listen to Wake-On-LAN/WLAN requests.

   Usage:  WoL.sh [MAC] [IP] [Port]
   
   MAC:    mandatory, MAC address of the target machine
   
   IP:     optional, the magic packet will be sent to this IP
           default: 255.255.255.255 (broadcast to all IPs)
           
   Port:   optional, the magic packet will be sent to this port
           default: 9
   "
else
    
    # Remove separators from MAC address input
    targetmac=$(echo $1 | sed 's/[ :-]//g')
    
    # Magic packet consists of 12 f followed by 16 repetitions of target's MAC address, read https://en.wikipedia.org/wiki/Wake-on-LAN#Magic_packet
    magicpacket=$(printf "f%.0s" {1..12}; printf "$targetmac%.0s" {1..16})
    
    # Hex-escape
    magicpacket=$(echo $magicpacket | sed -e 's/../\\x&/g')
    
    # Apply defaults
    if [ $# -ge 3 ]; then
        targetip=$2
        targetport=$3
    elif [ $# -eq 2 ]; then
        targetip=$2
        targetport=9
    else
        targetip="255.255.255.255"
        targetport=""
    fi
    
    # Send magic packet
    printf "Sending magic packet..." 
    echo -e $magicpacket | nc -w1 -u $targetip $targetport
    printf " Done!"
    
fi