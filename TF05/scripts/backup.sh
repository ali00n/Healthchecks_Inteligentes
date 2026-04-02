#!/bin/bash
set -e

BACKUP_DIR=$1
mkdir -p "$BACKUP_DIR"
echo "Backup salvo em $BACKUP_DIR"
# Simulação de dump SQL ou backup de logs
touch "$BACKUP_DIR/db_backup.sql"
