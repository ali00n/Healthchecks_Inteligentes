# Automação de Infraestrutura

Este documento contém detalhes sobre os scripts de automação.
Os scripts estão no diretório `/scripts/`.

- `build.sh`: Cria as imagens Docker e verifica imagens base.
- `deploy.sh`: Faz o deploy na infraestrutura aplicando zero-downtime, subindo containers novos em paralelo.
- `rollback.sh`: Volta a infraestrutura para as configurações exatas do backup armazenado.
