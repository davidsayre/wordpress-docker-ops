#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
cd ../

docker compose exec -u www-data app /bin/bash -c 'wp core update'
docker compose exec -u www-data app /bin/bash -c 'wp plugin update --all'