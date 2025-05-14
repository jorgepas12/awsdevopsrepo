#!/bin/bash
set -e

VERSION="v3.1.2"
TARGET="cfn-guard-${VERSION}-x86_64-unknown-linux-gnu"
URL="https://github.com/aws-cloudformation/cloudformation-guard/releases/download/${VERSION}/${TARGET}.tar.gz"

echo "🔽 Descargando cfn-guard ${VERSION}..."
curl -sL "$URL" -o guard.tar.gz

echo "📦 Extrayendo..."
mkdir -p ~/.guard/bin
tar -xzf guard.tar.gz
mv cfn-guard ~/.guard/bin/

echo "🛠️ Agregando ~/.guard/bin al PATH en ~/.bashrc (si no existe ya)..."
if ! grep -q 'export PATH=$HOME/.guard/bin:$PATH' ~/.bashrc; then
  echo 'export PATH=$HOME/.guard/bin:$PATH' >> ~/.bashrc
fi

echo "✅ Instalación completada. Ejecuta 'source ~/.bashrc' o reinicia la terminal."
