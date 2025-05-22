#!/bin/bash
echo "Iniciando contenedor static-web..."
cd /home/ec2-user/app
docker build -t static-web .
docker run -d --name static-web -p 80:80 static-web
