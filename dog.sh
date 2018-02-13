#!/bin/bash
#run this script with the "watch" command to enable realtime monitoring
#e.g:"watch -n 3 ./dog.sh" run dog.sh every 3seconds
echo "dog.sh by bus7d"

echo Hello $USER  Dog is on patrol..
echo "Active Users::" 
finger

echo ----------------------------------------------------------------
printf "LOCAL IP:: "
ifconfig |grep -A1 wlan0|grep inet |cut -d "n" -f 2 |cut -d " " -f 2
echo ----------------------------------------------------------------
route 
echo ----------------------------------------------------------------
cat /etc/resolv.conf|grep nameserver
echo ----------------------------------------------------------------
traceroute -m 3 google.com
echo ----------------------------------------------------------------
echo "ARP Neighbors"
arp -a
echo ----------------------------------------------------------------
iptables -L
echo ----------------------------------------------------------------

