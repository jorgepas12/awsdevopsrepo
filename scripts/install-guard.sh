#!/bin/bash
set -e

echo "🔽 Instalando AWS CloudFormation Guard con el método oficial..."

# Ejecutar el script de instalación oficial
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/aws-cloudformation/cloudformation-guard/main/install-guard.sh | sh

# Verificar que el directorio de instalación esté en el PATH
if ! grep -q 'export PATH=$HOME/.guard/bin:$PATH' ~/.bashrc; then
  echo 'export PATH=$HOME/.guard/bin:$PATH' >> ~/.bashrc
  echo "📌 PATH actualizado en ~/.bashrc"
fi

# Aplicar el PATH para la sesión actual
export PATH=$HOME/.guard/bin:$PATH

# Verificar instalación
echo "✅ Versión instalada:"
cfn-guard --version
