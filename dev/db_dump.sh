#!/bin/bash
DIR=`realpath $(dirname $0)`
cd $DIR
cd ../
docker compose exec db bash -c 'mysqldump ${MYSQL_DATABASE} --skip-lock-tables > /db/${MYSQL_DATABASE}-export.sql'
echo "see <wrapper>/dev/mysql/db/*-export.sql"
