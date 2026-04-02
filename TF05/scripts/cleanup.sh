#!/bin/bash
set -e

echo "Limpando diretórios..."
find backups -mtime +7 -type d -exec rm -rf {} +
docker system prune -f

echo "Limpeza concluída."
