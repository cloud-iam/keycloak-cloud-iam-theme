#!/usr/bin/env bash

# install dependencies
npm install

# compile theme
npm run build

# package theme and wrap it in a .jar file
mvn package

# move theme to /tmp/theme/ folder for futur use by keycloak
mkdir -p /tmp/theme && cp -v target/*.jar /tmp/theme/
