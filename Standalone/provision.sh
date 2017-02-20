#!/bin/bash


if [ "${SELENIUM_PROVISION}" == "true" ]
then
  docker network create "${CUSTOM_NETWORK_NAME}"
  docker-compose up -d 
else
  docker-compose up -d fitnesse
fi
