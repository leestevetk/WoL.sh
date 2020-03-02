# WoL.sh
# Project homepage: https://leesteve.tk/wol.sh
# Version 0.1 (20200302) (Pre-release)

# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

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