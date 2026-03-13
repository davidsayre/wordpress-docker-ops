#!/bin/bash
DIR=`realpath $(dirname $0)`
cd $DIR
cd ../

source .env

#echo "reset site http://localhost:${PROJECTPORTPREFIX}00"
#docker compose exec db bash -c 'mysql ${MYSQL_DATABASE} -u wordpress -pwordpress -e "update wp_options set option_value=\"http://localhost:${PROJECTPORTPREFIX}00\" where option_name=\"siteurl\" or option_name = \"home\"; " '

echo "reset site http://localhost:${PROJECTPORTPREFIX}00"
docker compose exec -u www-data app bash -c 'wp search-replace \"https://cec-bio.itrcweb.org/\" \"http://localhost:${PROJECTPORTPREFIX}00/\"; '