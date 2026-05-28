#!/usr/bin/env bash
# Watch SCSS sources and rebuild the theme stylesheet on change.
# FTL templates and theme.properties are mounted directly into the Keycloak
# container (see docker-compose.yml) with theme caching disabled, so they
# hot-reload without any rebuild.
#
# dependency: npm i nodemon -g

nodemon -w src/main/resources/theme/cloud-iam-redesign/login/resources/scss -e "scss" --exec "npm run build"
