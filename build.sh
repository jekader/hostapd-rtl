echo "Please ensure you install the toolchain and build dependencies first!"
make clean && cd .. && tar -cvzf hostapd-rtl_2.4.orig.tar.gz hostapd-rtl && cd hostapd-rtl
debuild -us -uc
