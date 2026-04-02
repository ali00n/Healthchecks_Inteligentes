# Manutenção Básica

O sistema deve ter uma manutenção constante da base de logs para não estourar disco.

- `cleanup.sh`: Apaga logs antigos e rotaciona pastas de `backups/`.
- `backup.sh`: Faz o backup de bancos relacionais com `mysqldump`.
