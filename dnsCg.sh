#!/bin/sh
#command: bash dnsCg.sh

sudo -v
f(){
        sudo sh -c "echo nameserver $a1 > /etc/resolv.conf"
        sudo sh -c "echo nameserver $a2 >> /etc/resolv.conf"
        sudo /etc/init.d/networking stop
        sudo /etc/init.d/networking start
        echo
        echo Done!
        cat /etc/resolv.conf
}
i = ""
clear

echo DNS-Servers:
echo
echo '1. FreeDNS (no-logs)'
echo '2. OpenDNS'
echo '3. UnsensoredDNS (no-logs)'
echo '4. DNS.Watch (no-logs)'
echo '5. OpenDNS Family Shield'
echo '6. Cloudflare'
echo '7. CyberGhost (no-logs)'
echo '8. Quad9'
echo '9. Google Public DNS'
echo
read -p "Select a number and enter-key: " i
case $i in
[1]*) a1='37.235.1.174';a2='37.235.1.177';f;;
[2]*) a1='208.67.222.222';a2='208.67.220.220';f;;
[3]*) a1='91.239.100.100';a2='89.233.43.71';f;;
[4]*) a1='84.200.69.80';a2='84.200.70.40';f;;
[5]*) a1='208.67.222.123';a2='208.67.220.123';f;;
[6]*) a1='1.1.1.1';a2='1.0.0.1';f;;
[7]*) a1='38.132.106.139';a2='194.187.251.67';f;;
[8]*) a1='9.9.9.9';a2='49.112.112.112';f;;
[9]*) a1='8.8.8.8';a2='8.8.4.4';f;;
esac
