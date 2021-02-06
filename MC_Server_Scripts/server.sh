#!/bin/bash


MAXRAM=8192M
MINRAM=8192M


done=true;
while $done 
do
/usr/lib/jvm/java-8-openjdk-amd64/bin/java -Xmx$MAXRAM -Xms$MINRAM -jar forge-*.jar nogui
    echo "Server restarting in $TIMEOUT seconds, press Q to stop."
    for i in {10..1} 
    do
    	echo "Restarting in $i"
        read -t 1 -N 1 input
	if [[ $input = "q" ]] || [[ $input = "Q" ]]; then 
			echo "Stopping."
			screen -XS Rebirth_AUTORESTART quit
			done=false
			break
	fi
    done	
done

