#!/bin/bash

echo "Starting prusalink on port ${PRUSALINK_PORT}"

prusalink \
  --tcp-port ${PRUSALINK_PORT}
