#!/bin/bash
PREFIX=co
MONITOR=monitor.yml

# Remove previous containers if any
#docker stop ${PREFIX}_fluentd ${PREFIX}_elasticsearch ${PREFIX}_kibana

# Launch monitor composition
docker-compose -f $MONITOR up




