#!/bin/bash
echo "Verificando Docker..."
command -v docker || sudo yum install -y docker
sudo service docker start
