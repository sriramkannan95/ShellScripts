kill -STOP $(pidof qbittorrent)
echo "going to sleep"
sleep 3600
kill -CONT $(pidof qbittorrent)
