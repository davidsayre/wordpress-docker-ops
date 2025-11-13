#!/bin/bash
DIR=`realpath $(dirname $0)`
cd $DIR
cd ../

source .env

cat << EOF

First Boot: Start Containers (variations)
-----------------------------
dev/start.sh                              START this docker compose project << do this first
dev/stop.sh                               STOP this docker compose project

(repeatable) Load database .sql.gz into MySQL
--------------------------------
dev/db_load.sh

Useful scripts
--------------
dev/info.sh                               display this info again
dev/app_cli.sh                            bash prompt in the app
dev/app_console.sh  <command>             for running bin/console commands
dev/db_cli.sh                             bash into mysql container
dev/db_dump.sh                            database dump to dev/mysql/
dev/db_load.sh                            Run database load script
dev/kill_containers.sh                    DELETE all container, volumes and start fresh

docker
** Pro-tip: use TAB completed on dev/ to see all the commands **

Services Ports
-------------------------------
MariaDB:                                  tcp://localhost:${PROJECTPORTPREFIX}03

Project Web Access
------------------
Front-end:                                http://localhost:${PROJECTPORTPREFIX}00 << start here
EOF