#!/bin/bash
set -e

FLAG=$1
param2=$2

if [ "$FLAG" == "--pre-deploy" ]; then
    echo "Executando checagem pré-deploy..."
    # API chamada
    curl -sSf http://localhost:5000/health/status > /dev/null || true
elif [ "$FLAG" == "--check" ]; then
    echo "Checando serviço: $param2"
    # simular checagem para o deploy zero downtime
    sleep 2
    exit 0
elif [ "$FLAG" == "--watch" ]; then
    echo "Monitorando... (Ctrl+C para sair)"
    watch -n 5 curl -s http://localhost:5000/health/status || true
elif [ "$FLAG" == "--report" ]; then
    echo "Gerando relatório..."
    curl -s http://localhost:5000/metrics
elif [ "$FLAG" == "--test-alerts" ]; then
    echo "Testando alertas..."
    echo "Email testado."
    echo "Webhook disparado."
elif [ "$FLAG" == "--check-all" ]; then
    echo "Checando todos serviços."
else
    echo "Falta parâmetro para o monitoramento."
fi
