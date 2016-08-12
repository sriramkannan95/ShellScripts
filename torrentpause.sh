#DadsLaptop=192.168.0.103
sleep 50
while :
do
#x=100;
#z=0;
#while $x -lt 107
#do
#y=192.168.0.$x
#if fping -a -q $y | grep -q "$y"; then
#	z=$(($z+1));
#fi
#x=$(($x+1));
#done
#if $z -gt 3; then
#	kill -STOP $(pidof qbittorrent)

if who | grep vandana; then
	kill -STOP $(pidof qbittorrent)
elif who | grep research; then
	kill -STOP $(pidof qbittorrent)
#elif fping -a -q $DadsLaptop | grep -q "$DadsLaptop"; then
#	kill -STOP $(pidof qbittorrent)
#elif pidof firefox>0; then
#	kill -STOP $(pidof qbittorrent)
else
	kill -CONT $(pidof qbittorrent)
fi
sleep 5
done
