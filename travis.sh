#!/bin/bash

# Exit on first error
set -e

PORTEFAIX_HOME=$(dirname "$0")
echo $PORTEFAIX_HOME

# Kill background processes on exit
trap 'kill $(jobs -p)' SIGINT SIGTERM EXIT

# Start docker daemon
docker -d &
sleep 5

make
