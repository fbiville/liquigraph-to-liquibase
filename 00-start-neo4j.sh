#!/bin/bash

set -x

container_id=$(docker run \
  --rm \
  --detach \
  --publish=7474:7474 \
  --publish=7687:7687 \
  --env NEO4J_AUTH=neo4j/s3cr3t \
  --health-cmd "cypher-shell -u neo4j -p s3cr3t 'RETURN 1'" \
  --health-interval 5s \
  --health-timeout 5s \
  --health-retries 5 \
  neo4j:4.4)

until docker inspect --format "{{json .State.Health.Status }}" "${container_id}" | grep --quiet --max-count 1 "healthy"; do
  sleep 5
done
