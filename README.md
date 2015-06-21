hostapd with RTL8188 patches applied
------------------------------------

As RTL8192CU has poor support in current kernels, some distros use realtek-provided drivers which do not work with stock hostapd. This repo contains hostapd-2.4 patched to support realtek's 8192cu driver and build manifests to package it as a .deb file. This was tested to build and work on BPI-R1 (Allwinner A20) running Bananian (kernel 3.4.104+).

The repo contains almost none of my code (just Debian manifests partially), all software used is described below. Follow the links to find out respective software licenses. Parts done by me are in Public Domain.

Software used:
--------------

* hostapd-2.4:
  * http://w1.fi/releases/hostapd-2.4.tar.gz
* RTL8188 patch:
  * https://github.com/pritambaral/hostapd-rtl871xdrv
* noscan patch from OpenWRT:
  * https://dev.openwrt.org/browser/trunk/package/network/services/hostapd/patches/300-noscan.patch
* init script:
  * https://packages.qa.debian.org/w/wpa.html

INSTALL:
--------

Install the toolchain if missing:

    apt-get install git build-essential fakeroot devscripts debhelper libnl-dev libssl-dev

then copy the repo, build and install the package:

    git clone https://github.com/jekader/hostapd-rtl.git
    cd hostapd-rtl
    bash build.sh
    dpkg -i ../hostapd-rtl_2.4-4_armhf.deb
USE:
----

The sample config file is provided in /etc/hostapd/hostapd.conf - edit it for your needs (change BSSID and WPA key).
Then uncomment the DAEMON_CONF line in /etc/default/hostapd to unlock the init script.
Finally, start the init script:
/etc/init.d/hostapd start

