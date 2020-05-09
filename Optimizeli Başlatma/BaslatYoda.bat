@ECHO OFF
title YODA
color 6f
:server_start
echo.
echo ====================================
echo Sunucuyu baslatma. Lütfen sunucunun
echo baslamasi icin biraz zaman taniyin.
echo ====================================
echo.
start /B /high /wait java -Xmx4G -Dfile.encoding=UTF-8 -XX:+AlwaysPreTouch -XX:+DisableExplicitGC -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=45 -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AggressiveOpts -jar spigot.jar -o false
echo.
echo ====================================
echo Bu baslangici kapatmak icin CTRL + C tuslarina basin.
echo.
echo Yeniden Baslatiliyor:
echo ====================================
echo.
timeout 5
goto server_start