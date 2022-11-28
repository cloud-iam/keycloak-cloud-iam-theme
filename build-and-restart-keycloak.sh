#!/usr/bin/env bash
set -e

./build.sh

docker stop keycloak || true
docker rm keycloak || true

docker run --name keycloak -p 8080:8080 -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=admin -v /tmp/theme:/opt/jboss/keycloak/standalone/deployments/ quay.io/keycloak/keycloak:15.1.1
