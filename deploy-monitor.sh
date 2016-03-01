#!/bin/bash
PREFIX=co
MONITOR=monitor.yml

# Remove previus images
docker images -f elasticsearch kibana cloudopting/fluentd

# Remove previous containers
docker rm -f ${PREFIX}_fluentd ${PREFIX}_elasticsearch ${PREFIX}_kibana

# Download images
#docker pull cloudopting/fluentd
#docker pull elasticsearch:2
#docker pull kibana:4

# Launch monitor composition
docker-compose -f $MONITOR up