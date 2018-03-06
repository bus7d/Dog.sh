#!/bin/bash
#function to add to dog.sh a tiny dns mixer based on a text file named dns.list in the same directory 
for ip in $(cat dns.list|shuf -n 1);do echo "nameserver $ip" > /etc/resolv.conf;echo "DNS>>$ip";done
