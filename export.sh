#!/bin/sh

docker-compose exec db mysqldump -u root -pjoltdbpass database > ./db-output/output.sql
