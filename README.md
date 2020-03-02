# WoL.sh
WoL.sh is a simple shell Wake-on-LAN script.

## Compatibility
WoL.sh should *(but is not guaranteed to)* work on __Mac__ or __Linux__ systems.  The author used this utility from a macOS 10.15.3 system to wake up a Windows 10 PC.

## Syntax
Usage: `wol.sh [MAC] [IP] [Port]`
   
   MAC:    mandatory, MAC address of the target machine
   IP:     optional, the magic packet will be sent to this IP
           default: 255.255.255.255 (broadcast to all IPs)
   Port:   optional, the magic packet will be sent to this port
           default: 9

## Why WoL.sh
<b>WoL.sh does not require installation.</b>  Most authors recommend dedicated programs to perform Wake-on-LAN. A common example is "wakeonlan" for Macs.  These programs are well-tested and probably contain more features than WoL.sh.  But there are many scenarios where installing a program is inappropriate or not allowed (e.g. on a company machine) or there may be  concerns over installing new software.

## What is Wake-on-LAN or Wake-on-WLAN?
A computer can be configured to wake from sleep when it receieves a special network message known as a "Magic Packet".  This technique is known as "Wake-on-LAN" (for a computer using a wired connection) or "Wake-on-WLAN" (for a computer using a wireless connection).  Read more on https://en.wikipedia.org/wiki/Wake-on-LAN

## Licence
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
