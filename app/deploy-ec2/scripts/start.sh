#!/bin/bash
echo "=== Ejecutando start.sh ==="

aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 316121670951.dkr.ecr.us-east-1.amazonaws.com

# Detiene cualquier contenedor anterior (opcional y seguro)
echo "Deteniendo contenedores existentes..."
sudo docker ps -q --filter "ancestor=316121670951.dkr.ecr.us-east-1.amazonaws.com/static-web:sweb-v1" | xargs -r sudo docker stop

IMAGE="316121670951.dkr.ecr.us-east-1.amazonaws.com/static-web:sweb-v1"
MEM_LIMIT="128m"
CPU_SHARES="100"

# Descargar imagen
echo "Realizando docker pull de la imagen..."
sudo docker pull $IMAGE

# Iniciar contenedor con límites personalizados
echo "Iniciando contenedor con --memory=$MEM_LIMIT --cpu-shares=$CPU_SHARES"
sudo docker run -d -p 80:80 --rm --name static-web \
  --memory "$MEM_LIMIT" \
  --cpu-shares "$CPU_SHARES" \
  316121670951.dkr.ecr.us-east-1.amazonaws.com/static-web:sweb-v1
