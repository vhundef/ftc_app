#!/bin/bash
sudo apt-get install ftp
echo $5 '\n'"$4">Build.info

FILE='TeamCode-debug.apk'
IP='vhundef.net'
USER=$1
PASS=$2
ftp -p -d -inv $IP<< !EOF
user $USER $PASS
asc
mput Build.info
rename Build.info $3-Build.info
asc
lcd TeamCode/build/outputs/apk
mput $FILE
rename $FILE $3-$FILE
quit
!EOF
