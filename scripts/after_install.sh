#!/bin/bash

APP_NAME=my-app
IMAGE_URI=547445247510.dkr.ecr.us-east-1.amazonaws.com/my-app:latest

# Проверяем, существует ли контейнер и удаляем его
if [ "$(docker ps -a -q -f name=$APP_NAME)" ]; then
    echo "Stopping and removing existing container $APP_NAME"
    docker stop $APP_NAME
    docker rm $APP_NAME
fi

# Запускаем новый контейнер
echo "Running new container $APP_NAME"
docker run -d --name $APP_NAME -p 80:8080 $IMAGE_URI
