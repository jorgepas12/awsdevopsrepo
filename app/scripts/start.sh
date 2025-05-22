#!/bin/bash
echo "Iniciando contenedor static-web..."
cd /home/ec2-user/app
docker pull 316121670951.dkr.ecr.us-east-1.amazonaws.com/static-web:v1
docker run -d --name static-web -p 80:80 316121670951.dkr.ecr.us-east-1.amazonaws.com/static-web:v1
