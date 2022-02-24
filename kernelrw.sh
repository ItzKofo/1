#!/bin/sh

status=$?


echo -n "System check ok, do you want to continue? (y/n)? "
read answer

sleep 2

echo "Kernel can be exploited, exploit ready for drop"
sleep 3

if (whoami != root)
  then echo "You are visitor of server, no privileges at all! Lets try some magic.."

  else echo You are visiting this server and u want kernel privileges? Ok, lets try
fi

filename="exploit.sh"
if [ -e "$filename" ]; then
    echo "$filename was droped on host server"
fi
sleep 1,5
filename="exploit.sh"
if [ ! -f "$filename" ]; then
    touch "$filename"
fi
if [ -r "$filename" ]; then
    echo "Connected to the payload. $filename"
else
    echo "Low privileges for it:( Try again $filename"
fi

echo "Who you are?" 

if (whoami != root)
  then echo "Something went wrong:( Try again!"

  else echo You are root! Now some cleanup..
fi
sleep 2 

file="panic.kdump"
if [ -e $file ]; then
	echo "Kernel panic was found, cleaning"
else 
	echo "No panic was found"
fi 

 [ $status -eq 0 ] && echo "Sucessfull!" || echo "Something went wrong!"


echo "Exploit done, kernel r/w obtained!"

