#!/bin/bash

CMD=$1
CONFIG=$2

if [ "$CONFIG" != "" ] && [ "$CMD" == "-c" ]; then
  echo "$CONFIG" > /etc/v2ray/config.json
  echo -e "Use Custom Configuration..."
fi

if [ "$CMD" != "" ] && [ "$CMD" != "-c" ]; then
  $*
else
  echo "Use Default Configuration..."
  v2ray -config /etc/v2ray/config.json
fi