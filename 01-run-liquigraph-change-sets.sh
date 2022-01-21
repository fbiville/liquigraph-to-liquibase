#!/bin/bash

set -x

./liquigraph-cli/liquigraph.sh run \
	--changelog liquigraph.xml \
	--execution-contexts bar \
	--url jdbc:neo4j:bolt://localhost \
	--username neo4j \
	--password s3cr3t