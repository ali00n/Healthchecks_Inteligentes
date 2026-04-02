#!/bin/bash
set -e

BACKUP_DIR=$1

if [ -z "$BACKUP_DIR" ]; then
    echo "Erro: Diretório de backup não fornecido."
    exit 1
fi

echo "Iniciando rollback usando $BACKUP_DIR..."
# Restauração lógica ficaria aqui
docker-compose stop backend-new || true
docker-compose up -d --scale backend=1

echo "Rollback finalizado."
