# WoL.sh
WoL.sh is a simple Wake-on-LAN shell script.

## Compatibility
WoL.sh should *(but is not guaranteed to)* work on __Mac__ or __Linux__ systems.  The author used this utility from a macOS 10.15.3 system to wake up a Windows 10 PC.

## Download
- The latest version of WoL.sh is 0.1 (Pre-release).
- [Click here to download](https://leesteve.tk/WoL.sh/WoL.sh) the latest version of WoL.sh.
- *For old releases, please check out the project's [GitHub releases page](https://github.com/leestevetk/WoL.sh/releases).*

## Before Use
Like any shell script, you must first make WoL.sh executable.  This can be done by running in terminal (assuming WoL.sh is placed under `~/Desktop`):
```
chmod u+x ~/Desktop/WoL.sh
```

## Syntax
```
WoL.sh [MAC] [IP] [Port]
```
- `MAC`: __mandatory__, MAC address of the target machine
- `IP`: *optional*, the magic packet will be sent to this IP, default: 255.255.255.255 (broadcast to all IPs)
- `Port`: *optional*, the magic packet will be sent to this port, default: 9

## Examples
The following examples assume WoL.sh is placed under `~/Desktop` and the target computer's MAC address is `0F:1E:2D:3C:4B:5A`. Please remember to change them as appropriate.

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
__WoL.sh does not require installation.__  Most authors on the web recommend dedicated programs to perform Wake-on-LAN. A common example is "wakeonlan" for Macs.  These programs are well-tested and probably contain more features than WoL.sh.  But there are many scenarios where installing a program is inappropriate or not allowed (e.g. on a company machine) or there may be  concerns over installing new software.

## What is Wake-on-LAN or Wake-on-WLAN?
A computer can be configured to wake from sleep when it receieves a special network message known as a "Magic Packet".  This technique is known as "Wake-on-LAN" (for a computer using a wired connection) or "Wake-on-WLAN" (for a computer using a wireless connection).  Read more on https://en.wikipedia.org/wiki/Wake-on-LAN

## Licence
WoL.sh is distributed under the MIT License.
```
MIT License

Copyright (c) 2020 Steve's Toolkit

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
