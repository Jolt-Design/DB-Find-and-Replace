#!/bin/sh

docker-compose exec interface php srdb.cli.php -h db -u root -p joltdbpass -n database $@
