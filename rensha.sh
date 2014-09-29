#!/bin/bash

COUNT=$1
ORG=$COUNT
sleep 3s

while [ ${COUNT} != "0" ]
do
    echo "Passha!"
    sleep 0.5s
    import -window root /var/tmp/Sample`expr ${ORG} - ${COUNT}`.png
    COUNT=`expr ${COUNT} - 1`
done

echo "Please waiting..."
convert -delay 50 -loop ${ORG} /var/tmp/Sample*.png ~/out.gif
echo "generate gif file..."
rm /var/tmp/Sample*.png
echo "clear tmplate's *.png..."
echo "exit..."