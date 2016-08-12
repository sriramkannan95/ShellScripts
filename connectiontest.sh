if ping -c 1 www.google.co.in | grep 100%
then
echo "Connected"
else
echo "Not connected"
fi
