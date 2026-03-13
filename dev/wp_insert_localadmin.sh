#!/bin/bash
DIR=`realpath $(dirname $0)`
cd $DIR
cd ../

echo "new Admin: localadmin/wordpress"
docker compose exec -u www-data app bash -c "wp user create localadmin localadmin@localhost.com --user_pass=wordpress --role=administrator"