#!/bin/bash
#
#Start Script for RK Network. Written by tierdal, 2014.
#
#List dir's to the path of the files
DIR1='/home/RisenKingdoms/MINECRAFT/Bungee'
DIR2='/home/RisenKingdoms/MINECRAFT/Hub'
DIR3='/home/RisenKingdoms/MINECRAFT/Towny'
DIR4='/home/RisenKingdoms/MINECRAFT/Creative'
DIR5='/home/RisenKingdoms/MINECRAFT/MiniGames'
DIR6='/home/RisenKingdoms/MINECRAFT/Quests'
DIR7='/home/RisenKingdoms/MINECRAFT/Skyblock'
DIR8='/home/RisenKingdoms/MINECRAFT/Factions'
DIR9='/home/RisenKingdoms/MINECRAFT/Builder'
DIR10='/home/RisenKingdoms/MINECRAFT/RKSG'
DIR11='/home/RisenKingdoms/MINECRAFT/Vanilla'
#SPID is the PID of the Screen. Used to kill and check.
SPID=''
#
server_start() {
echo '########################################################'
echo '########################################################'
echo '################|       STARTING       |################'
echo '################|    RISEN KINGDOMS    |################'
echo '################|    SERVER NETWORK    |################'
echo '########################################################'
echo '#######|Script created by tierdal.  Jan 26, 2014|#######'
echo '########################################################'
sleep 3
#
#Start Bungee
#
SPID=$(screen -ls | awk '/\.Bungee\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting Bungee server...'
	cd $DIR1
	rm -f plugins/CommandSync/data.txt
	screen -dmS 'Bungee' sh -c 'java -XX:+HeapDumpOnOutOfMemoryError -Xmx512m -XX:MaxPermSize=128m -jar BungeeCord.jar'
	echo 'Bungee Start: Complete!'
	echo 'Waiting for 5 seconds...'
	sleep 5
	SPID=''
else 
	echo 'Bungee is already running...'
	SPID=''
	sleep 3
fi
#
#Start Hub
#
SPID=$(screen -ls | awk '/\.Hub\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting Hub server...'
	cd $DIR2
	rm -f plugins/CommandSync/data.txt
	screen -dmS 'Hub' sh -c 'java -XX:+HeapDumpOnOutOfMemoryError -Xmx768m -XX:MaxPermSize=128m -jar spigot.jar'
	echo 'Hub Start: Complete!'
	echo 'Waiting for 5 seconds...'
	sleep 5
	SPID=''
else 
	echo 'Hub is already running...'
	SPID=''
	sleep 3
fi
#
#Start RKBuilder
#
SPID=$(screen -ls | awk '/\.Builder\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting Builder server...'
	cd $DIR9
	rm -f plugins/CommandSync/data.txt
	screen -dmS 'Builder' sh -c 'java -XX:+HeapDumpOnOutOfMemoryError -Xmx4096m -XX:MaxPermSize=128m -jar spigot.jar'
	echo 'Builder Start: Complete!'
	echo 'Waiting for 5 seconds...'
	sleep 5
	SPID=''
else 
        echo 'Builder is already running...'
        SPID=''
        sleep 3
fi
#
#Start RKCreative
#
SPID=$(screen -ls | awk '/\.Creative\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting Creative server...'
	cd $DIR4
	rm -f Minecraft/plugins/CommandSync/data.txt
	screen -dmS 'Creative' sh -c './MCMA2_Linux_x86_64'
	echo 'Creative Start: Complete!'
	echo 'Waiting for 5 seconds...'
	sleep 5
	SPID=''
else 
	echo 'Creative is already running...'
	SPID=''
	sleep 3
fi
#
#Start RKMiniGames
#
SPID=$(screen -ls | awk '/\.MiniGames\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting MiniGames server...'
	cd $DIR5
	rm -f Minecraft/plugins/CommandSync/data.txt
	screen -dmS 'MiniGames' sh -c './MCMA2_Linux_x86_64'
	echo 'MiniGames Start: Complete!'
	echo 'Waiting for 5 seconds...'
	sleep 5
	SPID=''
else 
	echo 'MiniGames is already running...'
	SPID=''
	sleep 3
fi
#
#Start RKSG
#
SPID=$(screen -ls | awk '/\.RKSG\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting RKSG server...'
	cd $DIR10
	rm -f plugins/CommandSync/data.txt
	screen -dmS 'RKSG' sh -c 'java -XX:+HeapDumpOnOutOfMemoryError -Xmx1024m -XX:MaxPermSize=128m -jar spigot.jar'
	echo 'RKSG Start: Complete!'
	echo 'Waiting for 5 seconds...'
	sleep 5
	SPID=''
else 
	echo 'RKSG is already running...'
	SPID=''
	sleep 3
fi
#
#Start Vanilla
#
SPID=$(screen -ls | awk '/\.Vanilla\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting Vanilla server...'
	cd $DIR11
	rm -f plugins/CommandSync/data.txt
	screen -dmS 'Vanilla' sh -c './MCMA2_Linux_x86_64'
	echo 'Vanilla Start: Complete!'
	echo 'Waiting for 5 seconds...'
	sleep 5
	SPID=''
else 
	echo 'Vanilla is already running...'
	SPID=''
	sleep 3
fi
#
#Start RKQuests
#
SPID=$(screen -ls | awk '/\.Quests\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting Quests server...'
	cd $DIR6
	rm -f Minecraft/plugins/CommandSync/data.txt
	screen -dmS 'Quests' sh -c './MCMA2_Linux_x86_64'
	echo 'Quests Start: Complete!'
	echo 'Waiting for 5 seconds...'
	sleep 5
	SPID=''
else 
	echo 'Quests is already running...'
	SPID=''
	sleep 3
fi

#Start RKSkyblock
#
SPID=$(screen -ls | awk '/\.Skyblock\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting Skyblock server...'
	cd $DIR7
	rm -f Minecraft/plugins/CommandSync/data.txt
	screen -dmS 'Skyblock' sh -c './MCMA2_Linux_x86_64'
	echo 'Skyblock Start: Complete!'
	echo 'Waiting for 20 seconds...'
	sleep 20
	SPID=''
else 
	echo 'Skyblock is already running...'
	SPID=''
	sleep 3
fi
#
#Start RKMain
#
SPID=$(screen -ls | awk '/\.Towny\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting Towny server...'
	cd $DIR3
	rm -f Minecraft/plugins/CommandSync/data.txt
	screen -dmS 'Towny' sh -c './MCMA2_Linux_x86_64'
	echo 'Towny Start: Complete!'
	echo 'Waiting for 5 seconds...'
	sleep 5
	SPID=''
else 
	echo 'Towny is already running...'
	SPID=''
	sleep 3
fi
#
#Start RKFactions
#
SPID=$(screen -ls | awk '/\.Factions\t/ {print strtonum($1)}')
if [ -z $SPID ]; then
	echo 'Starting Factions server...'
	cd $DIR8
	rm -f Minecraft/plugins/CommandSync/data.txt
	screen -dmS 'Factions' sh -c './MCMA2_Linux_x86_64'
	echo 'Factions Start: Complete!'
	echo 'Waiting for 5 seconds...'
	sleep 5
	SPID=''
else 
	echo 'Factions is already running...'
	SPID=''
	sleep 3
fi
echo 'Start-Up Complete!'
sleep 1
echo 'Exiting in 5...'
sleep 1
echo 'Exiting in 4...'
sleep 1
echo 'Exiting in 3...'
sleep 1
echo 'Exiting in 2...'
sleep 1
echo 'Exiting in 1...'
sleep 1
}
server_stop() {
screen -S Hub -X stuff 'sync console all save-all'`echo -ne '\015'`
echo 'Saving all content...'
sleep 10
echo '... Done!'
SPID=$(screen -ls | awk '/\.Bungee\t/ {print strtonum($1)}')
kill $SPID
echo 'Bungee Stop: Complete!'
SPID=''
sleep 1
SPID=$(screen -ls | awk '/\.Hub\t/ {print strtonum($1)}')
kill $SPID
echo 'Hub Stop: Complete!'
sleep 1
SPID=$(screen -ls | awk '/\.Builder\t/ {print strtonum($1)}')
kill $SPID
echo 'Builder Stop: Complete!'
sleep 1
SPID=$(screen -ls | awk '/\.Towny\t/ {print strtonum($1)}')
kill $SPID
echo 'Towny Stop: Complete!'
sleep 1
SPID=$(screen -ls | awk '/\.Creative\t/ {print strtonum($1)}')
kill $SPID
echo 'Creative Stop: Complete!'
sleep 1
SPID=$(screen -ls | awk '/\.MiniGames\t/ {print strtonum($1)}')
kill $SPID
echo 'MiniGames Stop: Complete!'
sleep 1
SPID=$(screen -ls | awk '/\.RKSG\t/ {print strtonum($1)}')
kill $SPID
echo 'RKSG Stop: Complete!'
sleep 1
SPID=$(screen -ls | awk '/\.Vanilla\t/ {print strtonum($1)}')
kill $SPID
echo 'Vanilla Stop: Complete!'
sleep 1
SPID=$(screen -ls | awk '/\.Quests\t/ {print strtonum($1)}')
kill $SPID
echo 'Quests Stop: Complete!'
sleep 1
SPID=$(screen -ls | awk '/\.Skyblock\t/ {print strtonum($1)}')
kill $SPID
echo 'Skyblock Stop: Complete!'
sleep 1
SPID=$(screen -ls | awk '/\.Factions\t/ {print strtonum($1)}')
kill $SPID
echo 'Factions Stop: Complete!'
sleep 3
echo 'Shut-Down Complete!'
sleep 1
echo 'Exiting in 5...'
sleep 1
echo 'Exiting in 4...'
sleep 1
echo 'Exiting in 3...'
sleep 1
echo 'Exiting in 2...'
sleep 1
echo 'Exiting in 1...'
sleep 1
}
#
server_kill() {
screen -S Hub -X stuff 'sync console all save-all'`echo -ne '\015'`
echo 'Saving all content...'
sleep 5
echo '... Done!'
SPID=$(screen -ls | awk '/\.Bungee\t/ {print strtonum($1)}')
kill $SPID
echo 'Bungee Stop: Complete!'
SPID=''
SPID=$(screen -ls | awk '/\.Hub\t/ {print strtonum($1)}')
kill $SPID
echo 'Hub Stop: Complete!'
SPID=$(screen -ls | awk '/\.Builder\t/ {print strtonum($1)}')
kill $SPID
echo 'Builder Stop: Complete!'
SPID=$(screen -ls | awk '/\.Towny\t/ {print strtonum($1)}')
kill $SPID
echo 'Towny Stop: Complete!'
SPID=$(screen -ls | awk '/\.Creative\t/ {print strtonum($1)}')
kill $SPID
echo 'Creative Stop: Complete!'
SPID=$(screen -ls | awk '/\.MiniGames\t/ {print strtonum($1)}')
kill $SPID
echo 'MiniGames Stop: Complete!'
SPID=$(screen -ls | awk '/\.RKSG\t/ {print strtonum($1)}')
kill $SPID
echo 'RKSG Stop: Complete!'
SPID=$(screen -ls | awk '/\.Vanilla\t/ {print strtonum($1)}')
kill $SPID
echo 'Vanilla Stop: Complete!'
SPID=$(screen -ls | awk '/\.Quests\t/ {print strtonum($1)}')
kill $SPID
echo 'Quests Stop: Complete!'
SPID=$(screen -ls | awk '/\.Skyblock\t/ {print strtonum($1)}')
kill $SPID
echo 'Skyblock Stop: Complete!'
SPID=$(screen -ls | awk '/\.Factions\t/ {print strtonum($1)}')
kill $SPID
echo 'Factions Stop: Complete!'
echo 'Shut-Down Complete!'
sleep 1
echo 'Exiting in 5...'
sleep 1
echo 'Exiting in 4...'
sleep 1
echo 'Exiting in 3...'
sleep 1
echo 'Exiting in 2...'
sleep 1
echo 'Exiting in 1...'
sleep 1
}
#
case "$1" in
  start)
        server_start
        ;;
  stop)
		screen -S Bungee -X stuff 'alert The Network is stopping in 1 minute!'`echo -ne '\015'`
		echo 'Announcing Restart: 1 Minute Mark'
		sleep 30
		screen -S Bungee -X stuff 'alert The Network is stopping in 30 seconds!'`echo -ne '\015'`
		echo 'Announcing Restart: 30 Seconds Mark'
		sleep 15
		screen -S Bungee -X stuff 'alert The Network is stopping in 15 seconds!'`echo -ne '\015'`
		echo 'Announcing Restart: 15 Seconds Mark'
		sleep 10
		screen -S Bungee -X stuff 'alert The Network is stopping in 5 seconds!'`echo -ne '\015'`
		echo 'Announcing Restart: 5 Seconds Mark'
        server_stop
        ;;
  kill)
		server_kill
		;;
  restart)
	screen -S Bungee -X stuff 'alert The Network is restarting in 1 minute!'`echo -ne '\015'`
	echo 'Announcing Restart: 1 Minute Mark'
	sleep 30
	screen -S Bungee -X stuff 'alert The Network is restarting in 30 seconds!'`echo -ne '\015'`
	echo 'Announcing Restart: 30 Seconds Mark'
	sleep 15
	screen -S Bungee -X stuff 'alert The Network is restarting in 15 seconds!'`echo -ne '\015'`
	echo 'Announcing Restart: 15 Seconds Mark'
	sleep 10
	screen -S Bungee -X stuff 'alert The Network is restarting in 5 seconds!'`echo -ne '\015'`
	echo 'Announcing Restart: 5 Seconds Mark'
	sleep 2
	server_stop
		sleep 5
        server_start
        ;;
  *)
        echo $"Usage: $0 {start|stop|kill|restart}"
        exit 1
esac
exit 0
