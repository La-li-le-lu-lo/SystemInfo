#!/bin/bash
echo "-----------------------"
echo "System Name:" 

uname -a
echo "-----------------------"
echo "Logged in users:"

who
echo "-----------------------"
echo "Current Directory:"

pwd
df .
echo "-----------------------"
echo "IP Address:"
ip a | grep -w inet
echo "MAC Address:"
ip a | grep link/ether

echo "-----------------------"
echo "Disk Space:"
df -h
echo "-----------------------"
echo "Uptime:"
showuptime(){
	up=$(uptime -p | cut -c4-)
	since=$(uptime -s)
	cat << EOF

---------------------------------
This machine has been up for ${up}
It has been running since ${since}
---------------------------------
EOF
}
showuptime
