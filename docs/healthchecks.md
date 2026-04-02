# Manual de Healthchecks Inteligentes

Este documento descreve como configurar os healthchecks.
A fonte principal de configurações é o diretório `config/`.

- `healthchecks.yml`: Define quais serviços serão checados (endpoints, ports).
- `alerts.yml`: Alertas como Webhooks e emails.
- `thresholds.yml`: Margem de erro, latências toleráveis para o alerta disparar.

A lógica de checagem rodará no backend Python `/api`.
