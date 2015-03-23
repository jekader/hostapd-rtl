echo "please ensure you install build-essential fir"
make clean && cd .. && tar -cvzf hostapd-rtl_2.4.orig.tar.gz hostapd-2.4 && cd hostapd-2.4
debuild -us -uc
