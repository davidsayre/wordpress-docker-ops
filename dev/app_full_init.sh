#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
cd ../

if [ ! -f "www/wp-config.php" ]; then
  echo "cp wp-config-docker.php www/wp-config.php"
  cp wp-config-docker.php www/wp-config.php
fi

