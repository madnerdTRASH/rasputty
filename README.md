How does it work
========
Connect on all your Raspberry Pi with one click (on windows)

Extract the archive in the directory you want

Click on ```rasputty.bat```

Putty will launch after it have found your raspberry pi(s)

What does theses scripts do ?
========
rasputty.bat 
* Launch ipconfig and search for all your IP address
* Translate your IP to an (class C) subnet (it works with multiples IP addresses too)
* Do a silent parralel fast ping of all IP address on your subnet(s) to fill your arp cache
* Search your arp cache for Raspberry Pi MAC Address Signature
* Launch Putty with the IP of your raspberry pi(s) as arguments

RASPUTTY DOESN'T USE ANY EXTERNAL SOFTWARE FOR SCANNING YOUR NETWORK, it all works on unicorn and fairies dust magic.

Issue
========

Administrator Right (Script stop and complain about command not found)
================
Script probably require Administrator Right even if it use only PING and ARP


Localization issue (Script stop without doing anything)
===========
The scripts was test on Windows 7/8 in french/english , if nothing happens it is probably a localization problem.

Please post, your ipconfig result in the issue so I can modify my script accordingly if it doesn't work.

The problem will probably come from this line
```for /f "tokens=16" %%a in ('ipconfig ^|findstr "IPv4"')```
Where tokens should be less or more (for example french version it is 16 and 14 in the english version (because of dots yes DOTS!)

I'm not using a class C IP Address
===
Complain in the issue section, maybe I do something about it.


Licence
=======
The PuTTY executables and source code are distributed under the MIT licence, which is similar in effect to the BSD licence. (This licence is Open Source certified and complies with the Debian Free Software Guidelines.)

The precise licence text, as given in the About box and in the file LICENCE in the source distribution, is as follows:

    PuTTY is copyright 1997-2013 Simon Tatham.

    Portions copyright Robert de Bath, Joris van Rantwijk, Delian Delchev, Andreas Schultz, Jeroen Massar, Wez Furlong, Nicolas Barry, Justin Bradford, Ben Harris, Malcolm Smith, Ahmad Khalifa, Markus Kuhn, Colin Watson, and CORE SDI S.A.

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL SIMON TATHAM BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 

In particular, anybody (even companies) can use PuTTY without restriction (even for commercial purposes) and owe nothing to me or anybody else. Also, apart from having to maintain the copyright notice and the licence text in derivative products, anybody (even companies) can adapt the PuTTY source code into their own programs and products (even commercial products) and owe nothing to me or anybody else. And, of course, there is no warranty and if PuTTY causes you damage you're on your own, so don't use it if you're unhappy with that.

In particular, note that the MIT licence is compatible with the GNU GPL. So if you want to incorporate PuTTY or pieces of PuTTY into a GPL program, there's no problem with that. 
