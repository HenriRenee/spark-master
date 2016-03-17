#! /bin/bash

/usr/local/spark/sbin/start-master.sh

sleep 3

while [ $(ps aux | awk '/spark\/conf/ {print $2}') ]
do 
	sleep 1
	pid=`ps aux | awk '/spark\/conf/ {print $2}'`
	echo $pid > /usr/local/spark/pid
done
