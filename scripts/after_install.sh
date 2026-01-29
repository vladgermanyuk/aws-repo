#!/bin/bash

# Зупиняємо старий застосунок
docker stop my-nodejs-app || true
docker rm my-nodejs-app || true

# Запускаємо новий застосунок
docker run -d --name my-app -p 80:8080 547445247510.dkr.ecr.us-east-1.amazonaws.com/my-app:latest
