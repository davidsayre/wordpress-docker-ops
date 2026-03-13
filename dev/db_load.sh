#!/bin/bash
DIR=`realpath $(dirname $0)`
cd $DIR
cd ../


docker compose exec db bash -c 'mysql -u wordpress -pwordpress -e "drop database wordpress"'
docker compose exec db bash -c 'mysql -u wordpress -pwordpress -e "create database wordpress"'

echo "expects <wrapper>/db/mysql/db/wordpress.sql"
docker compose exec db bash -c 'gzip -df /db/wordpress.sql.gz'

echo "replace 'utf8mb4_0900_ai_ci' with utf8mb4_unicode_ci"
docker compose exec db /bin/bash -c "sed -i 's/utf8mb4_0900_ai_ci/utf8mb4_unicode_ci/g' /db/wordpress.sql"

echo "load /db/wordpress.sql"
docker compose exec db bash -c 'mysql ${MYSQL_DATABASE} -u wordpress -pwordpress < /db/wordpress.sql'

cd $DIR

./wp_insert_localadmin.sh