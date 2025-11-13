#!/bin/bash
DIR=`realpath $(dirname $0)`
cd $DIR
cd ../

if [ ! -f "./www/wp-config.php" ]; then
  echo "check for www/wp-config.php"
  cp ./www/wp-config-docker.php ./www/wp-config.php
fi

docker compose up -d

cd $DIR
 ./info.sh
