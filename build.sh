echo "please ensure you install build-essential fir"
make clean && cd .. && tar -cvzf hostapd-rtl_2.4.orig.tar.gz hostapd-rtl && cd hostapd-rtl
debuild -us -uc
