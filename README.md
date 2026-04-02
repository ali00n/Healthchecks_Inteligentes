# TF05 - Sistema de Monitoramento e Automação

## Aluno
- **Nome:** [Alisson Ribeiro Almeida]
- **RA:** [6324605]
- **Curso:** Análise e Desenvolvimento de Sistemas

## Funcionalidades
- Healthchecks inteligentes (HTTP, TCP, Database)
- Dashboard de monitoramento em tempo real
- Sistema de alertas (email, webhook)
- Automação completa de deploy
- Rollback automático
- Scripts de manutenção
- Backup automatizado

## Como Executar

### Pré-requisitos
- Docker e Docker Compose
- Bash (para scripts de automação)

### Execução Completa
```bash
git clone https://github.com/ali00n/Healthchecks_Inteligentes.git
cd Healthchecks_Inteligentes

# Build automatizado
./scripts/build.sh

# Deploy automatizado
./scripts/deploy.sh

# Acessar dashboard
open http://localhost:3000
```

## Scripts Disponíveis
- `./scripts/build.sh` - Build automatizado com testes
- `./scripts/deploy.sh` - Deploy com zero downtime
- `./scripts/rollback.sh` - Rollback para versão anterior
- `./scripts/backup.sh` - Backup de dados e configurações
- `./scripts/cleanup.sh` - Limpeza de recursos antigos
- `./scripts/health-monitor.sh` - Monitoramento manual

## Configuração
- Healthchecks: `config/healthchecks.yml`
- Alertas: `config/alerts.yml`
- Thresholds: `config/thresholds.yml`

## Endpoints
- Dashboard: `http://localhost:3000`
- API Métricas: `http://localhost:5000/metrics`
- Health Status: `http://localhost:5000/health/status`

## Monitoramento
```bash
# Status em tempo real
./scripts/health-monitor.sh --watch

# Relatório de saúde
./scripts/health-monitor.sh --report

# Testar alertas
./scripts/health-monitor.sh --test-alerts
```

## Entrega
- Repositório GitHub
- Nome: Healthchecks_Inteligentes

## Validação
```bash
# Teste completo de automação
./scripts/build.sh
./scripts/deploy.sh
./scripts/health-monitor.sh --check-all
```

> Note
> Desenvolvido por: Alisson Ribeiro
> Última atualização: 01/04/2026
