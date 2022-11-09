#!/bin/sh

APP_NAME="first-quarks-app"
mvn clean package\
  -Dquarkus.container-image.build=true\
  -Dquarkus.container-image.group=registry.heroku.com/$APP_NAME\
  -Dquarkus.container-image.name=web\
  -Dquarkus.container-image.tag=latest\
  -Pnative\
  -Dquarkus.native.container-build=true

docker push registry.heroku.com/$APP_NAME/web
heroku container:release web --app $APP_NAME