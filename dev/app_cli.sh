#!/bin/bash
DIR=`realpath $(dirname $0)`
cd $DIR
cd ../
docker compose exec -u www-data app bash