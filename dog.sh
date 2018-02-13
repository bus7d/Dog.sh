#!/bin/bash

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

