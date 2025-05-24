#!/bin/bash
echo "=== Ejecutando cleanup.sh ==="

# Elimina contenedores anteriores basados en esta imagen
echo "Eliminando contenedores basados en static-web..."
sudo docker ps -a --filter "ancestor=316121670951.dkr.ecr.us-east-1.amazonaws.com/static-web:v1" -q | xargs -r sudo docker rm -f
