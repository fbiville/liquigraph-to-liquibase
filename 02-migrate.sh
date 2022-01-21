#!/bin/bash

set -x

rm -f liquigraph.liquibase.xml

./liquigraph-cli/liquigraph.sh \
	migrate-to-liquibase \
	--changelog liquigraph.xml \
	--execution-contexts bar \
	--url jdbc:neo4j:bolt://localhost \
	--username neo4j \
	--password s3cr3t \
	--delete \
	--file ./liquibase.xml