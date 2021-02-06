#!/bin/bash
cd $HOME/Servers/Rebirth_of_the_Night/

screen -d -m -S Rebirth bash ./server.sh
if [ $? -eq 0 ]
then
	echo "Server started successfully."
elif [ $? -ne 0 ]
then
	echo "Server start failed."
fi


#screen -d -m -S Rebirth_AUTORESTART ./server_autorestart.sh
#if [ $? -eq 0 ]
#then
#	echo "Server autorestart started successfully."
#elif [ $? -ne 0 ]
#then
#	echo "Server autorestart start failed."
#fi





