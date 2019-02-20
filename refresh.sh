#/bin/bash

cd ~
cd /usr/local/bin
./mtap-cli stop
rm -rf mtapd mtap-cli mtap-tx
wget https://github.com/MTAPcoin/MTAPCoin/releases/download/1.2.0/mtap-1.2.0-x86_64-linux-gnu.tar.gz
tar -xzf mtap-1.2.0-x86_64-linux-gnu.tar.gz
rm -rf mtap-1.2.0-x86_64-linux-gnu.tar.gz
./mtapd -daemon -resync
sleep 10
./mtap-cli getinfo
