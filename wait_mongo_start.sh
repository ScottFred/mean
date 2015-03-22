#!/bin/sh

polling_interval=30

#optional, view db_1 container-related env vars
#env | grep DB_1 | sort

echo "waiting for mongo to start before launching App..."

#wait until mongo is running in db_1 container (checked via netcat - nc)
# until nc -z $DB_1_PORT_27017_TCP_ADDR $DB_1_PORT_27017_TCP_PORT
# do
# 	echo "waiting for $polling_interval seconds..."
# 	sleep $polling_interval
# done

echo "waiting for $polling_interval secnods..."
sleep $polling_interval

#start nod App
grunt
