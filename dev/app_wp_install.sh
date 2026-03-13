#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd $DIR
cd ../

echo "install admin (fresh password)"
docker compose exec -u www-data app /bin/bash -c 'wp core install --url=localhost --title=test --admin_user=admin --admin_email=admin@localhost.com'

