#!/bin/bash
PREFIX=co
COMPOSE=cloudopting.yml
MONITOR=co_fluentd
PORT_FLUENTD=24225

#docker stop ${PREFIX}_registry ${PREFIX}_engine ${PREFIX}_redis ${PREFIX}_commander\
# ${PREFIX}_manager ${PREFIX}_manager-db ${PREFIX}_manager-jcr\
#  ${PREFIX}_emulatedhost

IP_FLUENTD=$(docker inspect --format '{{ .NetworkSettings.Networks.bridge.IPAddress }}' $MONITOR 2> /dev/null)

sed -i 's/fluentd-address:\s*.*/fluentd-address: \"'$IP_FLUENTD:$PORT_FLUENTD'\"/g' $COMPOSE

ECHO "DO NOT FORGET TO SET UP THE PASSWORD FOR THE JASYP ENCRIPTOR ON $COMPOSE

docker-compose -f $COMPOSE up -d
