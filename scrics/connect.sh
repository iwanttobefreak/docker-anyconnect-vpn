#!/bin/bash
server=$ANYCONNECT_SERVER
user=$ANYCONNECT_USER
password=$ANYCONNECT_PASSWORD

/usr/bin/expect <<EOF
spawn openconnect $server --user=$user
expect "*anything else to view:"
send "yes\r"
expect "*?assword:"
send "$password\r"
expect "*AES256-SHA."
interact
EOF

iptables -t nat -A POSTROUTING -o tun0 -j MASQUERADE
iptables -A FORWARD -i eth0 -j ACCEPT

route del -net 172.17.0.0 netmask 255.255.240.0  dev tun0

/bin/bash
