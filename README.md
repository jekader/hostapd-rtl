hostapd with RTL8188 patches applied
------------------------------------

This contains almost none of my code (just Debian manifests partially), all software used is described below

Software used:
--------------

hostapd-2.4:
http://w1.fi/releases/hostapd-2.4.tar.gz
RTL8188 patch:
https://github.com/jenssegers/RTL8188-hostapd
init script:
Debian hostapd SRC RPM

INSTALL:
--------

    git clone https://github.com/jekader/hostapd-rtl.git
    cd hostapd-rtl
    ./build.sh

USE:
----

The sample config file is provided in /etc/hostapd/hostapd.conf - edit it for your needs (change BSSID and WPA key).
Then uncomment the DAEMON_CONF line in /etc/default/hostapd to unlock the init script.
Finally, start the init script:
/etc/init.d/hostapd start

