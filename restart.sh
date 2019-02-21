#/bin/bash

/usr/local/bin/./mtap-cli stop
sleep 5
rm -rf .mtap/peers.dat
/usr/local/bin/./mtapd -daemon -resync
sleep 5
watch /usr/local/bin/./mtap-cli getinfo
