#!/bin/bash

set -x

liquibase update  \
	--changelog-file liquibase.xml \
	--contexts bar \
	--url jdbc:neo4j:bolt://localhost \
	--username neo4j \
	--password s3cr3t