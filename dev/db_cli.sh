#!/bin/bash
DIR=`realpath $(dirname $0)`
cd $DIR
cd ../
docker compose exec db bash