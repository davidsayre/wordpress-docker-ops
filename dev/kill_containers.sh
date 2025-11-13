#!/bin/bash
DIR=`realpath $(dirname $0)`
cd $DIR
cd ../
docker compose down -v
docker compose build --no-cache