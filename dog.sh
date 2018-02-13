#!/bin/bash
# run this script with the "watch" command to enable realtime monitoring.
# e.g: "watch -n 3 /bin/bash dog.sh" - run dog.sh every 3 seconds.
readonly VERSION="{{VERSION}}"
readonly APPNAME="dog.sh"
readonly APPDESC="Host Network Moitoring"
readonly AUTORS="bus7d, lessonsharing"

printf "Welcome to %s v%s\n" $APPNAME $VERSION
printf "%s\n" $APPDESC
printf "By: %s\n" $AUTORS
printf "=======================\n"

echo "Hello ${USER}, Dog is on patrol..."

echo "Active Users::" 
finger || echo "! no finger command found."
echo ----------------------------------------------------------------

printf "LOCAL IP:: "
ifconfig |grep -A1 wlan0|grep inet |cut -d "n" -f 2 |cut -d " " -f 2
echo ----------------------------------------------------------------
route || echo "! no route command found."
echo ----------------------------------------------------------------
cat /etc/resolv.conf|grep nameserver
echo ----------------------------------------------------------------
traceroute -m 3 google.com
echo ----------------------------------------------------------------

echo "ARP Neighbors"
arp -a || echo "! no arp command found."
echo ----------------------------------------------------------------
iptables -L
echo ----------------------------------------------------------------

