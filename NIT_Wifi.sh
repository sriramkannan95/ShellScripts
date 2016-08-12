#!/bin/bash
f=0;ww=0;
while :
do
timeout=1;
if iwconfig 2>&1 | grep NITA_WiFi_Family; then
f=0;ww=0;
	if ping -c 1 www.google.co.in | grep 100%
	then
	echo "Reconnecting.."
	nmcli c up NITA_WiFi_Family
	else
	echo "Connected"
	fi

elif iwconfig 2>&1 | grep WLVOICE; then
echo "Connected"
f=0;
ww=0;
sleep 1

elif iwconfig 2>&1 | grep marirs; then
echo "Connected"
f=0;
ww=0;
sleep 1

elif [ "$f" -lt "$timeout" ]
then
echo "Attempting to connect to NITA WiFi Family..."
date
nmcli c up NITA_WiFi_Family
f=$((f+1))
sleep 5

<<COM
elif [ "$ww" -lt "$timeout" ]
then
echo "Attempting to connect to WLVOICE..."
date
nmcli c up WLVOICEe
ww=$((ww+1))
sleep 5
COM

else
echo "No luck.. Switching off radio.."
f=0;
ww=0;
date
nmcli radio wifi off
sleep 10
nmcli radio wifi on
fi
echo "Sleeping..."
sleep 30
done
