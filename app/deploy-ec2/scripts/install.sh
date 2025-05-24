#!/bin/bash
echo "=== Ejecutando install.sh ==="

# Instala Docker si no está instalado
if ! command -v docker &> /dev/null; then
    echo "Docker no está instalado. Instalando Docker..."
    sudo amazon-linux-extras install docker -y
    sudo systemctl start docker
    sudo systemctl enable docker
else
    echo "Docker ya está instalado."
    sudo systemctl start docker
fi
