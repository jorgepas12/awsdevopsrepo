#!/bin/bash
echo "Limpiando contenedores existentes..."
docker stop static-web || true
docker rm static-web || true
