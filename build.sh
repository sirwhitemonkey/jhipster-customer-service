#!/bin/bash
app=customerservice
dockerhub=sirwhitemonkey
./mvnw package -P prod -DskipTests dockerfile:build
docker image tag $app $dockerhub/$app
docker image push $dockerhub/$app
