#!/bin/sh

status=$?

echo "All set! Enter ready for continue!"

read value

echo "Kernel $value valid, now some magic"

filename="exploit.sh"
if [ -e "$filename" ]; then
    echo "$filename was droped on host"
fi

filename="exploit.sh"
if [ ! -f "$filename" ]; then
    touch "$filename"
fi
if [ -r "$filename" ]; then
    echo "Can escalate privileges to run $filename"
else
    echo "Low privileges for it:( Try again $filename"
fi

echo "Who you are?" 

if (whoami != root)
  then echo "Something went wrong:( Try again!"

  else echo You are root! Now some cleanup..
fi

file="panic.kdump"
if [ -e $file ]; then
	echo "Kernel panic was found, cleaning"
else 
	echo "No panic was found"
fi 

 [ $status -eq 0 ] && echo "Sucessfull!" || echo "Something went wrong!"


echo "Exploit done, kernel r/w obtained!"

echo -e "Kernel Details: " `uname -smr`
echo -e "`bash --version`"
echo -ne "Uptime: "; uptime
echo -ne "Server time : "; date
