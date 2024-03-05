#!/bin/bash

ADDRESS=${PRUSALINK_ADDRESS:=0.0.0.0}
PORT=${PRUSALINK_TCP_PORT:=8080}
SERIAL_PORT=${PRUSALINK_SERIAL_PORT:='auto'}

echo "Listening on $ADDRESS:$PORT"

prusalink start \
  --foreground \
  --address $ADDRESS \
  --tcp-port $PORT \
  --serial-port $SERIAL_PORT
