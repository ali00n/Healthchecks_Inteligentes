#!/bin/bash
set -e

echo "Validando ambiente..."
if ! command -v docker &> /dev/null
then
    echo "Erro: Docker não encontrado."
    exit 1
fi
echo "Ambiente OK."
