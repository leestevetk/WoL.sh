# WoL.sh
WoL.sh is a simple shell Wake-on-LAN script.

## Compatibility
WoL.sh should *(but is not guaranteed to)* work on __Mac__ or __Linux__ systems.  The author used this utility from a macOS 10.15.3 system to wake up a Windows 10 PC.

## Before Use
Like any shell script, you must first make WoL.sh executable.  This can be done by running in terminal (assuming WoL.sh is placed under `~/Desktop`):
```
chmod u+x ~/Desktop/WoL.sh
```

## Syntax
    WoL.sh [MAC] [IP] [Port]
- `MAC`: __mandatory__, MAC address of the target machine
- `IP`: *optional*, the magic packet will be sent to this IP, default: 255.255.255.255 (broadcast to all IPs)
- `Port`: *optional*, the magic packet will be sent to this port, default: 9

## Examples
The following examples assume WoL.sh is placecd under `~/Desktop` and the target computer's MAC address is `0F:1E:2D:3C:4B:5A`. Please remember to change them as appropriate.

### Example 1 (Recommended)
```
~/Desktop/WoL.sh 0F:1E:2D:3C:4B:5A 192.168.1.100
```
This will send the magic packet to 192.168.1.100 at port 9 (default).  The target computer must be at __192.168.1.100__.

### Example 2
```
~/Desktop/WoL.sh 0F:1E:2D:3C:4B:5A 192.168.1.100 9000
```
This will send the magic packet to 192.168.1.100 at port 9000.  The target computer must be at __192.168.1.100__ and must be listening at port __9000__.

## Why WoL.sh
<b>WoL.sh does not require installation.</b>  Most authors recommend dedicated programs to perform Wake-on-LAN. A common example is "wakeonlan" for Macs.  These programs are well-tested and probably contain more features than WoL.sh.  But there are many scenarios where installing a program is inappropriate or not allowed (e.g. on a company machine) or there may be  concerns over installing new software.

## What is Wake-on-LAN or Wake-on-WLAN?
A computer can be configured to wake from sleep when it receieves a special network message known as a "Magic Packet".  This technique is known as "Wake-on-LAN" (for a computer using a wired connection) or "Wake-on-WLAN" (for a computer using a wireless connection).  Read more on https://en.wikipedia.org/wiki/Wake-on-LAN

## Licence
This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
