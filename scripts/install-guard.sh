#!/bin/bash
set -e

echo "🔽 Instalando AWS CloudFormation Guard de forma local..."

# Crear carpeta local de instalación
mkdir -p tools/bin

# Descargar y extraer el binario
curl -Lo cfn-guard.zip https://github.com/aws-cloudformation/cloudformation-guard/releases/latest/download/cfn-guard-linux-x86_64.zip
unzip -o cfn-guard.zip -d tools/bin
chmod +x tools/bin/cfn-guard

# Mostrar ubicación y versión
echo "✅ cfn-guard instalado en $(pwd)/tools/bin"
./tools/bin/cfn-guard --version
