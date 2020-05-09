#!/bin/bash
cd "$(dirname "$0")"
while true
do
java -Xmx2G -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=45 -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AggressiveOpts -jar Factions.jar -o false
echo "Bu baslangici kapatmak icin CTRL + C tuslarina basin!"
echo "Yeniden Baslatiliyor:"
for i in 5 4 3 2 1
do
echo "$i..."
sleep 1
done
echo "Yeniden Baslatildi!"
done 